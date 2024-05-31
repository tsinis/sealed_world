import "dart:math" as math;
import "dart:ui";

import "package:flags/flags.dart";

import "../basic/elements_painter.dart";

class StarPainter extends ElementsPainter {
  StarPainter(super.properties, super.aspectRatio);
  static const startRadians = math.pi / 2;

  @override
  void paint(Canvas canvas, Size size) {
    final shape = property.shape;
    if (shape is! Star?) return;
    final star = shape ?? const Star();
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

    final paint = createPaintWithColor();
    if (property.angle == null) return canvas.drawPath(path..close(), paint);
    canvas
      ..save()
      ..translate(center.dx, center.dy)
      ..rotate(property.angle ?? 0)
      ..translate(-center.dx, -center.dy)
      ..drawPath(path..close(), paint)
      ..restore();
  }
}
