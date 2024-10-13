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
import "basic/flag_test_properties.dart";
import "common/rectangle_painter.dart";

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

/// A custom painter that draws multiple elements on a flag.
///
/// This class extends [CustomElementsPainter] and provides the logic for
/// painting multiple elements on a flag. It uses the provided [properties] and
/// [aspectRatio] to customize the appearance of the elements.
final class MultiElementPainter extends CustomElementsPainter {
  /// Creates a new instance of [MultiElementPainter].
  ///
  /// - [properties]: The properties of the elements to be painted.
  /// - [aspectRatio]: The aspect ratio of the flag.
  const MultiElementPainter(super.properties, super.aspectRatio);

  /// Paints the custom flag elements on the given canvas and size.
  ///
  /// - [canvas]: The canvas on which to paint.
  /// - [size]: The size of the area to paint.
  ///
  /// Returns a [FlagParentBounds] object representing the bounds of the painted
  /// elements.
  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) => null;

  /// Paints the flag elements on the given canvas and size.
  ///
  /// This method iterates over the [properties] and uses the appropriate
  /// painter for each shape. If the properties are of type
  /// [CustomElementsProperties], it calls [paintFlagElements] to perform
  /// additional painting.
  ///
  /// - [canvas]: The canvas on which to paint.
  /// - [size]: The size of the area to paint.
  ///
  /// Returns a [FlagParentBounds] object representing the bounds of the painted
  /// elements.
  @override
  FlagParentBounds? paint(Canvas canvas, Size size) {
    for (final props in properties) {
      final shape = props.shape;
      if (shape != null) {
        // ignore: prefer-moving-to-variable, looks like false-positive.
        painter(shape)([props], size.aspectRatio).paint(canvas, size);
      }
      if (props is CustomElementsProperties) paintFlagElements(canvas, size);
    }

    return null;
  }
}
