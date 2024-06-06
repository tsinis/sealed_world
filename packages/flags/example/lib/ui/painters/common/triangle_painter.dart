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
    final height = size.height * property.heightFactor;
    final xOffset = (size.width / 2) * (property.x + 1);
    final yOffset = (size.height / 2) * (property.y + 1);
    final path = Path()
      ..moveTo(xOffset, yOffset)
      ..lineTo(xOffset + width, yOffset + height / 2)
      ..lineTo(xOffset, yOffset + height)
      ..close();
    canvas.drawPath(path, createPaintWithColor());

    return (canvas: canvas, path: path, children: property.children);
  }
}
