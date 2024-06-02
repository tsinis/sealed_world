import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class MultiElementPainter extends ElementsPainter {
  const MultiElementPainter(super.properties, super.aspectRatio);

  @override
  FlagParentPath paintFlagElements(Canvas canvas, Size size) => (
        canvas: canvas,
        path: Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
        children: property.children,
      );
}
