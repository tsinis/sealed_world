import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class CirclePainter extends ElementsPainter {
  const CirclePainter(super.properties, super.aspectRatio);

  @override
  FlagParentPath paintFlagElements(Canvas canvas, Size size) {
    final radius = calculateSize(size);
    final rect = Rect.fromCircle(center: calculateCenter(size), radius: radius);
    final path = Path()..addOval(rect);
    canvas.drawPath(path, createPaintWithColor());

    return (canvas: canvas, path: path);
  }
}
