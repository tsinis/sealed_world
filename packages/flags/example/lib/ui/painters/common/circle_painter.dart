import "package:flutter/rendering.dart";

import "../basic/elements_painter.dart";

class CirclePainter extends ElementsPainter {
  const CirclePainter(super.properties, super.aspectRatio);

  @override
  void paint(Canvas canvas, Size size) => canvas.drawCircle(
        calculateCenter(size),
        calculateSize(size),
        createPaintWithColor(),
      );
}
