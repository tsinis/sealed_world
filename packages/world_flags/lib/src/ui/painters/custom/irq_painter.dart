// ignore_for_file: format-comment

import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/badge_artwork.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the takbir on the flag of Iraq.
final class IrqPainter extends CustomElementsPainter {
  /// Creates a new instance of [IrqPainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the emblem artwork.
  ///
  /// The emblem keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 3.1558;

  /// The artwork, packed into typed arrays on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the emblem
  /// box: 1 moves, 2 draws a line, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.375, 0, 2, 0.3794, 0.0788, 2, 0.3869, 0.0976, 2, 0.3998, 0.1046,
      2, 0.3744, 0.1066, 2, 0.2498, 0.5259, 2, 0.4, 0.5256, 2, 0.4022,
      0.4794, 2, 0.4091, 0.4439, 2, 0.4501, 0.3682, 2, 0.4532, 0.3969, 2,
      0.4694, 0.454, 2, 0.4744, 0.4971, 2, 0.4751, 0.841, 2, 0.5001, 0.842,
      2, 0.0747, 0.842, 2, 0.069, 0.8998, 2, 0.0532, 0.9477, 2, 0.0276,
      0.9849, 2, 0, 1, 2, 0.0252, 0.9309, 2, 0.0381, 0.8619, 2, 0.0409,
      0.8131, 2, 0.0397, 0.7634, 2, 0.0246, 0.6247, 2, 0.029, 0.598, 2,
      0.0463, 0.5548, 2, 0.0495, 0.5262, 2, 0.0517, 0.5754, 2, 0.0576,
      0.6087, 2, 0.0677, 0.6301, 2, 0.0808, 0.639, 2, 0.1246, 0.6312, 2,
      0.1246, 0.5266, 2, 0.1499, 0.5192, 2, 0.1741, 0.4746, 2, 0.1753,
      0.6313, 2, 0.4501, 0.6304, 2, 0.4489, 0.4872, 2, 0.4432, 0.4756, 2,
      0.4261, 0.4733, 2, 0.4247, 0.6313, 2, 0.1998, 0.6313, 2, 0.1997,
      0.4733, 0, 1, 0.5252, 0.001, 2, 0.5318, 0.0367, 2, 0.5502, 0.0533, 2,
      0.5504, 0.6317, 2, 0.5684, 0.6547, 2, 0.5729, 0.6492, 2, 0.5753,
      0.6314, 2, 0.6001, 0.842, 2, 0.5252, 0.842, 0, 1, 0.8755, 0.0523, 2,
      0.8757, 0.8413, 2, 0.6754, 0.842, 2, 0.6778, 0.6764, 2, 0.6881, 0.5822,
      2, 0.7034, 0.5398, 2, 0.7251, 0.526, 2, 0.7255, 0.4732, 2, 0.7754,
      0.3683, 2, 0.7755, 0.6297, 2, 0.8006, 0.631, 2, 0.8006, 0.2626, 2,
      0.825, 0.2113, 2, 0.8258, 0.6313, 2, 0.8502, 0.6313, 2, 0.8508, 0.1504,
      2, 0.8582, 0.1021, 0, 1, 0.8256, 0.0531, 2, 0.8197, 0.1234, 2, 0.8037,
      0.1561, 2, 0.7791, 0.1179, 2, 0.776, 0.1271, 2, 0.7755, 0.1573, 2,
      0.7505, 0.1573, 2, 0.7318, 0.113, 2, 0.7499, 0.1046, 2, 0.7529, 0.1243,
      2, 0.7575, 0.128, 2, 0.7755, 0.1046, 2, 0.8081, 0.1021, 2, 0.8207,
      0.0852, 0, 1, 0.9013, 0.0005, 2, 0.9248, 0.0363, 2, 0.9508, 0.052, 2,
      0.9508, 0.6301, 2, 0.9684, 0.6547, 2, 0.9739, 0.6476, 2, 0.9758,
      0.6323, 2, 0.98, 0.6809, 2, 0.9981, 0.8038, 2, 1, 0.842, 2, 0.9007,
      0.842, 0, 1, 0.1247, 0.8949, 2, 0.1496, 0.9472, 2, 0.1356, 0.9686, 2,
      0.1273, 0.9677, 2, 0.1247, 0.9514, 0,
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
