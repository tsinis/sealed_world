import "dart:math" show cos, pi, sin;

import "package:flutter/widgets.dart";

/// A [CustomClipper] that clips to one side of a line through the center at
/// the given [angle].
///
/// - `90` degrees: clips to the left half
/// - `0` degrees: clips to the top half
/// - Other values: clips to the left-normal side of the angled line.
@immutable
class DualFlagClipper extends CustomClipper<Path> {
  /// Creates a new instance of [DualFlagClipper].
  const DualFlagClipper(this.angle);

  /// The angle of the split line in degrees.
  final int angle;

  @override
  Path getClip(Size size) {
    if (angle == 90) {
      // ignore: avoid-returning-cascades
      return Path()..addRect(Rect.fromLTWH(0, 0, size.width / 2, size.height));
    }
    if (angle == 0) {
      // ignore: avoid-returning-cascades
      return Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height / 2));
    }

    final radians = angle * pi / 180;
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
