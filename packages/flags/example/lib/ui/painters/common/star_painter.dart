import "dart:math" as math;
import "dart:ui";

import "../basic/elements_painter.dart";

class StarPainter extends ElementsPainter {
  StarPainter(super.properties, super.aspectRatio);
  static const int points = 5;

  static const innerRadiusFactor = 0.38;
  static const startRadians = math.pi / 2;

  @override
  void paint(Canvas canvas, Size size) {
    const radiansPerPoint = math.pi * 2 / (points * 2);
    final center = calculateCenter(size);
    final radius = calculateSize(size);
    final path = Path();

    for (var i = 0; i <= points * 2; i++) {
      final radiusFactor = i.isEven ? innerRadiusFactor : 1;
      final x = center.dx +
          radius * radiusFactor * math.cos(i * radiansPerPoint + startRadians);
      final y = center.dy +
          radius * radiusFactor * math.sin(i * radiansPerPoint + startRadians);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }

    canvas.drawPath(path..close(), createPaintWithColor());
  }
}
