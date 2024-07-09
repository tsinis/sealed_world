import "dart:math";
import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class DavidStarPainter extends CustomElementsPainter {
  const DavidStarPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagIsrProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
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
      ..translate(-size.width / 2, -size.height / 2);

    _drawTriangle(canvas, center, radius, paint, isUpward: true);
    _drawTriangle(canvas, center, radius, paint, isUpward: false);

    canvas.restore();

    return null;
  }

// ignore: long-parameter-list, TODO! Refactor.
  void _drawTriangle(
    Canvas canvas,
    Offset center,
    double radius,
    Paint paint, {
    required bool isUpward,
  }) {
    const angle = pi * 2 / 3;
    final path = Path();
    final startAngle = isUpward ? pi : 0;

    for (int i = 0; i < 3; i++) {
      final x = center.dx + radius * cos(startAngle + angle * i);
      final y = center.dy + radius * sin(startAngle + angle * i);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);
  }
}
