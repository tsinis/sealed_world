import "dart:math" hide Rectangle;
import "dart:ui";

import "package:flutter/foundation.dart";

import "../../model/elements/custom_elements_properties.dart";
import "../../model/elements/elements_properties.dart";
import "../../model/shape.dart";
import "../../model/typedefs.dart";
import "basic/custom_elements_painter.dart";

part "custom/custom_diagonal_painter.dart";
part "custom/half_ellipse_painter.dart";
part "custom/mhl_painter.dart";
part "custom/rhombus_painter.dart";
part "custom/simple_bird_painter.dart";
part "custom/simple_shield_painter.dart";
part "custom/tkl_painter.dart";
part "custom/union_jack_painter.dart";
part "custom/usa_stars_painter.dart";

final class MultiElementPainter extends CustomElementsPainter {
  const MultiElementPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paint(Canvas canvas, Size size) {
    for (final property in properties) {
      final shape = property.shape;
      FlagParentBounds? parent;
      if (shape != null) {
        final ratio = size.aspectRatio;
        parent = painter(shape)([property], ratio).paint(canvas, size);
      }
      final child = property.child; // TODO: Refactor.
      if (child is CustomElementsProperties) {
        paintFlagElements(canvas, size, parent, child.otherColors);
      } else if (property is CustomElementsProperties) {
        paintFlagElements(canvas, size, parent, property.otherColors);
      }
    }

    return null;
  }
}
