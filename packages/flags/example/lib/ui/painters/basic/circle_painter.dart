import "package:flutter/rendering.dart";

import "basic_elements_painter.dart";

class CirclePainter extends BasicElementsPainter {
  const CirclePainter(super.properties);

  @override
  void paint(Canvas canvas, Size size) => canvas.drawCircle(
        calculateCenter(size),
        calculateSize(size),
        createPaintWithColor(),
      );
}
