// ignore_for_file: format-comment

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Zimbabwe.
///
/// Draws the Zimbabwe Bird on the red star.
final class ZwePainter extends MultiElementPainter {
  /// Creates a new instance of [ZwePainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 1.0516;

  /// The artwork, built into paths on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the badge
  /// box: 1 moves, 2 draws a line, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.5, 0, 2, 0.6545, 0.3291, 2, 1, 0.3819, 2, 0.7499, 0.6382, 2,
      0.809, 1, 2, 0.5, 0.8291, 2, 0.191, 1, 2, 0.25, 0.6382, 2, 0, 0.3819,
      2, 0.3455, 0.3291, 0,
    ]),
    (color: 1, geometry: [
      1, 0.3438, 0.1373, 2, 0.308, 0.1528, 2, 0.2812, 0.1941, 2, 0.2448,
      0.2167, 2, 0.226, 0.2522, 2, 0.2668, 0.2472, 2, 0.306, 0.2643, 2,
      0.3335, 0.3053, 2, 0.3463, 0.3567, 2, 0.3434, 0.4733, 2, 0.2785, 0.625,
      2, 0.2698, 0.6667, 2, 0.2762, 0.6982, 2, 0.2935, 0.7168, 2, 0.3218,
      0.8736, 2, 0.7605, 0.8736, 2, 0.8212, 0.5974, 2, 0.858, 0.5974, 2,
      0.5583, 0.3676, 2, 0.4875, 0.2929, 2, 0.4034, 0.1681, 2, 0.3768,
      0.1459, 0,
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
