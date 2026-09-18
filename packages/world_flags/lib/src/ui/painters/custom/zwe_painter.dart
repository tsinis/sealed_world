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

  /// The artwork, packed into typed arrays on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the badge
  /// box: 1 moves, 2 draws a line, 3 curves, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.5, 0, 2, 0.6545, 0.3291, 2, 1, 0.3819, 2, 0.7499, 0.6382, 2,
      0.809, 1, 2, 0.5, 0.8291, 2, 0.191, 1, 2, 0.25, 0.6382, 2, 0, 0.3819,
      2, 0.3455, 0.3291, 0,
    ]),
    (color: 1, geometry: [
      1, 0.3088, 0.0723, 2, 0.2667, 0.0906, 2, 0.2352, 0.1392, 2, 0.1924,
      0.1658, 2, 0.1702, 0.2075, 2, 0.2182, 0.2016, 2, 0.2644, 0.2217, 2,
      0.2967, 0.27, 2, 0.3118, 0.3304, 2, 0.3083, 0.4676, 2, 0.232, 0.6461,
      2, 0.2218, 0.6952, 2, 0.2293, 0.7322, 2, 0.2497, 0.7541, 2, 0.2829,
      0.9386, 2, 0.799, 0.9386, 2, 0.8705, 0.6136, 2, 0.9138, 0.6136, 2,
      0.5612, 0.3433, 2, 0.4779, 0.2554, 2, 0.3789, 0.1086, 2, 0.3477,
      0.0825, 0,
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
