import "dart:math";
import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class DiagonalLinePainter extends ElementsPainter {
  const DiagonalLinePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final angle = atan2(size.height, size.width);
    final thickness = size.height * property.heightFactor;
    final length = sqrt(size.width * size.width + size.height * size.height);
    final line = Rect.fromLTWH(-length / 2, -thickness / 2, length, thickness);
    final isTopRightToBottomLeft =
        shapeType<DiagonalLine>()?.isTopRightToBottomLeft ?? true;

    canvas
      ..save()
      ..translate(size.width / 2, size.height / 2)
      ..rotate(isTopRightToBottomLeft ? angle : -angle)
      ..drawRect(line, colorPaint)
      ..restore();

    return (canvas: canvas, bounds: line, child: property.child);
  }
}
