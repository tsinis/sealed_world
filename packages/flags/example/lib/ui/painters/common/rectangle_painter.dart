import "package:flutter/rendering.dart";

import "../basic/elements_painter.dart";

class RectanglePainter extends ElementsPainter {
  const RectanglePainter(super.properties, super.aspectRatio);

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final compensated = width *
        (property.widthFactor ?? 1) *
        (aspectRatio / calculateAspectRatio(size));
    final x = (width * (property.x + 1) / 2).clamp(0.0, width - compensated);
    final height = size.height * property.heightFactor;
    final rect =
        Rect.fromLTWH(x, size.height * property.y, compensated, height);
    canvas.drawRect(rect, createPaintWithColor());
  }
}
