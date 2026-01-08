#version 460 core
#include <flutter/runtime_effect.glsl>
precision highp float;

// Uniforms (indices 0-24, unchanged)
uniform vec2  uSize;
uniform sampler2D uTexture;

uniform float uTime;
uniform float uAnimationSpeed;

uniform float uWaveAmplitude;
uniform float uWaveFrequency;
uniform float uWavePhaseShift;
uniform float uSecondaryAmp;
uniform float uSecondaryFreq;

uniform float uLeftEdgePinned;
uniform float uRightEdgePinned;
uniform float uPinSoftness;
uniform float uPoleMargin;

uniform float uShadingEnabled;
uniform float uFoldStrength;
uniform float uHighlightStrength;
uniform float uShadowStrength;
uniform float uSheenStrength;
uniform float uSheenFrequency;
uniform float uPerspective;

uniform float uSeed;
uniform float uWaveDirX;
uniform float uWaveDirY;
uniform float uTurbulence;
uniform float uFabricVisibility;

out vec4 fragColor;

// Constants
const float PI = 3.14159265359;
const float TAU = 6.28318530718;
const vec3 LIGHT = vec3(0.371, 0.464, 0.743);

// ─────────────────────────────────────────────────────────────────────────────
// NOISE
// ─────────────────────────────────────────────────────────────────────────────

float hash(vec2 p) {
    p += vec2(uSeed * 17.31, uSeed * 23.17);
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(
        mix(hash(i), hash(i + vec2(1, 0)), u.x),
        mix(hash(i + vec2(0, 1)), hash(i + vec2(1, 1)), u.x),
        u.y
    );
}

// FBM with 2 octaves - unrolled for SkSL compatibility.
// SkSL requires loop bounds to be compile-time constants; dynamic `int octaves`
// parameter causes "loop index must be compared with a constant" error in tests.
float fbm2(vec2 p) {
    float value = 0.0;
    float amp = 0.5;
    value += amp * noise(p);
    amp *= 0.5;
    value += amp * noise(p * 2.0);
    return value;
}

// FBM with 3 octaves - unrolled for SkSL compatibility.
float fbm3(vec2 p) {
    float value = 0.0;
    float amp = 0.5;
    value += amp * noise(p);
    amp *= 0.5;
    value += amp * noise(p * 2.0);
    amp *= 0.5;
    value += amp * noise(p * 4.0);
    return value;
}

// ─────────────────────────────────────────────────────────────────────────────
// WAVE HELPERS
// ─────────────────────────────────────────────────────────────────────────────

vec2 waveDir() {
    vec2 d = vec2(uWaveDirX, uWaveDirY);
    float len = length(d);
    return len > 0.001 ? d / len : vec2(1.0, 0.0);
}

float edgeRamp(float u) {
    float r = 1.0;
    if (uLeftEdgePinned > 0.5) {
        r *= smoothstep(uPoleMargin, uPoleMargin + uPinSoftness, u);
    }
    if (uRightEdgePinned > 0.5) {
        r *= smoothstep(uPoleMargin, uPoleMargin + uPinSoftness, 1.0 - u);
    }
    return r;
}

float borderMask(vec2 uv) {
    return min(uv.x * (1.0 - uv.x), uv.y * (1.0 - uv.y)) * 4.0;
}

float hemMask(float v) {
    return smoothstep(0.02, 0.1, v) * smoothstep(0.02, 0.1, 1.0 - v);
}

// ─────────────────────────────────────────────────────────────────────────────
// ORGANIC WAVE
// ─────────────────────────────────────────────────────────────────────────────

