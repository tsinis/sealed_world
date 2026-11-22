import "dart:ui";

import "../../../model/elements/elements_properties.dart";
import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/badge_artwork.dart";
import "../basic/badge_artwork_painter.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Slovenia flag.
///
/// Draws its coat of arms: the shield with the mountain and the waves as a
/// badge, and the three stars above them with the star shape.
///
/// Palette: the red border is the main color, then the `otherColors` are the
/// blue of the shield, the white of the mountain and the yellow of the stars.
final class SvnPainter extends CustomElementsPainter with BadgeArtworkPainter {
  /// Creates a new instance of [SvnPainter].
  const new(super._properties, super.aspectRatio);

  /// The stars as a chain, painted in one go: the lower one relative to the
  /// shield, and the upper ones relative to the bounds of the star before them
  /// (as the star shape places its children).
  static const _stars = <(Offset, double)>[
    (Offset(0, -0.5656), 0.0881),
    (Offset(-2.3333, -3.5924), 1.1547),
    (Offset(4.6667, 0), 1.1547),
  ];

  /// The six-pointed star, turned so that two of its points are vertical.
  static const _star = Star(points: 6, radiusFactor: 0.58);

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7828;

  /// The artwork, built into paths on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the badge
  /// box: 1 moves, 2 draws a line, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 1, geometry: [
      1, 0.0353, 0.0766, 2, 0.1633, 0.0394, 2, 0.2961, 0.0142, 2, 0.4317,
      0.0016, 2, 0.5683, 0.0016, 2, 0.7039, 0.0142, 2, 0.8367, 0.0394, 2,
      0.9647, 0.0766, 2, 0.9714, 0.1746, 2, 0.9734, 0.2672, 2, 0.9705, 0.3543,
      2, 0.963, 0.4359, 2, 0.9506, 0.5121, 2, 0.9335, 0.5829, 2, 0.9116, 0.6482,
      2, 0.8849, 0.708, 2, 0.8535, 0.7624, 2, 0.8173, 0.8113, 2, 0.7763, 0.8547,
      2, 0.7306, 0.8927, 2, 0.6801, 0.9253, 2, 0.6248, 0.9524, 2, 0.5648, 0.974,
      2, 0.5, 0.9902, 2, 0.4352, 0.974, 2, 0.3752, 0.9524, 2, 0.3199, 0.9253, 2,
      0.2694, 0.8927, 2, 0.2237, 0.8547, 2, 0.1827, 0.8113, 2, 0.1465, 0.7624,
      2, 0.1151, 0.708, 2, 0.0884, 0.6482, 2, 0.0665, 0.5829, 2, 0.0494, 0.5121,
      2, 0.037, 0.4359, 2, 0.0295, 0.3543, 2, 0.0266, 0.2672, 2, 0.0286, 0.1746,
      0,
    ]),
    (color: 2, geometry: [
      1, 0.5, 0.315, 2, 0.6125, 0.4912, 2, 0.6875, 0.4129, 2, 0.875, 0.6086, 2,
      0.8738, 0.6222, 2, 0.8702, 0.6355, 2, 0.8375, 0.7037, 2, 0.7914, 0.7669,
      2, 0.7329, 0.8235, 2, 0.6636, 0.8721, 2, 0.5853, 0.9114, 2, 0.5, 0.9404,
      2, 0.4147, 0.9114, 2, 0.3364, 0.8721, 2, 0.2671, 0.8235, 2, 0.2086,
      0.7669, 2, 0.1625, 0.7037, 2, 0.1298, 0.6355, 2, 0.1262, 0.6222, 2, 0.125,
      0.6086, 2, 0.3125, 0.4129, 2, 0.3875, 0.4912, 0,
    ]),
    (color: 1, geometry: [
      1, 0.1298, 0.6355, 2, 0.1499, 0.6671, 2, 0.183, 0.6912, 2, 0.2248, 0.7044,
      2, 0.27, 0.7052, 2, 0.3125, 0.6933, 2, 0.3533, 0.6817, 2, 0.3967, 0.6817,
      2, 0.4375, 0.6933, 2, 0.4783, 0.705, 2, 0.5217, 0.705, 2, 0.5625, 0.6933,
      2, 0.6033, 0.6817, 2, 0.6467, 0.6817, 2, 0.6875, 0.6933, 2, 0.73, 0.7052,
      2, 0.7752, 0.7044, 2, 0.817, 0.6912, 2, 0.8501, 0.6671, 2, 0.8702, 0.6355,
      2, 0.875, 0.6368, 2, 0.875, 0.7085, 2, 0.8426, 0.7118, 2, 0.8125, 0.7216,
      2, 0.7717, 0.7332, 2, 0.7283, 0.7332, 2, 0.6875, 0.7216, 2, 0.6467, 0.71,
      2, 0.6033, 0.71, 2, 0.5625, 0.7216, 2, 0.5217, 0.7332, 2, 0.4783, 0.7332,
      2, 0.4375, 0.7216, 2, 0.3967, 0.71, 2, 0.3533, 0.71, 2, 0.3125, 0.7216, 2,
      0.2717, 0.7332, 2, 0.2283, 0.7332, 2, 0.1875, 0.7216, 2, 0.1574, 0.7118,
      2, 0.125, 0.7085, 2, 0.125, 0.6368, 0,
    ]),
    (color: 1, geometry: [
      1, 0.1298, 0.692, 2, 0.1499, 0.7236, 2, 0.183, 0.7477, 2, 0.2248, 0.7609,
      2, 0.27, 0.7617, 2, 0.3125, 0.7498, 2, 0.3533, 0.7382, 2, 0.3967, 0.7382,
      2, 0.4375, 0.7498, 2, 0.4783, 0.7615, 2, 0.5217, 0.7615, 2, 0.5625,
      0.7498, 2, 0.6033, 0.7382, 2, 0.6467, 0.7382, 2, 0.6875, 0.7498, 2, 0.73,
      0.7617, 2, 0.7752, 0.7609, 2, 0.817, 0.7477, 2, 0.8501, 0.7236, 2, 0.8702,
      0.692, 2, 0.875, 0.6933, 2, 0.875, 0.765, 2, 0.8426, 0.7683, 2, 0.8125,
      0.7781, 2, 0.7717, 0.7897, 2, 0.7283, 0.7897, 2, 0.6875, 0.7781, 2,
      0.6467, 0.7665, 2, 0.6033, 0.7665, 2, 0.5625, 0.7781, 2, 0.5217, 0.7897,
      2, 0.4783, 0.7897, 2, 0.4375, 0.7781, 2, 0.3967, 0.7665, 2, 0.3533,
      0.7665, 2, 0.3125, 0.7781, 2, 0.2717, 0.7897, 2, 0.2283, 0.7897, 2,
      0.1875, 0.7781, 2, 0.1574, 0.7683, 2, 0.125, 0.765, 2, 0.125, 0.6933, 0,
    ]),
    (color: 0, geometry: [
      1, 0, 0.0893, 2, 0.0176, 0.0828, 2, 0.0353, 0.0766, 2, 0.0724, 0.5409, 2,
      0.088, 0.6225, 2, 0.1211, 0.7009, 2, 0.1708, 0.7737, 2, 0.2356, 0.8388, 2,
      0.3137, 0.8943, 2, 0.4027, 0.9385, 2, 0.5, 0.9703, 2, 0.5973, 0.9385, 2,
      0.6863, 0.8943, 2, 0.7644, 0.8388, 2, 0.8292, 0.7737, 2, 0.8789, 0.7009,
      2, 0.912, 0.6225, 2, 0.9276, 0.5409, 2, 0.9647, 0.0766, 2, 0.9824, 0.0828,
      2, 1, 0.0893, 2, 0.9637, 0.5427, 2, 0.9469, 0.6304, 2, 0.9109, 0.7144, 2,
      0.8569, 0.7924, 2, 0.7864, 0.8618, 2, 0.7017, 0.9207, 2, 0.6053, 0.9672,
      2, 0.5, 1, 2, 0.3947, 0.9672, 2, 0.2983, 0.9207, 2, 0.2136, 0.8618, 2,
      0.1431, 0.7924, 2, 0.0891, 0.7144, 2, 0.0531, 0.6304, 2, 0.0363, 0.5427,
      0,
    ]),
  ];
  // dart format on

  @override
  BadgeArtwork get artwork => _artwork;

  @override
  double get artworkRatio => _artworkRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final shield = super.paintFlagElements(canvas, size);
    // Stars in a shield without extent would have no aspect ratio.
    if (shield.bounds.isEmpty) return shield;

    final color = customColor(2); // Yellow.
    ElementsProperties? stars;
    for (final (offset, heightFactor) in _stars.reversed) {
      stars = ElementsProperties(
        color,
        shape: _star,
        offset: offset,
        heightFactor: heightFactor,
        angle: 30,
        child: stars,
      );
    }
    paintChild(canvas, shield.bounds, stars);

    return shield;
  }
}
