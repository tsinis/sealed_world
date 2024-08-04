import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../basic/flag_test_properties.dart";

/// Painter for the Iraq flag.
final class IrqPainter extends CustomElementsPainter {
  /// Creates a new instance of [IrqPainter].
  const IrqPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagIrqProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final textSpan = TextSpan(
      text: "الله اكبر", //ignore: avoid-non-ascii-symbols, text on the flag.
      style: flagTextStyleOverride.copyWith(
        color: property.mainColor,
        fontSize: height,
        fontWeight: FontWeight.bold,
      ),
    );

    final text = TextPainter(text: textSpan, textDirection: TextDirection.rtl)
      ..layout();
    text.paint(
      canvas,
      Offset((width - text.width) / 2, center.dy - text.height / 2),
    );

    return null;
  }
}
