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

uniform float uTime; // 2: already scaled by the animation speed (the ticker).

uniform float uWaveAmplitude; // 3
uniform float uWaveFrequency; // 4
uniform float uWavePhaseShift; // 5
uniform float uSecondaryAmp; // 6
uniform float uSecondaryFreq; // 7

uniform float uLeftEdgePinned; // 8
uniform float uRightEdgePinned; // 9
uniform float uPinSoftness; // 10
uniform float uPoleMargin; // 11

uniform float uShadingEnabled; // 12
uniform float uFoldStrength; // 13
uniform float uHighlightStrength; // 14
uniform float uShadowStrength; // 15
uniform float uSheenStrength; // 16
uniform float uSheenFrequency; // 17
uniform float uPerspective; // 18

uniform float uSeed; // 19
uniform vec2 uWaveDir; // 20-21: normalized here.
uniform float uTurbulence; // 22
uniform float uFabricVisibility; // 23

out vec4 fragColor;

const float TAU = 6.28318530718;

// Wave.
const float MIN_TURBULENCE = 0.02; // Below it, the wave is a plain sine.
const vec2 NOISE_DRIFT = vec2(0.3, 0.2); // Of the noise, per unit of time.
const float FREQUENCY_MOD = 1.5; // Random wave intervals.
const float AMPLITUDE_MOD = 0.8; // Cotton breathing.
const vec3 HARMONIC_1 = vec3(2.1, 0.8, 0.35); // Frequency, phase, amplitude.
const vec3 HARMONIC_2 = vec3(3.3, 1.6, 0.15);
const float DRIFT = 0.4; // Cotton drift.
const float SECONDARY_SPEED = 1.3; // Of the ripple, relative to the wave.

// Cloth.
const float FOLD = 0.3; // How far the cloth is pulled sideways by the wave.
const float PERSPECTIVE = 0.1; // Of the cloth, shrinking from the pole.

// Fabric.
const float COTTON_SCALE = 8.0;
const float WEAVE_DENSITY = 55.0; // Threads across the flag.
const float WEAVE_MIX = 0.3; // Of the woven pattern in the cotton noise.
const float FABRIC_DARKENING = 0.08;
const vec3 LUMA = vec3(0.299, 0.587, 0.114);

// Lighting.
const vec3 LIGHT = vec3(0.371, 0.464, 0.743);
const float NORMAL_TILT = 2.5; // Of the surface normal, per unit of slope.
const float WRAP = 0.3; // Diffuse light, wrapped to 0.3..1 for a softer look.
const float HIGHLIGHT = 0.3;
const float SHEEN = 0.25;
const float SHEEN_SPEED = 0.35; // Of the sheen, relative to the wave.

// ─────────────────────────────────────────────────────────────────────────────
// NOISE
// ─────────────────────────────────────────────────────────────────────────────

// Note: changing any of the arithmetic below (even its order) changes the
// pattern of the noise entirely, and so every waved flag.

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
    float len = length(uWaveDir);
    return len > 0.001 ? uWaveDir / len : vec2(1.0, 0.0);
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
    if (turb < MIN_TURBULENCE) return vec2(sin(baseArg), cos(baseArg));

    vec2 noisePos = uv * 3.0 + time * NOISE_DRIFT;
    float arg = baseArg + turb * (noise(noisePos * 0.7) * 2.0 - 1.0) * FREQUENCY_MOD;
    float ampMod = 1.0 + turb * (noise(noisePos * 1.3 + 100.0) - 0.5) * AMPLITUDE_MOD;

    float wave = sin(arg) * ampMod;
    wave += turb * (
        sin(arg * HARMONIC_1.x + HARMONIC_1.y) * HARMONIC_1.z +
        sin(arg * HARMONIC_2.x + HARMONIC_2.y) * HARMONIC_2.z
    );
    wave += turb * (fbm2(noisePos * 0.5) * 2.0 - 1.0) * DRIFT;

    float deriv = cos(arg) * ampMod;
    deriv += turb * HARMONIC_1.z * HARMONIC_1.x * cos(arg * HARMONIC_1.x + HARMONIC_1.y);
    deriv += turb * HARMONIC_2.z * HARMONIC_2.x * cos(arg * HARMONIC_2.x + HARMONIC_2.y);

    return vec2(wave, deriv) / (1.0 + turb * 0.7);
}

// A ripple across the main wave, its noise skipped if there is none.
float secondaryWave(vec2 uv, float time, float phase) {
    if (uSecondaryAmp == 0.0) return 0.0;

    float offset = noise(uv * 2.0 + time * 0.5) * 0.5;
    float arg = TAU * uSecondaryFreq * (uv.x + uv.y * 0.3) - phase * SECONDARY_SPEED + offset;
    return uSecondaryAmp * sin(arg);
}

