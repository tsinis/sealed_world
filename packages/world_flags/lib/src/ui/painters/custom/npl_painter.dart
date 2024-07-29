import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

final class NplPainter extends CustomElementsPainter {
  const NplPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final path = Path()
      ..moveTo(width * 0.03, height * 0.05)
      ..lineTo(width * 0.87, height * 0.48)
      ..lineTo(width * 0.28, height * 0.48)
      ..lineTo(width * 0.87, height * 0.97)
      ..lineTo(width * 0.03, height * 0.97)
      ..close();

    canvas
      ..drawPath(
        path,
        paintCreator(customColors.first)
          ..style = PaintingStyle.stroke
          ..strokeWidth = height / 15,
      )
      ..drawPath(path, paintCreator());

    return MultiElementPainter(
      List.unmodifiable(properties.skip(1)),
      aspectRatio,
    ).paint(canvas, size);
  }
}
