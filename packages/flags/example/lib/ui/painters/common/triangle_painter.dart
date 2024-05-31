import "dart:ui";

import "package:flutter/rendering.dart";

import "../basic/elements_painter.dart";

class TrianglePainter extends ElementsPainter {
  const TrianglePainter(super.properties, super.aspectRatio);

  @override
  void paint(Canvas canvas, Size size) {
    final compensation = (1 + aspectRatio / calculateAspectRatio(size)) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(width, size.center(Offset.zero).dy)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, createPaintWithColor());
  }
}