// Where the cloth at `uv` samples the flag (xy), and its slope (z): displaced
// across the wave, damped at pinned edges and hems, plus a fold that pulls the
// cloth sideways.
vec3 cloth(vec2 uv, float time, float phase, float hem) {
    vec2 dir = waveDir();
    float ramp = edgeRamp(uv.x);
    float border = borderMask(uv);

    float seedPhase = uSeed * TAU + uWavePhaseShift;
    float k = TAU * uWaveFrequency;
    float baseArg = k * dot(uv, dir) - phase + seedPhase;
    float localTurb = uTurbulence * mix(0.3, 1.0, hem) * mix(0.5, 1.0, border);
    vec2 wave = organicWave(uv, baseArg, localTurb, time);
    float total = uWaveAmplitude * wave.x + secondaryWave(uv, time, phase);

    vec2 ortho = vec2(-dir.y, dir.x);
    vec2 disp = ramp * total * ortho * mix(0.8, 1.0, hem);
    disp.x *= border;
    float slope = ramp * uWaveAmplitude * k * wave.y * mix(0.75, 1.0, hem);

    float persp = uPerspective > 0.0 && uLeftEdgePinned > 0.5
        ? 1.0 - uv.x * uPerspective * PERSPECTIVE
        : 1.0;
    float fold = disp.y * uFoldStrength * FOLD * persp * border * mix(0.6, 1.0, hem);
    // Keeps the sample just inside the flag texture.
    vec2 warped = clamp(vec2(uv.x + fold + disp.x, uv.y - disp.y), 0.001, 0.999);

    return vec3(warped, slope);
}

// ─────────────────────────────────────────────────────────────────────────────
// FABRIC AND LIGHTING
// ─────────────────────────────────────────────────────────────────────────────

// Cotton noise mixed with a woven pattern, slightly darkening the cloth.
float fabric(vec2 uv) {
    float cotton = fbm3(uv * COTTON_SCALE);

    vec2 t = uv * WEAVE_DENSITY;
    float warp = abs(fract(t.x) * 2.0 - 1.0);
    float weft = abs(fract(t.y + 0.5 * floor(mod(t.x, 2.0))) * 2.0 - 1.0);
    float weave = (warp + weft) * 0.5;

    float f = mix(cotton, weave, WEAVE_MIX);
    return 1.0 - FABRIC_DARKENING * (1.0 - f);
}

// The straight `color` with the fabric texture at `at`, which spares the
// brightest colors (rgb), and how much the light shows the fabric (a).
vec4 woven(vec3 color, vec2 at) {
    if (uFabricVisibility <= 0.01) return vec4(color, 1.0);

    float f = fabric(at);
    float protection = smoothstep(0.85, 1.0, dot(color, LUMA));
    vec3 textured = color * mix(mix(1.0, f, uFabricVisibility), 1.0, protection);
    return vec4(textured, mix(0.4, 0.95, f));
}

vec3 light(vec3 color, float slope, vec2 uv, float phase, float fabricMask, float hem) {
    if (uShadingEnabled < 0.5) return color;

    // Surface normal from the wave slope.
    vec3 N = normalize(vec3(-slope * NORMAL_TILT, 0.0, 1.0));

    // Diffuse: 0 (facing away) to 1 (facing the light), wrapped for a softer
    // look. The shadow strength blends from flat to fully shaded.
    float diff = max(dot(N, LIGHT), 0.0);
    float wrap = min(diff + WRAP, 1.0);
    float extraShadow = 1.0 - (1.0 - wrap) * mix(0.35, 0.6, hem);
    float shadeFactor = mix(1.0, wrap * extraShadow, uShadowStrength);

    // Highlights (additive) and a silk sheen.
    float hi = uHighlightStrength * diff * diff * HIGHLIGHT * fabricMask;
    float sheenArg = (uv.x + uv.y) * uSheenFrequency - phase * SHEEN_SPEED;
    float sheen = uSheenStrength * (0.5 + 0.5 * sin(sheenArg));
    sheen *= (1.0 - N.z) * SHEEN * fabricMask * hem;

    return clamp(color * shadeFactor + hi + sheen, 0.0, 1.0);
}

// ─────────────────────────────────────────────────────────────────────────────
// MAIN
// ─────────────────────────────────────────────────────────────────────────────

void main() {
    vec2 uv = FlutterFragCoord().xy / uSize;
    float phase = uTime * TAU;
    float hem = hemMask(uv.y);

    // 1. Shape: where this point of the cloth samples the flat flag.
    vec3 shape = cloth(uv, uTime, phase, hem);
    vec2 warped = shape.xy;

    // 2. Color: samples are premultiplied, so the fabric and the light are
    // applied to the straight color, which is premultiplied once at the end.
    vec4 tex = texture(uTexture, warped);
    if (tex.a > 0.0) tex.rgb /= tex.a;
    vec4 fabricColor = woven(tex.rgb, warped);
    float fabricMask = fabricColor.a * mix(0.5, 1.0, hem);

    // 3. Light.
    vec3 lit = light(fabricColor.rgb, shape.z, uv, phase, fabricMask, hem);
    fragColor = vec4(lit * tex.a, tex.a);
}
