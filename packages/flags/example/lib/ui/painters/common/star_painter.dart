import "dart:math" as math;
import "dart:ui";

import "package:flags/flags.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class StarPainter extends ElementsPainter {
  StarPainter(super.properties, super.aspectRatio);
  static const startRadians = math.pi / 2;

  @override
  FlagParentPath paintFlagElements(Canvas canvas, Size size) {
    final star = shapeType<Star>() ?? const Star();
    final radiansPerPoint = math.pi * 2 / (star.points * 2);
    final center = calculateCenter(size);
    final radius = calculateSize(size);
    final path = Path();

    for (var i = 0; i <= star.points * 2; i++) {
      final radiusFactor = i.isEven ? star.radiusFactor : 1;
      final x = center.dx +
          radius * radiusFactor * math.cos(i * radiansPerPoint + startRadians);
      final y = center.dy +
          radius * radiusFactor * math.sin(i * radiansPerPoint + startRadians);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }

    if (property.angle == null) {
      canvas.drawPath(path..close(), createPaintWithColor());
    } else {
      canvas
        ..save()
        ..translate(center.dx, center.dy)
        ..rotate(property.angle ?? 0)
        ..translate(-center.dx, -center.dy)
        ..drawPath(path..close(), createPaintWithColor())
        ..restore();
    }

    return (canvas: canvas, path: path);
  }
}
