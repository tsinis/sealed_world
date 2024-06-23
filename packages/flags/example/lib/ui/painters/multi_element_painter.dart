import "dart:math";
import "dart:ui";

import "package:flags/flags.dart";

import "../../model/typedefs.dart";
import "basic/custom_elements_painter.dart";

part "custom/union_jack_painter.dart";
part "custom/usa_stars_painter.dart";

final class MultiElementPainter extends CustomElementsPainter {
  const MultiElementPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paint(Canvas canvas, Size size) {
    for (final property in properties) {
      final shape = property.shape;
      if (shape == null) continue;
      final ratio = size.aspectRatio;
      final parent = painter(shape)([property], ratio).paint(canvas, size);
      if (parent == null) continue;
      final child = property.child;
      if (child is! CustomElementsProperties) continue;

      return paintFlagElements(canvas, size, parent);
    }

    return null;
  }
}
