import "package:flutter/rendering.dart";
import "package:world_flags/src/ui/painters/multi_element_painter.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class VirPainter extends CustomElementsPainter {
  const VirPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagVirProperties.aspectRatio;

  TextSpan _letterCreator(String letter, double fontSize) => TextSpan(
        text: letter,
        style: TextStyle(
          inherit: false,
          color: customColors.last,
          fontSize: fontSize * 0.4,
          fontWeight: FontWeight.w500,
        ),
      );

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final vLetter = _letterCreator('V', height);
    final vText = TextPainter(text: vLetter, textDirection: TextDirection.ltr)
      ..layout();
    vText.paint(canvas, Offset(width * 0.06, center.dy - vText.height / 2));

    final iLetter = _letterCreator('I', height);
    final iText = TextPainter(text: iLetter, textDirection: TextDirection.ltr)
      ..layout();
    iText.paint(canvas, Offset(width * 1.46, center.dy - iText.height / 2));

    return SimpleBirdPainter.mda(properties, aspectRatio).paint(canvas, size);
  }
}
