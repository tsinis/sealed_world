import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class EllipsePainter extends ElementsPainter {
  const EllipsePainter(super.properties, super.aspectRatio);

  @override
  FlagParentPath paintFlagElements(Canvas canvas, Size size) {
    final radius = calculateSize(size);
    final rect = Rect.fromCircle(center: calculateCenter(size), radius: radius);
    canvas.drawOval(rect, createPaintWithColor());

    return (canvas: canvas, bounds: rect, children: property.children);
  }
}
