import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class BrbPainter extends CustomElementsPainter {
  const BrbPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagBrbProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.93, height * 0.15)
      ..cubicTo(
        width * 0.85,
        height * 0.16,
        width * 0.77,
        height * 0.2,
        width * 0.71,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.27,
        width * 0.75,
        height * 0.25,
        width * 0.75,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.24,
        width * 0.74,
        height * 0.3,
        width * 0.74,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.42,
        width * 0.68,
        height * 0.52,
        width * 0.67,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.64,
        width * 0.67,
        height * 0.65,
        width * 0.66,
        height * 0.65,
      )
      ..lineTo(width * 0.55, height * 0.63)
      ..lineTo(width * 0.55, height * 0.25)
      ..cubicTo(
        width * 0.58,
        height * 0.25,
        width * 0.62,
        height * 0.25,
        width * 0.64,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.19,
        width * 0.53,
        height * 0.09,
        width * 0.5,
        0,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.09,
        width * 0.43,
        height * 0.19,
        width * 0.36,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.25,
        width * 0.42,
        height * 0.25,
        width * 0.45,
        height * 0.25,
      )
      ..lineTo(width * 0.45, height * 0.63)
      ..lineTo(width * 0.34, height * 0.65)
      ..cubicTo(
        width * 0.33,
        height * 0.65,
        width * 0.33,
        height * 0.64,
        width * 0.33,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.51,
        width * 0.3,
        height * 0.41,
        width * 0.26,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.3,
        width * 0.22,
        height * 0.24,
        width * 0.25,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.25,
        width * 0.3,
        height * 0.27,
        width * 0.29,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.2,
        width * 0.15,
        height * 0.16,
        width * 0.07,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.14,
        width * 0.06,
        height * 0.15,
        width * 0.06,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.32,
        width * 0.26,
        height * 0.52,
        width * 0.26,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.75,
        width * 0.41,
        height * 0.73,
        width * 0.45,
        height * 0.73,
      )
      ..lineTo(width * 0.45, height)
      ..lineTo(width * 0.55, height)
      ..lineTo(width * 0.55, height * 0.73)
      ..cubicTo(
        width * 0.6,
        height * 0.73,
        width * 0.7,
        height * 0.76,
        width * 0.74,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.52,
        width * 0.83,
        height * 0.32,
        width * 0.94,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.15,
        width * 0.94,
        height * 0.14,
        width * 0.93,
        height * 0.14,
      )
      ..lineTo(width * 0.93, height * 0.15);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
