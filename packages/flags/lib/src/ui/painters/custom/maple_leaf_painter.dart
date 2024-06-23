import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class MapleLeafPainter extends CustomElementsPainter {
  MapleLeafPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagCanProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * -0.02, height * 0.5)
      ..lineTo(width * -0.01, height * 0.29)
      ..cubicTo(
        width * -0.01,
        height * 0.27,
        width * -0.02,
        height * 0.26,
        width * -0.03,
        height * 0.27,
      )
      ..lineTo(width * -0.17, height * 0.3)
      ..lineTo(width * -0.15, height * 0.22)
      ..cubicTo(
        width * -0.15,
        height * 0.22,
        width * -0.15,
        height * 0.21,
        width * -0.16,
        height * 0.21,
      )
      ..lineTo(width * -0.32, height * 0.02)
      ..lineTo(width * -0.28, height * -0.01)
      ..cubicTo(
        width * -0.28,
        height * -0.01,
        width * -0.27,
        height * -0.02,
        width * -0.28,
        height * -0.03,
      )
      ..lineTo(width * -0.31, height * -0.17)
      ..lineTo(width * -0.21, height * -0.14)
      ..cubicTo(
        width * -0.21,
        height * -0.14,
        width * -0.2,
        height * -0.14,
        width * -0.2,
        height * -0.15,
      )
      ..lineTo(width * -0.18, height * -0.21)
      ..lineTo(width * -0.11, height * -0.1)
      ..cubicTo(
        width * -0.11,
        height * -0.09,
        width * -0.1,
        height * -0.09,
        width * -0.09,
        height * -0.11,
      )
      ..cubicTo(
        width * -0.09,
        height * -0.11,
        width * -0.09,
        height * -0.11,
        width * -0.09,
        height * -0.11,
      )
      ..lineTo(width * -0.13, height * -0.37)
      ..lineTo(width * -0.07, height * -0.33)
      ..cubicTo(
        width * -0.07,
        height * -0.32,
        width * -0.06,
        height * -0.33,
        width * -0.06,
        height * -0.33,
      )
      ..lineTo(0, height * -0.5)
      ..lineTo(width * 0.06, height * -0.33)
      ..cubicTo(
        width * 0.06,
        height * -0.33,
        width * 0.07,
        height * -0.32,
        width * 0.07,
        height * -0.33,
      )
      ..lineTo(width * 0.13, height * -0.37)
      ..lineTo(width * 0.09, height * -0.11)
      ..cubicTo(
        width * 0.09,
        height * -0.1,
        width * 0.1,
        height * -0.09,
        width * 0.11,
        height * -0.1,
      )
      ..cubicTo(
        width * 0.11,
        height * -0.1,
        width * 0.11,
        height * -0.1,
        width * 0.11,
        height * -0.1,
      )
      ..lineTo(width * 0.18, height * -0.21)
      ..lineTo(width * 0.2, height * -0.15)
      ..cubicTo(
        width * 0.2,
        height * -0.14,
        width * 0.21,
        height * -0.14,
        width * 0.21,
        height * -0.14,
      )
      ..lineTo(width * 0.31, height * -0.17)
      ..lineTo(width * 0.28, height * -0.03)
      ..cubicTo(
        width * 0.27,
        height * -0.02,
        width * 0.28,
        height * -0.01,
        width * 0.28,
        height * -0.01,
      )
      ..lineTo(width * 0.32, height * 0.02)
      ..lineTo(width * 0.16, height * 0.21)
      ..cubicTo(
        width * 0.15,
        height * 0.21,
        width * 0.15,
        height * 0.22,
        width * 0.15,
        height * 0.22,
      )
      ..lineTo(width * 0.17, height * 0.3)
      ..lineTo(width * 0.03, height * 0.27)
      ..cubicTo(
        width * 0.02,
        height * 0.26,
        width * 0.01,
        height * 0.27,
        width * 0.01,
        height * 0.29,
      )
      ..lineTo(width * 0.02, height * 0.5)
      ..lineTo(width * -0.02, height * 0.5)
      ..close();

    canvas
      ..translate(center.dx, center.dy)
      ..drawPath(path, colorPaint);

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
