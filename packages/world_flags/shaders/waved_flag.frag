#version 460 core
#include <flutter/runtime_effect.glsl>

// A waving cloth: moves the flag (painted to `uTexture` by `FlagShaderSurface`)
// along a traveling wave with organic noise, a secondary ripple and pinned
// edges, then lights it like a fabric.
//
// `WavedFlagShaderDelegate.configureShader` sets the uniforms by index, so
// their order must not change.

precision highp float;

uniform vec2 uSize; // 0-1: the size of the painted area, in pixels.
uniform sampler2D uTexture; // The flat flag (premultiplied colors).

uniform float uTime; // 2
uniform float uAnimationSpeed; // 3: always 1, the ticker scales the time.

uniform float uWaveAmplitude; // 4
uniform float uWaveFrequency; // 5
uniform float uWavePhaseShift; // 6
uniform float uSecondaryAmp; // 7
uniform float uSecondaryFreq; // 8

uniform float uLeftEdgePinned; // 9
uniform float uRightEdgePinned; // 10
uniform float uPinSoftness; // 11
uniform float uPoleMargin; // 12

uniform float uShadingEnabled; // 13
uniform float uFoldStrength; // 14
uniform float uHighlightStrength; // 15
uniform float uShadowStrength; // 16
uniform float uSheenStrength; // 17
uniform float uSheenFrequency; // 18
uniform float uPerspective; // 19

uniform float uSeed; // 20
uniform float uWaveDirX; // 21
uniform float uWaveDirY; // 22
uniform float uTurbulence; // 23
uniform float uFabricVisibility; // 24

out vec4 fragColor;

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

// Fractal noise of 2 and 3 octaves, unrolled: SkSL (used in tests) requires
// loop bounds to be compile-time constants.
float fbm2(vec2 p) {
    return 0.5 * noise(p) + 0.25 * noise(p * 2.0);
}

float fbm3(vec2 p) {
    return fbm2(p) + 0.125 * noise(p * 4.0);
}

// ─────────────────────────────────────────────────────────────────────────────
// MASKS
// ─────────────────────────────────────────────────────────────────────────────

vec2 waveDir() {
    vec2 d = vec2(uWaveDirX, uWaveDirY);
    float len = length(d);
    return len > 0.001 ? d / len : vec2(1.0, 0.0);
}

// 0 at a pinned edge (and its pole margin), easing to 1 in the cloth.
float edgeRamp(float u) {
    float r = 1.0;
    // smoothstep is undefined for equal edges, so keep the softness positive.
    float softness = max(uPinSoftness, 1e-4);
    if (uLeftEdgePinned > 0.5) {
        r *= smoothstep(uPoleMargin, uPoleMargin + softness, u);
    }
    if (uRightEdgePinned > 0.5) {
        r *= smoothstep(uPoleMargin, uPoleMargin + softness, 1.0 - u);
    }
    return r;
}

// 0 at the borders of the flag, 1 in its center.
float borderMask(vec2 uv) {
    return min(uv.x * (1.0 - uv.x), uv.y * (1.0 - uv.y)) * 4.0;
}

// 0 at the top and bottom hems, 1 between them.
float hemMask(float v) {
    return smoothstep(0.02, 0.1, v) * smoothstep(0.02, 0.1, 1.0 - v);
}

// ─────────────────────────────────────────────────────────────────────────────
// WAVE
// ─────────────────────────────────────────────────────────────────────────────

// The wave (x) and its derivative (y, for the lighting) at `baseArg`: a sine
// with noise-modulated frequency and amplitude, soft harmonics and a drift.
vec2 organicWave(vec2 uv, float baseArg, float turb, float time) {
    if (turb < 0.02) return vec2(sin(baseArg), cos(baseArg));

    vec2 noisePos = uv * 3.0 + vec2(time * 0.3, time * 0.2);
    // Frequency modulation: random wave intervals.
    float arg = baseArg + turb * (noise(noisePos * 0.7) * 2.0 - 1.0) * 1.5;
    // Amplitude modulation: cotton breathing.
    float ampMod = 1.0 + turb * (noise(noisePos * 1.3 + 100.0) - 0.5) * 0.8;

    float wave = sin(arg) * ampMod;
    wave += turb * (sin(arg * 2.1 + 0.8) * 0.35 + sin(arg * 3.3 + 1.6) * 0.15);
    wave += turb * (fbm2(noisePos * 0.5) * 2.0 - 1.0) * 0.4; // Cotton drift.

    float deriv = cos(arg) * ampMod;
    deriv += turb * 0.35 * 2.1 * cos(arg * 2.1 + 0.8);
    deriv += turb * 0.15 * 3.3 * cos(arg * 3.3 + 1.6);

    return vec2(wave, deriv) / (1.0 + turb * 0.7);
}

