import "package:flutter/painting.dart";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering rectangular elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// rectangles based on the specified properties.
final class RectanglePainter extends ElementsPainter {
  /// Creates a [RectanglePainter] with the given properties and aspect ratio.
  const new(super._properties, super.aspectRatio);

  @override
  Paint paintCreator([Color? color]) =>
      // ignore: avoid-returning-cascades, it's ok for a shorthand method.
      super.paintCreator(color)..isAntiAlias = false;

  /// Where the rectangle of [property] lands in a flag of [size].
  ///
  /// Split out of [paintFlagElements] so a painter that only needs the box
  /// (the star field of the United States, for one) can ask for it without
  /// drawing the rectangle a second time.
  Rect rectangleBounds(Size size) {
    final maybeAspectRatio = shapeType<Rectangle>()?.aspectRatio;
    final width = size.width;
    final height = size.height * property.heightFactor;
    final compensated = maybeAspectRatio == null
        ? width *
              (property.widthFactor ?? 1) *
              (aspectRatio / calculateAspectRatio(size))
        : height * maybeAspectRatio;

    final x = ((width - compensated) / 2) * (property.offset.dx + 1);
    final y = ((size.height - height) / 2) * (property.offset.dy + 1);

    return Rect.fromLTWH(x, y, compensated, height);
  }

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final rect = rectangleBounds(size);
    canvas.drawRect(rect, paintCreator());

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
