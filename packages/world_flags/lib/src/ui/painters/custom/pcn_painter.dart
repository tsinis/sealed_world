// ignore_for_file: format-comment

part of "../multi_element_painter.dart";

/// Painter for the flag badge of the Pitcairn Islands.
///
/// Draws the gold anchor on a blue shield charged with a green pile.
final class PcnPainter extends UnionJackPainter {
  /// Creates a new instance of [PcnPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7038;

  /// The artwork, packed into typed arrays on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the badge
  /// box: 1 moves, 2 draws a line, 3 curves, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.0002, 0, 2, 1, 0, 2, 1, 0.5352, 2, 0.9902, 0.5922, 2, 0.9439,
      0.6766, 2, 0.8704, 0.757, 2, 0.7812, 0.8306, 2, 0.6582, 0.9131, 2, 0.5,
      1, 2, 0.25, 0.8534, 2, 0.1028, 0.7289, 2, 0.037, 0.644, 2, 0.0098,
      0.5847, 2, 0, 0.5242, 0,
    ]),
    (color: 1, geometry: [
      1, 0.5059, 0.0808, 2, 0.0415, 0.6452, 2, 0.116, 0.7388, 2, 0.2122,
      0.8234, 2, 0.3391, 0.9109, 2, 0.4998, 1, 2, 0.6458, 0.9197, 2, 0.7646,
      0.841, 2, 0.8585, 0.7652, 2, 0.937, 0.6817, 0,
    ]),
    (color: 2, geometry: [
      1, 0.3622, 0.5062, 2, 0.6719, 0.5064, 2, 0.6961, 0.5155, 2, 0.706,
      0.5336, 2, 0.6961, 0.5519, 2, 0.6719, 0.561, 2, 0.3573, 0.561, 2,
      0.3301, 0.5493, 2, 0.3234, 0.5301, 2, 0.3363, 0.5131, 0, 1, 0.4839,
      0.4136, 2, 0.5208, 0.415, 2, 0.5335, 0.447, 2, 0.5335, 0.8225, 2,
      0.5161, 0.8559, 2, 0.4792, 0.8545, 2, 0.4665, 0.8225, 2, 0.4665,
      0.4471, 0, 1, 0.245, 0.6835, 2, 0.3673, 0.7734, 2, 0.3459, 0.7918, 2,
      0.4839, 0.8559, 2, 0.6725, 0.7919, 2, 0.6323, 0.7741, 2, 0.7691,
      0.7016, 2, 0.7494, 0.8242, 2, 0.6993, 0.814, 2, 0.5019, 0.9313, 2,
      0.2944, 0.8074, 2, 0.2548, 0.8103, 0,
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
