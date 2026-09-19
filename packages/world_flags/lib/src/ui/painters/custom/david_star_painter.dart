import "dart:math";
import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Israel flag.
final class DavidStarPainter extends CustomElementsPainter {
  /// Creates a new instance of [DavidStarPainter].
  const new(super._properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = property.mainColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height / 28;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 5.5;

    canvas
      ..save()
      ..translate(size.width / 2, size.height / 2)
      ..rotate(pi / 2)
      ..translate(-size.width / 2, -size.height / 2)
      ..drawPath(_triangle(center, radius, isUpward: true), paint)
      ..drawPath(_triangle(center, radius, isUpward: false), paint)
      ..restore();

    return null;
  }

  /// One of the two interlocking triangles of the hexagram.
  static Path _triangle(
    Offset center,
    double radius, {
    required bool isUpward,
  }) {
    const angle = pi * 2 / 3;
    final startAngle = isUpward ? pi : 0;
    final path = Path();

    for (int corner = 0; corner < 3; corner += 1) {
      final point = Offset(
        center.dx + radius * cos(startAngle + angle * corner),
        center.dy + radius * sin(startAngle + angle * corner),
      );
      if (corner == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }

    path.close();

    return path;
  }
}