// ─────────────────────────────────────────────────────────────────────────────
// FABRIC AND LIGHTING
// ─────────────────────────────────────────────────────────────────────────────

// Cotton noise mixed with a woven pattern, slightly darkening the cloth.
float fabric(vec2 uv) {
    float cotton = fbm3(uv * 8.0);

    vec2 t = uv * 55.0;
    float warp = abs(fract(t.x) * 2.0 - 1.0);
    float weft = abs(fract(t.y + 0.5 * floor(mod(t.x, 2.0))) * 2.0 - 1.0);
    float weave = (warp + weft) * 0.5;

    float f = mix(cotton, weave, 0.3);
    return 1.0 - 0.08 * (1.0 - f);
}

vec3 light(vec3 color, float slope, vec2 uv, float phase, float fabricMask, float hem) {
    if (uShadingEnabled < 0.5) return color;

    // Surface normal from the wave slope.
    vec3 N = normalize(vec3(-slope * 2.5, 0.0, 1.0));

    // Diffuse: 0 (facing away) to 1 (facing the light), wrapped to 0.3..1 for
    // a softer look. The shadow strength blends from flat to fully shaded.
    float diff = max(dot(N, LIGHT), 0.0);
    float wrap = min(diff + 0.3, 1.0);
    float extraShadow = 1.0 - (1.0 - wrap) * mix(0.35, 0.6, hem);
    float shadeFactor = mix(1.0, wrap * extraShadow, uShadowStrength);

    // Highlights (additive) and a silk sheen.
    float hi = uHighlightStrength * diff * diff * 0.3 * fabricMask;
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
    vec2 dir = waveDir();
    float time = uTime * uAnimationSpeed;
    float phase = time * TAU;
    float ramp = edgeRamp(uv.x);
    float border = borderMask(uv);
    float hem = hemMask(uv.y);

    // 1. Wave: the organic main wave along `dir` and a secondary ripple.
    float sPhase = uSeed * TAU + uWavePhaseShift;
    float k = TAU * uWaveFrequency;
    float baseArg = k * dot(uv, dir) - phase + sPhase;
    float localTurb = uTurbulence * mix(0.3, 1.0, hem) * mix(0.5, 1.0, border);
    vec2 wave = organicWave(uv, baseArg, localTurb, time);

    float secOffset = noise(uv * 2.0 + time * 0.5) * 0.5;
    float secArg = TAU * uSecondaryFreq * (uv.x + uv.y * 0.3) - phase * 1.3 + secOffset;
    float total = uWaveAmplitude * wave.x + uSecondaryAmp * sin(secArg);

    // 2. Displacement across the wave, damped at pinned edges and hems, plus
    // a fold that pulls the cloth sideways.
    vec2 ortho = vec2(-dir.y, dir.x);
    vec2 disp = ramp * total * ortho * mix(0.8, 1.0, hem);
    disp.x *= border;
    float slope = ramp * uWaveAmplitude * k * wave.y * mix(0.75, 1.0, hem);

    float persp = uPerspective > 0.0 && uLeftEdgePinned > 0.5
        ? 1.0 - uv.x * uPerspective * 0.1
        : 1.0;
    float fold = disp.y * uFoldStrength * 0.3 * persp * border * mix(0.6, 1.0, hem);
    vec2 warped = clamp(vec2(uv.x + fold + disp.x, uv.y - disp.y), 0.001, 0.999);

    // 3. Color: samples are premultiplied, so the fabric and the light are
    // applied to the straight color, which is premultiplied once at the end.
    vec4 tex = texture(uTexture, warped);
    if (tex.a > 0.0) tex.rgb /= tex.a;

    // Fabric texture, which spares the brightest colors.
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
