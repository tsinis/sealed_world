import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class EllipsePainter extends ElementsPainter {
  const EllipsePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final widthRatio = shapeType<Ellipse>()?.widthRatio;
    final center = calculateCenter(size);
    final height = size.height * property.heightFactor;
    final width = widthRatio == null ? height : height * widthRatio;
    final rect = Rect.fromCenter(center: center, width: width, height: height);
    canvas.drawOval(rect, createPaintWithColor());

    return (canvas: canvas, bounds: rect, children: property.children);
  }
}
