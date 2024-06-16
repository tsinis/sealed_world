import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class RectanglePainter extends ElementsPainter {
  const RectanglePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final maybeAspectRatio = shapeType<Rectangle>()?.aspectRatio;
    final width = size.width;
    final height = size.height * property.heightFactor;
    final compensated = maybeAspectRatio != null
        ? height * maybeAspectRatio
        : width *
            (property.widthFactor ?? 1) *
            (aspectRatio / calculateAspectRatio(size));

    final x = ((width - compensated) / 2) * (property.x + 1);
    final y = ((size.height - height) / 2) * (property.y + 1);
    final rect = Rect.fromLTWH(x, y, compensated, height);
    canvas.drawRect(rect, colorPaint);

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
