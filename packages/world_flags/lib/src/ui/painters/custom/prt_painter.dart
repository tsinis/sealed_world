import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class PrtPainter extends CustomElementsPainter {
  const PrtPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagPrtProperties.aspectRatio;

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
      ..moveTo(width * 0.5, 0)
      ..cubicTo(
        width * 0.12,
        0,
        width * -0.12,
        height * 0.42,
        width * 0.07,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.16,
        height * 0.91,
        width * 0.32,
        height,
        width * 0.5,
        height,
      )
      ..cubicTo(
        width * 0.88,
        height,
        width * 1.12,
        height * 0.58,
        width * 0.93,
        height * 0.25,
      )
      ..cubicTo(width * 0.84, height * 0.1, width * 0.68, 0, width * 0.5, 0)
      ..lineTo(width * 0.5, 0)
      ..moveTo(width * 0.12, height * 0.29)
      ..lineTo(width * 0.22, height * 0.39)
      ..lineTo(width * 0.07, height * 0.46)
      ..cubicTo(
        width * 0.07,
        height * 0.4,
        width * 0.09,
        height * 0.34,
        width * 0.12,
        height * 0.29,
      )
      ..lineTo(width * 0.12, height * 0.29)
      ..moveTo(width * 0.07, height * 0.54)
      ..lineTo(width * 0.34, height * 0.67)
      ..lineTo(width * 0.17, height * 0.79)
      ..lineTo(width * 0.17, height * 0.79)
      ..cubicTo(
        width * 0.11,
        height * 0.72,
        width * 0.07,
        height * 0.63,
        width * 0.07,
        height * 0.54,
      )
      ..lineTo(width * 0.07, height * 0.54)
      ..moveTo(width * 0.44, height * 0.93)
      ..cubicTo(
        width * 0.38,
        height * 0.92,
        width * 0.33,
        height * 0.91,
        width * 0.28,
        height * 0.88,
      )
      ..lineTo(width * 0.44, height * 0.88)
      ..lineTo(width * 0.44, height * 0.93)
      ..lineTo(width * 0.44, height * 0.93)
      ..moveTo(width * 0.44, height * 0.81)
      ..lineTo(width * 0.24, height * 0.81)
      ..lineTo(width * 0.44, height * 0.68)
      ..lineTo(width * 0.44, height * 0.81)
      ..lineTo(width * 0.44, height * 0.81)
      ..moveTo(width * 0.44, height * 0.61)
      ..lineTo(width * 0.4, height * 0.63)
      ..lineTo(width * 0.13, height * 0.5)
      ..lineTo(width * 0.26, height * 0.43)
      ..lineTo(width * 0.44, height * 0.61)
      ..lineTo(width * 0.44, height * 0.61)
      ..lineTo(width * 0.44, height * 0.61)
      ..moveTo(width * 0.44, height * 0.52)
      ..lineTo(width * 0.22, height * 0.3)
      ..lineTo(width * 0.44, height * 0.33)
      ..lineTo(width * 0.44, height * 0.52)
      ..lineTo(width * 0.44, height * 0.52)
      ..moveTo(width * 0.44, height * 0.27)
      ..lineTo(width * 0.16, height * 0.22)
      ..cubicTo(
        width * 0.23,
        height * 0.14,
        width * 0.33,
        height * 0.08,
        width * 0.44,
        height * 0.07,
      )
      ..lineTo(width * 0.44, height * 0.27)
      ..lineTo(width * 0.44, height * 0.27)
      ..moveTo(width * 0.88, height * 0.29)
      ..cubicTo(
        width * 0.91,
        height * 0.34,
        width * 0.93,
        height * 0.4,
        width * 0.93,
        height * 0.46,
      )
      ..lineTo(width * 0.78, height * 0.39)
      ..lineTo(width * 0.88, height * 0.29)
      ..lineTo(width * 0.88, height * 0.29)
      ..moveTo(width * 0.56, height * 0.07)
      ..cubicTo(
        width * 0.67,
        height * 0.08,
        width * 0.77,
        height * 0.14,
        width * 0.84,
        height * 0.22,
      )
      ..lineTo(width * 0.56, height * 0.27)
      ..lineTo(width * 0.56, height * 0.07)
      ..lineTo(width * 0.56, height * 0.07)
      ..moveTo(width * 0.56, height * 0.33)
      ..lineTo(width * 0.78, height * 0.3)
      ..lineTo(width * 0.56, height * 0.52)
      ..lineTo(width * 0.56, height * 0.33)
      ..lineTo(width * 0.56, height * 0.33)
      ..moveTo(width * 0.56, height * 0.61)
      ..lineTo(width * 0.73, height * 0.43)
      ..lineTo(width * 0.87, height * 0.5)
      ..lineTo(width * 0.6, height * 0.63)
      ..lineTo(width * 0.56, height * 0.61)
      ..lineTo(width * 0.56, height * 0.61)
      ..lineTo(width * 0.56, height * 0.61)
      ..moveTo(width * 0.56, height * 0.93)
      ..lineTo(width * 0.56, height * 0.88)
      ..lineTo(width * 0.72, height * 0.88)
      ..cubicTo(
        width * 0.67,
        height * 0.91,
        width * 0.62,
        height * 0.92,
        width * 0.56,
        height * 0.93,
      )
      ..lineTo(width * 0.56, height * 0.93)
      ..moveTo(width * 0.56, height * 0.81)
      ..lineTo(width * 0.56, height * 0.68)
      ..lineTo(width * 0.75, height * 0.81)
      ..lineTo(width * 0.56, height * 0.81)
      ..lineTo(width * 0.56, height * 0.81)
      ..moveTo(width * 0.83, height * 0.79)
      ..lineTo(width * 0.83, height * 0.79)
      ..lineTo(width * 0.66, height * 0.67)
      ..lineTo(width * 0.93, height * 0.54)
      ..cubicTo(
        width * 0.93,
        height * 0.63,
        width * 0.89,
        height * 0.72,
        width * 0.83,
        height * 0.79,
      )
      ..lineTo(width * 0.83, height * 0.79);

    final path2 = Path()
      ..moveTo(width * 0.25, height * 0.19)
      ..lineTo(width * 0.25, height * 0.63)
      ..cubicTo(
        width * 0.25,
        height * 0.82,
        width * 0.46,
        height * 0.94,
        width * 0.62,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.8,
        width * 0.75,
        height * 0.71,
        width * 0.75,
        height * 0.63,
      )
      ..lineTo(width * 0.75, height * 0.19)
      ..lineTo(width * 0.25, height * 0.19)
      ..lineTo(width * 0.25, height * 0.19);

    final path3 = Path()
      ..moveTo(width * 0.31, height * 0.25)
      ..lineTo(width * 0.31, height * 0.63)
      ..cubicTo(
        width * 0.31,
        height * 0.77,
        width * 0.46,
        height * 0.87,
        width * 0.59,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.76,
        width * 0.69,
        height * 0.7,
        width * 0.69,
        height * 0.63,
      )
      ..lineTo(width * 0.69, height * 0.25)
      ..lineTo(width * 0.31, height * 0.25)
      ..lineTo(width * 0.31, height * 0.25);

    final path6 = Path()
      ..moveTo(width * 0.31, height * 0.44)
      ..lineTo(width * 0.38, height * 0.44)
      ..lineTo(width * 0.38, height * 0.56)
      ..lineTo(width * 0.31, height * 0.56)
      ..lineTo(width * 0.31, height * 0.44)
      ..lineTo(width * 0.31, height * 0.44)
      ..moveTo(width * 0.44, height * 0.44)
      ..lineTo(width * 0.56, height * 0.44)
      ..lineTo(width * 0.56, height * 0.56)
      ..lineTo(width * 0.44, height * 0.56)
      ..lineTo(width * 0.44, height * 0.44)
      ..lineTo(width * 0.44, height * 0.44)
      ..moveTo(width * 0.62, height * 0.44)
      ..lineTo(width * 0.69, height * 0.44)
      ..lineTo(width * 0.69, height * 0.56)
      ..lineTo(width * 0.62, height * 0.56)
      ..lineTo(width * 0.62, height * 0.44)
      ..lineTo(width * 0.62, height * 0.44)
      ..moveTo(width * 0.44, height * 0.63)
      ..lineTo(width * 0.56, height * 0.63)
      ..lineTo(width * 0.56, height * 0.75)
      ..lineTo(width * 0.44, height * 0.75)
      ..lineTo(width * 0.44, height * 0.63)
      ..lineTo(width * 0.44, height * 0.63)
      ..moveTo(width * 0.44, height * 0.25)
      ..lineTo(width * 0.56, height * 0.25)
      ..lineTo(width * 0.56, height * 0.38)
      ..lineTo(width * 0.44, height * 0.38)
      ..lineTo(width * 0.44, height * 0.25)
      ..lineTo(width * 0.44, height * 0.25);

    final bounds = path.getBounds();
    final bluePaint = paintCreator(customColors[1]);

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator()) // Yellow.
      ..drawPath(path2, paintCreator(customColors.last)) // Red.
      ..drawPath(path3, paintCreator(customColors.first)) // White.
      ..drawPath(path6, bluePaint) // Blue.
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
