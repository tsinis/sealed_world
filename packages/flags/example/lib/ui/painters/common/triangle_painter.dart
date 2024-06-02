import "dart:ui";

import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class TrianglePainter extends ElementsPainter {
  const TrianglePainter(super.properties, super.aspectRatio);

  @override
  FlagParentPath paintFlagElements(Canvas canvas, Size size) {
    final compensation = (1 + aspectRatio / calculateAspectRatio(size)) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(width, size.center(Offset.zero).dy)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, createPaintWithColor());

    return (canvas: canvas, path: path, children: property.children);
  }
}
