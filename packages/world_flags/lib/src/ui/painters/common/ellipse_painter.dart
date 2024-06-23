import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class EllipsePainter extends ElementsPainter {
  const EllipsePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final center = calculateCenter(size);
    final radius = size.height * property.heightFactor / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawOval(rect, colorPaint);

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
