import "dart:ui";

import "package:world_flags/src/data/flags_map_part_1.data.dart";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class ImnPainter extends CustomElementsPainter {
  const ImnPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagImnProperties.aspectRatio;

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
      ..moveTo(width * 0.74, height * 0.79)
      ..cubicTo(
        width * 0.74,
        height * 0.77,
        width * 0.74,
        height * 0.78,
        width * 0.73,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.77,
        width * 0.72,
        height * 0.76,
        width * 0.69,
        height * 0.77,
      )
      ..lineTo(width * 0.66, height * 0.77)
      ..cubicTo(
        width * 0.65,
        height * 0.75,
        width * 0.64,
        height * 0.77,
        width * 0.64,
        height * 0.8,
      )
      ..lineTo(width * 0.64, height * 0.82)
      ..cubicTo(
        width * 0.64,
        height * 0.84,
        width * 0.64,
        height * 0.85,
        width * 0.64,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.93,
        width * 0.6,
        height * 1.01,
        width * 0.6,
        height * 1.07,
      )
      ..lineTo(width * 0.6, height * 1.1)
      ..lineTo(width * 0.53, height * 1.03)
      ..lineTo(width * 0.53, height)
      ..cubicTo(
        width * 0.53,
        height * 0.93,
        width * 0.51,
        height * 0.85,
        width * 0.5,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.72,
        width * 0.46,
        height * 0.7,
        width * 0.44,
        height * 0.73,
      )
      ..lineTo(width * 0.43, height * 0.75)
      ..cubicTo(
        width * 0.4,
        height * 0.76,
        width * 0.38,
        height * 0.78,
        width * 0.36,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.83,
        width * 0.33,
        height * 0.85,
        width * 0.31,
        height * 0.82,
      )
      ..lineTo(width * 0.27, height * 0.74)
      ..cubicTo(
        width * 0.26,
        height * 0.72,
        width * 0.26,
        height * 0.73,
        width * 0.26,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.75,
        width * 0.26,
        height * 0.75,
        width * 0.26,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.78,
        width * 0.26,
        height * 0.8,
        width * 0.28,
        height * 0.85,
      )
      ..lineTo(width * 0.29, height * 0.9)
      ..cubicTo(
        width * 0.29,
        height * 0.93,
        width * 0.31,
        height * 0.95,
        width * 0.31,
        height * 0.93,
      )
      ..lineTo(width * 0.32, height * 0.92)
      ..lineTo(width * 0.34, height * 0.9)
      ..cubicTo(
        width * 0.37,
        height * 0.9,
        width * 0.41,
        height * 0.9,
        width * 0.43,
        height * 0.87,
      )
      ..lineTo(width * 0.44, height * 0.85)
      ..lineTo(width * 0.45, height * 0.86)
      ..lineTo(width * 0.45, height * 1.03)
      ..lineTo(width * 0.44, height * 1.05)
      ..cubicTo(
        width * 0.42,
        height * 1.1,
        width * 0.4,
        height * 1.16,
        width * 0.38,
        height * 1.23,
      )
      ..cubicTo(
        width * 0.36,
        height * 1.26,
        width * 0.37,
        height * 1.34,
        width * 0.39,
        height * 1.36,
      )
      ..lineTo(width * 0.4, height * 1.37)
      ..cubicTo(
        width * 0.42,
        height * 1.41,
        width * 0.44,
        height * 1.44,
        width * 0.46,
        height * 1.48,
      )
      ..cubicTo(
        width * 0.48,
        height * 1.51,
        width * 0.49,
        height * 1.51,
        width * 0.49,
        height * 1.57,
      )
      ..lineTo(width * 0.48, height * 1.69)
      ..cubicTo(
        width * 0.48,
        height * 1.71,
        width * 0.48,
        height * 1.71,
        width * 0.48,
        height * 1.71,
      )
      ..cubicTo(
        width * 0.49,
        height * 1.71,
        width * 0.49,
        height * 1.7,
        width * 0.49,
        height * 1.7,
      )
      ..cubicTo(
        width * 0.5,
        height * 1.69,
        width * 0.5,
        height * 1.68,
        width * 0.51,
        height * 1.61,
      )
      ..lineTo(width * 0.53, height * 1.56)
      ..cubicTo(
        width * 0.54,
        height * 1.55,
        width * 0.54,
        height * 1.51,
        width * 0.53,
        height * 1.51,
      )
      ..lineTo(width * 0.52, height * 1.5)
      ..lineTo(width * 0.51, height * 1.47)
      ..cubicTo(
        width * 0.49,
        height * 1.4,
        width * 0.47,
        height * 1.33,
        width * 0.44,
        height * 1.3,
      )
      ..lineTo(width * 0.43, height * 1.29)
      ..lineTo(width * 0.43, height * 1.28)
      ..cubicTo(
        width * 0.46,
        height * 1.25,
        width * 0.47,
        height * 1.22,
        width * 0.49,
        height * 1.19,
      )
      ..lineTo(width * 0.51, height * 1.19)
      ..cubicTo(
        width * 0.54,
        height * 1.21,
        width * 0.57,
        height * 1.23,
        width * 0.61,
        height * 1.23,
      )
      ..cubicTo(
        width * 0.63,
        height * 1.26,
        width * 0.66,
        height * 1.2,
        width * 0.65,
        height * 1.14,
      )
      ..lineTo(width * 0.65, height * 1.11)
      ..cubicTo(
        width * 0.67,
        height * 1.04,
        width * 0.66,
        height * 0.95,
        width * 0.67,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.84,
        width * 0.72,
        height * 0.82,
        width * 0.74,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.81,
        width * 0.74,
        height * 0.8,
        width * 0.74,
        height * 0.79,
      )
      ..lineTo(width * 0.74, height * 0.79);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..drawPath(
        path,
        paintCreator(customColors.last)
          ..style = PaintingStyle.stroke
          ..strokeWidth = height / 100,
      );

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
