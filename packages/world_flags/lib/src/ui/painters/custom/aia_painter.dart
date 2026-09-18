// Badge geometry derived from the Twemoji flag of Anguilla (CC-BY 4.0,
// https://github.com/twitter/twemoji), curated for rendering at 18-48
// pixels and normalized to the badge box, so every coordinate stays
// relative to the flag size.
//
// The geometry table is generated and kept packed, so the formatter is fenced
// off around it rather than exploding it to one number per line.
// ignore_for_file: format-comment

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Anguilla.
///
/// Draws three orange dolphins on a white shield with a pale blue base.
final class AiaPainter extends UnionJackPainter {
  /// Creates a new instance of [AiaPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7927;

  /// The artwork, packed into typed arrays on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the badge
  /// box: 1 moves, 2 draws a line, 3 curves, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.4998, 0, 2, 0.3926, 0.0383, 2, 0.2865, 0.055, 2, 0.1387, 0.0496,
      2, 0.004, 0.0245, 2, 0, 0.1648, 2, 0.0053, 0.3357, 2, 0.0212, 0.4639,
      2, 0.0503, 0.5804, 2, 0.0954, 0.6811, 2, 0.1588, 0.7624, 2, 0.2552,
      0.8475, 2, 0.372, 0.9285, 2, 0.4998, 0.9999, 2, 0.6278, 0.9284, 2,
      0.7448, 0.8475, 2, 0.8412, 0.7624, 2, 0.9046, 0.6811, 2, 0.9496,
      0.5805, 2, 0.9787, 0.464, 2, 0.9946, 0.3357, 2, 1, 0.1648, 2, 0.9961,
      0.0245, 2, 0.8611, 0.0496, 2, 0.7133, 0.055, 2, 0.6072, 0.0383, 0,
    ]),
    (color: 1, geometry: [
      1, 0.3757, 0.0667, 2, 0.3876, 0.1098, 2, 0.4067, 0.1333, 2, 0.492,
      0.1327, 2, 0.6564, 0.1708, 2, 0.7683, 0.1535, 2, 0.6891, 0.2007, 2,
      0.7312, 0.2526, 2, 0.7343, 0.2737, 2, 0.6627, 0.2156, 2, 0.6277,
      0.2003, 2, 0.5609, 0.1958, 2, 0.4852, 0.2124, 2, 0.4389, 0.2404, 2,
      0.4237, 0.2735, 2, 0.4421, 0.2889, 2, 0.504, 0.2983, 2, 0.4156, 0.3158,
      2, 0.3314, 0.4357, 2, 0.3164, 0.4413, 2, 0.3054, 0.411, 2, 0.3093,
      0.3614, 2, 0.2863, 0.3253, 2, 0.2834, 0.2697, 2, 0.3026, 0.2142, 2,
      0.3402, 0.1614, 2, 0.3433, 0.106, 0, 1, 0.2101, 0.3149, 2, 0.1985,
      0.3955, 2, 0.2057, 0.4266, 2, 0.2434, 0.4706, 2, 0.3075, 0.5065, 2,
      0.3643, 0.5172, 2, 0.4062, 0.5057, 2, 0.4097, 0.4846, 2, 0.3795,
      0.4406, 2, 0.4528, 0.484, 2, 0.6235, 0.4597, 2, 0.6373, 0.4688, 2,
      0.5643, 0.5204, 2, 0.5342, 0.5658, 2, 0.4831, 0.5981, 2, 0.4247,
      0.6175, 2, 0.3492, 0.6278, 2, 0.2894, 0.662, 2, 0.2345, 0.666, 2,
      0.2671, 0.6342, 2, 0.2801, 0.6048, 2, 0.2256, 0.5528, 2, 0.1588,
      0.4277, 2, 0.0712, 0.37, 2, 0.1673, 0.3888, 2, 0.1915, 0.3301, 0, 1,
      0.5464, 0.2501, 2, 0.6333, 0.2811, 2, 0.6843, 0.2804, 2, 0.7565,
      0.3069, 2, 0.8032, 0.3408, 2, 0.8465, 0.3907, 2, 0.908, 0.4172, 2,
      0.9384, 0.4575, 2, 0.8845, 0.4471, 2, 0.8492, 0.4503, 2, 0.8127,
      0.5114, 2, 0.6974, 0.6119, 2, 0.6666, 0.6998, 2, 0.652, 0.6238, 2,
      0.5694, 0.6293, 2, 0.5467, 0.6223, 2, 0.648, 0.5953, 2, 0.6843, 0.5716,
      2, 0.7202, 0.5079, 2, 0.7216, 0.4447, 2, 0.7051, 0.415, 2, 0.676,
      0.4002, 2, 0.6545, 0.4098, 2, 0.6196, 0.4476, 2, 0.6384, 0.3767, 2,
      0.5387, 0.2635, 2, 0.5366, 0.2533, 0,
    ]),
    (color: 2, geometry: [
      1, 0.1208, 0.7194, 2, 0.196, 0.7982, 2, 0.2752, 0.8628, 2, 0.4998, 1,
      2, 0.7247, 0.8628, 2, 0.804, 0.7982, 2, 0.8791, 0.7194, 0,
    ]),
  ];
  // dart format on

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    _artwork.paint(canvas, bounds, badgePaint);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
