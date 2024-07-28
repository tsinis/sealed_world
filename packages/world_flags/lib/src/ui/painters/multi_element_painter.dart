import "dart:math" hide Rectangle;

import "package:flutter/rendering.dart";

import "../../constants/flag_constants.dart";
import "../../data/flags_map_part_2.data.dart";
import "../../data/flags_map_part_3.data.dart";
import "../../model/elements/custom_elements_properties.dart";
import "../../model/elements/elements_properties.dart";
import "../../model/shape.dart";
import "../../model/typedefs.dart";
import "basic/custom_elements_painter.dart";
import "basic/flag_anti_alias.dart";

part "custom/atf_painter.dart";
part "custom/atg_painter.dart";
part "custom/bra_painter.dart";
part "custom/brn_painter.dart";
part "custom/custom_diagonal_painter.dart";
part "custom/geo_painter.dart";
part "custom/half_ellipse_painter.dart";
part "custom/irn_painter.dart";
part "custom/kaz_painter.dart";
part "custom/kosovo_painter.dart";
part "custom/mhl_painter.dart";
part "custom/mkd_painter.dart";
part "custom/mne_painter.dart";
part "custom/png_painter.dart";
part "custom/pyf_painter.dart";
part "custom/simple_bird_painter.dart";
part "custom/simple_shield_painter.dart";
part "custom/tjk_painter.dart";
part "custom/tkl_painter.dart";
part "custom/tkm_painter.dart";
part "custom/uga_painter.dart";
part "custom/union_jack_painter.dart";
part "custom/usa_stars_painter.dart";
part "custom/zmb_painter.dart";

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
      if (property is CustomElementsProperties ||
          property.child is CustomElementsProperties) {
        paintFlagElements(canvas, size, parent);
      }
    }

    return null;
  }
}
