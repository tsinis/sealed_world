// ignore_for_file: format-comment

part of "../multi_element_painter.dart";

/// Painter for the grey crowned crane of Uganda.
final class UgaPainter extends MultiElementPainter {
  /// Creates a new instance of [UgaPainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the emblem artwork.
  ///
  /// The emblem keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.5108;

  /// The artwork, packed into typed arrays on first paint and reused after.
  static final _artwork = BadgeArtwork(_layers);

  /// Commands as an opcode then its coordinates, relative to the emblem
  /// box: 1 moves, 2 draws a line, 0 closes the sub-path.
  // dart format off
  static const _layers = <BadgeLayer>[
    (color: 0, geometry: [
      1, 0.2926, 0, 2, 0.2178, 0.0063, 2, 0.1464, 0.0243, 2, 0.2161, 0.0935,
      2, 0.1845, 0.124, 2, 0.1915, 0.1533, 2, 0.0996, 0.1659, 2, 0.0508,
      0.1847, 2, 0.0543, 0.1931, 2, 0.1925, 0.1931, 2, 0.1658, 0.2209, 2,
      0.1724, 0.2349, 2, 0.1907, 0.2425, 2, 0.1304, 0.2775, 2, 0.0751, 0.334,
      2, 0.0423, 0.3927, 2, 0.0347, 0.4485, 2, 0.053, 0.4935, 2, 0.0948,
      0.5286, 2, 0.1227, 0.5416, 2, 0.1348, 0.5324, 2, 0.2071, 0.5744, 2,
      0.297, 0.6014, 2, 0.3799, 0.6415, 2, 0.3828, 0.717, 2, 0.3421, 0.7223,
      2, 0.1455, 0.7192, 2, 0.0766, 0.7267, 2, 0.0209, 0.7522, 2, 0, 0.7987,
      2, 0.0054, 0.8405, 2, 0.0406, 0.7912, 2, 0.0507, 0.8124, 2, 0.0749,
      0.8304, 2, 0.0718, 0.8047, 2, 0.087, 0.7716, 2, 0.0976, 0.7994, 2,
      0.1173, 0.8116, 2, 0.1458, 0.7768, 2, 0.1811, 0.7611, 2, 0.2414,
      0.7536, 2, 0.3794, 0.7512, 2, 0.3928, 0.8991, 2, 0.2248, 0.9073, 2,
      0.1799, 0.916, 2, 0.1585, 0.9285, 2, 0.2969, 0.9304, 2, 0.2495, 0.9745,
      2, 0.2513, 1, 2, 0.3181, 0.9656, 2, 0.4067, 0.9424, 2, 0.5051, 0.9341,
      2, 0.6139, 0.9403, 2, 0.5957, 0.9232, 2, 0.5659, 0.9113, 2, 0.4616,
      0.8992, 2, 0.4432, 0.8071, 2, 0.443, 0.7751, 2, 0.4571, 0.7608, 2,
      0.6139, 0.7409, 2, 0.5621, 0.6523, 2, 0.5685, 0.6367, 2, 0.6144,
      0.6328, 2, 0.7183, 0.6413, 2, 0.7544, 0.6725, 2, 0.7466, 0.7012, 2,
      0.7836, 0.6876, 2, 0.8127, 0.6517, 2, 0.8058, 0.6874, 2, 0.783, 0.7194,
      2, 0.7484, 0.7426, 2, 0.6975, 0.7606, 2, 0.7182, 0.7714, 2, 0.7113,
      0.7824, 2, 0.7767, 0.7716, 2, 0.7661, 0.7865, 2, 0.8116, 0.7813, 2,
      0.7796, 0.8105, 2, 0.869, 0.7881, 2, 0.9368, 0.7509, 2, 0.9825, 0.7002,
      2, 1, 0.6426, 2, 0.9934, 0.599, 2, 0.9707, 0.5594, 2, 0.9334, 0.5255,
      2, 0.8842, 0.4992, 2, 0.521, 0.407, 2, 0.3331, 0.3724, 2, 0.325,
      0.2949, 2, 0.3468, 0.2402, 2, 0.4314, 0.1846, 2, 0.4618, 0.1336, 2,
      0.5554, 0.1138, 2, 0.5268, 0.0727, 2, 0.473, 0.0382, 2, 0.3852, 0.0099,
      0,
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