float organicWave(vec2 uv, float baseArg, float turb, float time) {
    float wave = sin(baseArg);

    if (turb < 0.02) return wave;

    vec2 noisePos = uv * 3.0 + vec2(time * 0.3, time * 0.2);

    // Frequency modulation: random wave intervals
    float freqNoise = noise(noisePos * 0.7) * 2.0 - 1.0;
    float modulatedArg = baseArg + turb * freqNoise * 1.5;

    // Amplitude modulation: cotton breathing
    float ampNoise = noise(noisePos * 1.3 + 100.0);
    float ampMod = 1.0 + turb * (ampNoise - 0.5) * 0.8;

    wave = sin(modulatedArg) * ampMod;

    // Soft harmonics
    float h1 = sin(modulatedArg * 2.1 + 0.8) * 0.35;
    float h2 = sin(modulatedArg * 3.3 + 1.6) * 0.15;
    wave += turb * (h1 + h2);

    // Cotton drift - uses fbm2 (was: fbm(..., 2))
    float drift = fbm2(noisePos * 0.5) * 2.0 - 1.0;
    wave += turb * drift * 0.4;

    return wave / (1.0 + turb * 0.7);
}

float organicDeriv(vec2 uv, float baseArg, float turb, float time) {
    float d = cos(baseArg);

    if (turb < 0.02) return d;

    vec2 noisePos = uv * 3.0 + vec2(time * 0.3, time * 0.2);
    float freqNoise = noise(noisePos * 0.7) * 2.0 - 1.0;
    float modulatedArg = baseArg + turb * freqNoise * 1.5;

    float ampNoise = noise(noisePos * 1.3 + 100.0);
    float ampMod = 1.0 + turb * (ampNoise - 0.5) * 0.8;

    d = cos(modulatedArg) * ampMod;
    d += turb * 0.35 * 2.1 * cos(modulatedArg * 2.1 + 0.8);
    d += turb * 0.15 * 3.3 * cos(modulatedArg * 3.3 + 1.6);

    return d / (1.0 + turb * 0.7);
}

// ─────────────────────────────────────────────────────────────────────────────
// FABRIC
// ─────────────────────────────────────────────────────────────────────────────

float fabric(vec2 uv) {
    // Uses fbm3 (was: fbm(..., 3))
    float cotton = fbm3(uv * 8.0);

    vec2 t = uv * 55.0;
    float warp = abs(fract(t.x) * 2.0 - 1.0);
    float weft = abs(fract(t.y + 0.5 * floor(mod(t.x, 2.0))) * 2.0 - 1.0);
    float weave = (warp + weft) * 0.5;

    float f = mix(cotton, weave, 0.3);
    return 1.0 - 0.08 * (1.0 - f);
}

// ─────────────────────────────────────────────────────────────────────────────
// WAVE COMPUTATION
// ─────────────────────────────────────────────────────────────────────────────

vec3 computeWave(vec2 uv, float phase, vec2 dir, float time) {
    float ramp = edgeRamp(uv.x);
    float border = borderMask(uv);
    float hem = hemMask(uv.y);

    float sPhase = uSeed * TAU + uWavePhaseShift;
    float k = TAU * uWaveFrequency;
    float baseArg = k * dot(uv, dir) - phase + sPhase;

    float localTurb = uTurbulence * mix(0.3, 1.0, hem) * mix(0.5, 1.0, border);

    float wave = organicWave(uv, baseArg, localTurb, time);
    float deriv = organicDeriv(uv, baseArg, localTurb, time);

    float secOffset = noise(uv * 2.0 + time * 0.5) * 0.5;
    float secArg = TAU * uSecondaryFreq * (uv.x + uv.y * 0.3) - phase * 1.3 + secOffset;
    float sec = sin(secArg);

    float total = uWaveAmplitude * wave + uSecondaryAmp * sec;

    vec2 ortho = vec2(-dir.y, dir.x);
    vec2 disp = ramp * total * ortho * mix(0.8, 1.0, hem);
    disp.x *= border;

    float slope = ramp * uWaveAmplitude * k * deriv * mix(0.75, 1.0, hem);

    return vec3(disp, slope);
}

