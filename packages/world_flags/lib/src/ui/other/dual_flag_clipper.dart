import "dart:math" show cos, pi, sin;

import "package:flutter/widgets.dart";

/// A [CustomClipper] that clips to one side of a line through the center at
/// the given [angle].
///
/// - `0` or `360` degrees: clips to the top half
/// - `90` or `-270` degrees: clips to the left half
/// - `180` or `-180` degrees: clips to the bottom half
/// - `270` or `-90` degrees: clips to the right half
/// - Other values: clips along the angled line through the center.
@immutable
class DualFlagClipper extends CustomClipper<Path> {
  /// Creates a new instance of [DualFlagClipper].
  const DualFlagClipper([this.angle = 45]);

  /// The angle of the split line in degrees. Defaults to `45`.
  final int angle;

  @override
  Path getClip(Size size) => switch (angle % 360) {
    0 => Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height / 2)),
    90 ||
    -270 => Path()..addRect(Rect.fromLTWH(0, 0, size.width / 2, size.height)),
    180 || -180 =>
      Path()..addRect(
        Rect.fromLTWH(0, size.height / 2, size.width, size.height / 2),
      ),
    270 || -90 =>
      Path()..addRect(
        Rect.fromLTWH(size.width / 2, 0, size.width / 2, size.height),
      ),
    final other => _diagonalClip(size, other),
  };

  Path _diagonalClip(Size size, int normalizedAngle) {
    final radians = normalizedAngle * pi / 180;
    final center = Offset(size.width / 2, size.height / 2);
    final extent = size.width + size.height;

    final direction = Offset(cos(radians), sin(radians));
    final perpendicular = Offset(-direction.dy, direction.dx);

    final lineStart = center + direction * extent;
    final lineEnd = center - direction * extent;
    final farEnd = lineEnd + perpendicular * extent;
    final farStart = lineStart + perpendicular * extent;

    return Path()
      ..moveTo(lineStart.dx, lineStart.dy)
      ..lineTo(lineEnd.dx, lineEnd.dy)
      ..lineTo(farEnd.dx, farEnd.dy)
      ..lineTo(farStart.dx, farStart.dy)
      ..close();
  }

  @override
  bool shouldReclip(DualFlagClipper oldClipper) => oldClipper.angle != angle;
}
