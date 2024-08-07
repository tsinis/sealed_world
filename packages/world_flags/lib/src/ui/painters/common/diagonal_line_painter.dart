import "dart:math";
import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering diagonal line elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// diagonal lines based on the specified properties.
final class DiagonalLinePainter extends ElementsPainter {
  /// Creates a [DiagonalLinePainter] with the given properties
  /// and aspect ratio.
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
      ..drawRect(line, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: line, child: property.child);
  }
}
