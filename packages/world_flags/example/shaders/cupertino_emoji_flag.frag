#version 460 core
#include <flutter/runtime_effect.glsl>

precision highp float;

uniform vec2 uSize;
uniform sampler2D uTexture;

out vec4 fragColor;

// ─────────────────────────────────────────────────────────────────────────────
// CONSTANTS
// ─────────────────────────────────────────────────────────────────────────────

const float WAVE_AMPLITUDE = 0.08;
const float RIGHT_LIFT = 0.025;
const float RIGHT_WAVE_EXTEND = 0.08;

// Overall darkening (less aggressive so gradient shows)
const float OVERALL_DARKEN = 0.8;

// Bevel settings — VERY asymmetric
const float BEVEL_SIZE_HIGHLIGHT = 0.04;     // Top/Right - smaller
const float BEVEL_SIZE_SHADOW = 0.14;        // Bottom/Left - 3.5x bigger!
const float BEVEL_SOFTNESS = 0.65;           // Harder edges
const float HIGHLIGHT_OPACITY = 0.22;        // Subtle highlight
const float SHADOW_OPACITY = 0.85;           // VERY strong shadow

// Gloss/Gradient settings
const float GLOSS_OPACITY = 0.25;            // MUCH stronger
const float GLOSS_PEAK = 0.52;               // Slightly left of center
const float GLOSS_WIDTH = 0.32;              // Wide

// Anti-aliasing width in pixels (replaces fwidth)
const float AA_PIXELS = 1.5;

// ─────────────────────────────────────────────────────────────────────────────
// BLEND MODE HELPERS
// ─────────────────────────────────────────────────────────────────────────────

vec3 screenBlend(vec3 base, vec3 blend, float opacity) {
    vec3 result = 1.0 - (1.0 - base) * (1.0 - blend);
    return mix(base, result, opacity);
}

vec3 multiplyBlend(vec3 base, vec3 blend, float opacity) {
    vec3 result = base * blend;
    return mix(base, result, opacity);
}

// Additive blend (for bright highlight that shows through)
vec3 addBlend(vec3 base, vec3 add, float opacity) {
    return base + add * opacity;
}

// ─────────────────────────────────────────────────────────────────────────────
// BEZIER WAVE — unchanged (perfect)
// ─────────────────────────────────────────────────────────────────────────────

float bezierWave(float x) {
    float a = WAVE_AMPLITUDE;

    if (x < 0.5) {
        float t = x * 2.0;
        float p0 = 0.0;
        float p1 = a * 1.5;
        float p2 = a * 1.2;
        float p3 = a * 0.5;

        float mt = 1.0 - t;
        return p0*mt*mt*mt + 3.0*p1*mt*mt*t + 3.0*p2*mt*t*t + p3*t*t*t;
    } else {
        float t = (x - 0.5) * 2.0;
        float p0 = a * 0.5;
        float p1 = -a * 0.3;
        float p2 = -a * 0.6;
        float p3 = -RIGHT_LIFT + RIGHT_WAVE_EXTEND;

        float mt = 1.0 - t;
        return p0*mt*mt*mt + 3.0*p1*mt*mt*t + 3.0*p2*mt*t*t + p3*t*t*t;
    }
}

float topEdge(float x) {
    return WAVE_AMPLITUDE + bezierWave(x);
}

float bottomEdge(float x) {
    float contentHeight = 1.0 - 2.0 * WAVE_AMPLITUDE;
    return topEdge(x) + contentHeight;
}

// ─────────────────────────────────────────────────────────────────────────────
// ANTI-ALIASED EDGE MASK — Fixed for SkSL (no fwidth)
// ─────────────────────────────────────────────────────────────────────────────

vec2 warpUV(vec2 uv) {
    float topY = topEdge(uv.x);
    float bottomY = bottomEdge(uv.x);
    float newY = (uv.y - topY) / (bottomY - topY);
    return vec2(uv.x, clamp(newY, 0.0, 1.0));
}

float insideFlag(vec2 uv) {
    float topY = topEdge(uv.x);
    float bottomY = bottomEdge(uv.x);

    // WORKAROUND: Replace fwidth() with resolution-based AA width
    // fwidth(uv.y) ≈ 1.0 / uSize.y for normalized UV coordinates
    // Multiply by AA_PIXELS to get the desired anti-aliasing width
    float aaWidth = AA_PIXELS / uSize.y;

    float top = smoothstep(topY - aaWidth, topY + aaWidth, uv.y);
    float bottom = smoothstep(bottomY + aaWidth, bottomY - aaWidth, uv.y);

    return top * bottom;
}