// ─────────────────────────────────────────────────────────────────────────────
// UV WARPING
// ─────────────────────────────────────────────────────────────────────────────

vec2 warpUV(vec2 uv, float phase, vec2 dir, float time, out float slope) {
    vec3 wave = computeWave(uv, phase, dir, time);
    slope = wave.z;

    float border = borderMask(uv);
    float hem = hemMask(uv.y);

    float persp = 1.0;
    if (uPerspective > 0.0 && uLeftEdgePinned > 0.5) {
        persp = 1.0 - uv.x * uPerspective * 0.1;
    }

    float fold = wave.y * uFoldStrength * 0.3 * persp * border * mix(0.6, 1.0, hem);

    vec2 warped = vec2(uv.x + fold + wave.x, uv.y - wave.y);
    return clamp(warped, 0.001, 0.999);
}

// ─────────────────────────────────────────────────────────────────────────────
// LIGHTING (FIXED: shadowStrength now controls ALL darkening)
// ─────────────────────────────────────────────────────────────────────────────

vec3 light(vec3 color, float slope, vec2 uv, float phase, float fabricMask, float hem) {
    if (uShadingEnabled < 0.5) return color;

    // Surface normal from wave slope
    vec3 N = normalize(vec3(-slope * 2.5, 0.0, 1.0));

    // Raw diffuse: 0 (facing away) to 1 (facing light)
    float diff = max(dot(N, LIGHT), 0.0);

    // Wrapped diffuse for softer look (range 0.3 to 1.0)
    float wrap = min(diff + 0.3, 1.0);

    // Combined shading factor: how much to darken
    // At shadowStrength=0: shadeFactor = 1.0 (no darkening)
    // At shadowStrength=1: shadeFactor = wrap * extraShadow (full effect)
    float extraShadow = 1.0 - (1.0 - wrap) * mix(0.35, 0.6, hem);
    float fullShade = wrap * extraShadow;

    // THE FIX: blend between flat (1.0) and shaded based on shadowStrength
    float shadeFactor = mix(1.0, fullShade, uShadowStrength);

    // Highlights (additive, always visible if highlightStrength > 0)
    float hi = uHighlightStrength * diff * diff * 0.3 * fabricMask;

    // Sheen (silk shimmer)
    float sheenArg = (uv.x + uv.y) * uSheenFrequency - phase * 0.35;
    float sheen = uSheenStrength * (0.5 + 0.5 * sin(sheenArg));
    sheen *= (1.0 - N.z) * 0.25 * fabricMask * hem;

    return clamp(color * shadeFactor + hi + sheen, 0.0, 1.0);
}

// ─────────────────────────────────────────────────────────────────────────────
// MAIN
// ─────────────────────────────────────────────────────────────────────────────

void main() {
    vec2 uv = FlutterFragCoord().xy / uSize;

    #ifdef IMPELLER_TARGET_OPENGLES
    uv.y = 1.0 - uv.y;
    #endif

    vec2 dir = waveDir();
    float time = uTime * uAnimationSpeed;
    float phase = time * TAU;
    float hem = hemMask(uv.y);

    float slope = 0.0;
    vec2 warped = warpUV(uv, phase, dir, time, slope);

    vec4 tex = texture(uTexture, warped);

    // Fabric texture with luminance protection
    float fabricMask = 1.0;
    if (uFabricVisibility > 0.01) {
        float f = fabric(warped);
        float lum = dot(tex.rgb, vec3(0.299, 0.587, 0.114));
        float protection = smoothstep(0.85, 1.0, lum);
        tex.rgb *= mix(mix(1.0, f, uFabricVisibility), 1.0, protection);
        fabricMask = mix(0.4, 0.95, f);
    }

    fabricMask *= mix(0.5, 1.0, hem);

    vec3 lit = light(tex.rgb, slope, uv, phase, fabricMask, hem);

    fragColor = vec4(lit * tex.a, tex.a);
}
