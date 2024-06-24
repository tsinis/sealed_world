import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class TtoLinePainter extends CustomElementsPainter {
  TtoLinePainter(super.properties, super.aspectRatio);

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    final width = size.width;
    final height = size.height;
    final heightFactor = property.heightFactor;
    final widthFactor = property.widthFactor ?? 1;
    final blackPaint = Paint()
      ..color = otherColors?.firstOrNull ?? Color(0xff000000);

    final whitePath = Path()
      ..moveTo(0, 0)
      ..lineTo(width * heightFactor, 0)
      ..lineTo(width, height)
      ..lineTo(width - (width * heightFactor), height)
      ..close();

    final blackPath = Path()
      ..moveTo(width * widthFactor, 0)
      ..lineTo(width * heightFactor - (width * widthFactor), 0)
      ..lineTo(width - (width * widthFactor), height)
      ..lineTo(width - (width * heightFactor) + (width * widthFactor), height)
      ..close();

    canvas
      ..drawPath(whitePath, colorPaint)
      ..drawPath(blackPath, blackPaint);

    return (canvas: canvas, bounds: whitePath.getBounds(), child: null);
  }
}
