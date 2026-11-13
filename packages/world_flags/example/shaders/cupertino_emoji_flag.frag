#version 460 core
#include <flutter/runtime_effect.glsl>

// An Apple emoji-style flag: a gently waving cloth, brightest in the middle,
// with a soft darker outline and an inner shadow (bevel) along the bottom and
// left edges. The flag is painted to `uTexture` by `FlagShaderSurface`, this
// shader only bends and lights it.

precision highp float;

uniform vec2 uSize; // The size of the painted area, in pixels.
uniform sampler2D uTexture; // The flat flag (premultiplied colors).

out vec4 fragColor;

const float PI = 3.14159265359;

const float WAVE = 0.06; // Wave amplitude, as a fraction of the height.
const float PERIOD = 1.2; // Wave length, as a fraction of the width.
const float TROUGH = 0.2; // Where the cloth hangs lowest, along the width.
const float SIDE_SHADE = 0.78; // Brightness at the left and right ends.
const float OUTLINE = 0.08; // Width of the outline on all edges...
const float OUTLINE_DEPTH = 0.2; // ...and how much it darkens at the edge.
const float BEVEL = 0.1; // Width of the shadow on the bottom and left edges...
const float BEVEL_DEPTH = 0.35; // ...and how much it darkens at the edge.

// Darkens by `depth` at an edge (distance 0), fading out at `width`.
float edgeShade(float distance, float width, float depth) {
    return 1.0 - depth * (1.0 - smoothstep(0.0, width, distance));
}

void main() {
    vec2 uv = FlutterFragCoord().xy / uSize;

    // 1. Shape: both edges follow the same cosine, so the cloth keeps its
    // height and only moves up and down along the width.
    float height = 1.0 - 2.0 * WAVE;
    float top = WAVE + WAVE * cos(2.0 * PI * (uv.x - TROUGH) / PERIOD);
    float y = (uv.y - top) / height; // From 0 (top) to 1 (bottom) of the flag.

    // Distances to the edges, in flag heights.
    float widthInHeights = uSize.x / (uSize.y * height);
    float toLeft = uv.x * widthInHeights;
    float toRight = (1.0 - uv.x) * widthInHeights;
    float toTop = y;
    float toBottom = 1.0 - y;

    // Anti-aliased coverage, one pixel wide at the curved edges. The edges of
    // smoothstep must be ascending (it's undefined otherwise).
    float halfPixel = 0.5 / (uSize.y * height);
    float coverage = smoothstep(-halfPixel, halfPixel, min(toTop, toBottom));

    // 2. Light: brightest in the middle, darker towards the left and right.
    float light = mix(SIDE_SHADE, 1.0, sin(PI * uv.x));

    // 3. Outline: a soft darker edge all around the cloth.
    float nearest = min(min(toTop, toBottom), min(toLeft, toRight));
    float outline = edgeShade(nearest, OUTLINE, OUTLINE_DEPTH);

    // 4. Bevel: an inner shadow on the bottom and left edges, as if the light
    // comes from the top right.
    float bevel = edgeShade(min(toBottom, toLeft), BEVEL, BEVEL_DEPTH);

    // Scaling premultiplied colors keeps them premultiplied, no unpremultiply.
    vec4 color = texture(uTexture, vec2(uv.x, clamp(y, 0.0, 1.0)));
    fragColor = vec4(color.rgb * light * outline * bevel, color.a) * coverage;
}
