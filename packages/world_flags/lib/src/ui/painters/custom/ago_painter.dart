// ignore_for_file: format-comment

import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/badge_artwork.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the machete, cogwheel and star of Angola.
final class AgoPainter extends CustomElementsPainter {
  /// Creates a new instance of [AgoPainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the emblem artwork.
  ///
  /// The emblem keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7906;

  /// The artwork, packed into typed arrays on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the emblem
  /// box: 1 moves, 2 draws a line, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.4092, 0.1547, 2, 0.4488, 0.2509, 2, 0.5764, 0.2509, 2, 0.4729,
      0.3104, 2, 0.5123, 0.4062, 2, 0.4092, 0.3466, 2, 0.3057, 0.4063, 2,
      0.3454, 0.31, 2, 0.2418, 0.2507, 2, 0.3699, 0.2508, 0, 1, 0.5453, 0, 2,
      0.6364, 0.0347, 2, 0.6145, 0.0789, 2, 0.6698, 0.1022, 2, 0.7049,
      0.1223, 2, 0.7273, 0.105, 2, 0.7955, 0.1575, 2, 0.773, 0.184, 2,
      0.8186, 0.2541, 2, 0.8638, 0.2456, 2, 0.867, 0.264, 2, 0.8854, 0.3138,
      2, 0.8859, 0.3245, 2, 0.8411, 0.3419, 2, 0.8413, 0.3454, 2, 0.8643,
      0.4209, 2, 0.9093, 0.4301, 2, 0.9058, 0.4719, 2, 0.8986, 0.4909, 2,
      0.8868, 0.5083, 2, 0.8416, 0.5086, 2, 0.8185, 0.5838, 2, 0.8183,
      0.5875, 2, 0.8632, 0.6056, 2, 0.8497, 0.6207, 2, 0.8189, 0.6746, 2,
      0.7729, 0.6578, 2, 0.7216, 0.7011, 2, 0.7049, 0.7189, 2, 0.7498,
      0.7453, 2, 0.7047, 0.7631, 2, 0.6144, 0.7013, 2, 0.659, 0.6685, 2,
      0.697, 0.6324, 2, 0.7286, 0.5926, 2, 0.7527, 0.5511, 2, 0.7701, 0.5062,
      2, 0.7799, 0.4599, 2, 0.7818, 0.413, 2, 0.776, 0.3663, 2, 0.7602,
      0.3147, 2, 0.7356, 0.2666, 2, 0.7014, 0.2209, 2, 0.66, 0.1806, 2,
      0.6104, 0.1449, 2, 0.5546, 0.1154, 2, 0.4698, 0.0849, 2, 0.4319, 0.078,
      2, 0.4319, 0.0174, 2, 0.4627, 0.02, 2, 0.5222, 0.0347, 0, 1, 0.046,
      0.7019, 2, 0.0942, 0.7272, 2, 0.1426, 0.7474, 2, 0.1919, 0.763, 2,
      0.2431, 0.7742, 2, 0.3081, 0.7811, 2, 0.3721, 0.7802, 2, 0.4367,
      0.7712, 2, 0.5001, 0.7543, 2, 0.5682, 0.7905, 2, 0.5613, 0.7986, 2,
      0.5456, 0.8069, 2, 0.545, 0.8508, 2, 0.4555, 0.8684, 2, 0.4313, 0.8335,
      2, 0.4, 0.8405, 2, 0.341, 0.8425, 2, 0.341, 0.8771, 2, 0.2503, 0.8771,
      2, 0.2496, 0.8333, 2, 0.2026, 0.8292, 2, 0.1594, 0.8158, 2, 0.1365,
      0.8507, 2, 0.0456, 0.8245, 2, 0.0674, 0.7803, 2, 0, 0.7543, 0, 1,
      0.2046, 0.421, 2, 0.1778, 0.4762, 2, 0.1715, 0.5029, 2, 0.171, 0.525,
      2, 0.176, 0.5456, 2, 0.1865, 0.5648, 2, 0.2241, 0.6008, 2, 0.2624,
      0.6241, 2, 0.7502, 0.8772, 2, 0.9133, 0.9667, 2, 0.944, 0.9975, 2,
      0.9544, 1, 2, 1, 0.9913, 2, 0.9948, 0.9611, 2, 0.9775, 0.9386, 2,
      0.8187, 0.8423, 2, 0.7951, 0.8242, 2, 0.3872, 0.5705, 2, 0.2912,
      0.5173, 2, 0.2604, 0.4944, 2, 0.2356, 0.4706, 2, 0.2171, 0.4463, 0,
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
