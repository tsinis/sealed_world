import "dart:math";
import "dart:ui";

import "package:flags/flags.dart";

import "../../model/typedefs.dart";
import "basic/elements_painter.dart";

part "custom/union_jack_painter.dart";

final class MultiElementPainter extends ElementsPainter {
  const MultiElementPainter(super.properties, super.aspectRatio);

  @override
  void paint(Canvas canvas, Size size) {
    for (final property in properties) {
      final shape = property.shape;
      if (shape == null) continue;
      painter(shape)([property], size.aspectRatio)?.paint(canvas, size);
    }
  }

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) => (
        canvas: canvas,
        bounds: Rect.fromLTWH(0, 0, size.width, size.height),
        child: property.child,
      );
}