// ─────────────────────────────────────────────────────────────────────────────
// INNER BEVEL & EMBOSS — Strong shadow on bottom/left
// ─────────────────────────────────────────────────────────────────────────────

vec3 applyBevelEmboss(vec3 color, vec2 uv) {
    float topY = topEdge(uv.x);
    float bottomY = bottomEdge(uv.x);
    float height = bottomY - topY;

    float distFromTop = (uv.y - topY) / height;
    float distFromBottom = (bottomY - uv.y) / height;
    float distFromLeft = uv.x;
    float distFromRight = 1.0 - uv.x;

    // HIGHLIGHT: Top and Right edges (subtle)
    float topHighlight = 1.0 - smoothstep(0.0, BEVEL_SIZE_HIGHLIGHT * BEVEL_SOFTNESS, distFromTop);
    float rightHighlight = 1.0 - smoothstep(0.0, BEVEL_SIZE_HIGHLIGHT * 0.5 * BEVEL_SOFTNESS, distFromRight);

    // SHADOW: Bottom and Left edges (STRONG, wide)
    float bottomShadow = 1.0 - smoothstep(0.0, BEVEL_SIZE_SHADOW * BEVEL_SOFTNESS, distFromBottom);
    float leftShadow = 1.0 - smoothstep(0.0, BEVEL_SIZE_SHADOW * 0.5 * BEVEL_SOFTNESS, distFromLeft);

    // Combine
    float highlightMask = max(topHighlight * 0.75, rightHighlight * 0.4);
    highlightMask = clamp(highlightMask, 0.0, 1.0);

    // Shadow: stronger weight, especially bottom
    float shadowMask = max(bottomShadow * 0.9, leftShadow * 0.65);
    shadowMask = clamp(shadowMask, 0.0, 1.0);

    // Apply highlight (Screen blend)
    color = screenBlend(color, vec3(1.0), highlightMask * HIGHLIGHT_OPACITY);

    // Apply shadow (Multiply with VERY dark color)
    color = multiplyBlend(color, vec3(0.05), shadowMask * SHADOW_OPACITY);

    return color;
}

// ─────────────────────────────────────────────────────────────────────────────
// GLOSS GRADIENT — VERY visible, almost white horizontal band
// ─────────────────────────────────────────────────────────────────────────────

vec3 applyGloss(vec3 color, float x) {
    // Main gloss: wide gaussian centered at GLOSS_PEAK
    float peakDist = x - GLOSS_PEAK;
    float gloss = exp(-peakDist * peakDist / (2.0 * GLOSS_WIDTH * GLOSS_WIDTH));

    // Don't fade at edges too much — let it be visible
    float edgeFade = smoothstep(0.0, 0.08, x) * smoothstep(1.0, 0.92, x);
    gloss *= edgeFade;

    // Use ADDITIVE blend for bright, visible highlight
    // This adds white light on top, visible even on white flags
    color = addBlend(color, vec3(1.0), gloss * GLOSS_OPACITY);

    return color;
}

// Left side subtle darkening (separate from gloss)
vec3 applyLeftShadow(vec3 color, float x) {
    float leftDark = smoothstep(0.0, 0.15, x);
    return color * mix(0.88, 1.0, leftDark);
}

// ─────────────────────────────────────────────────────────────────────────────
// MAIN
// ─────────────────────────────────────────────────────────────────────────────

void main() {
    vec2 uv = FlutterFragCoord().xy / uSize;

    #ifdef IMPELLER_TARGET_OPENGLES
    uv.y = 1.0 - uv.y;
    #endif

    float mask = insideFlag(uv);
    if (mask < 0.01) {
        fragColor = vec4(0.0);
        return;
    }

    vec2 warpedUV = warpUV(uv);
    vec4 tex = texture(uTexture, warpedUV);
    vec3 color = tex.rgb;

    // 1. Apply overall slight darkening (for white flags)
    color = color * OVERALL_DARKEN;

    // 2. Apply left-side shadow (pole shadow)
    color = applyLeftShadow(color, uv.x);

    // 3. Apply bevel & emboss (strong bottom/left shadow)
    color = applyBevelEmboss(color, uv);

    // 4. Apply gloss gradient LAST (so it's on top and visible)
    color = applyGloss(color, uv.x);

    fragColor = vec4(clamp(color, 0.0, 1.0) * tex.a * mask, tex.a * mask);
}
