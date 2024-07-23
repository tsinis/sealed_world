import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class LbnPainter extends CustomElementsPainter {
  const LbnPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagLbnProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.48, height * 0.06)
      ..cubicTo(
        width * 0.46,
        height * 0.11,
        width * 0.38,
        height * 0.14,
        width * 0.38,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.19,
        width * 0.33,
        height * 0.24,
        width * 0.32,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.31,
        width * 0.3,
        height * 0.29,
        width * 0.29,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.37,
        width * 0.13,
        height * 0.41,
        width * 0.2,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.43,
        width * 0.28,
        height * 0.42,
        width * 0.27,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.53,
        width * 0.07,
        height * 0.58,
        width * 0.13,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.63,
        width * 0.17,
        height * 0.61,
        width * 0.19,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.59,
        width * 0.23,
        height * 0.66,
        width * 0.19,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.01,
        height * 0.79,
        width * 0.02,
        height * 0.85,
        width * 0.22,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.78,
        width * 0.06,
        height * 0.81,
        width * 0.1,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.9,
        width * 0.3,
        height * 0.74,
        width * 0.37,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.93,
        width * 0.15,
        height * 1.06,
        width * 0.23,
        height * 1.05,
      )
      ..cubicTo(
        width * 0.26,
        height * 1.01,
        width * 0.32,
        height * 1.03,
        width * 0.35,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.95,
        width * 0.46,
        height * 0.94,
        width * 0.49,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.5,
        height,
        width * 0.54,
        height * 1.04,
        width * 0.55,
        height * 1.03,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.93,
        width * 0.66,
        height * 1.07,
        width * 0.69,
        height * 1.05,
      )
      ..cubicTo(
        width * 0.69,
        height * 1.02,
        width * 0.64,
        height * 1.01,
        width * 0.63,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.95,
        width * 0.55,
        height * 0.77,
        width * 0.63,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.83,
        width * 0.76,
        height * 0.8,
        width * 0.82,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.85,
        height * 0.82,
        width * 0.96,
        height * 0.93,
        width * 0.93,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.79,
        width * 0.76,
        height * 0.77,
        width * 0.78,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.67,
        width * 0.94,
        height * 0.77,
        width * 0.88,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.66,
        width * 0.8,
        height * 0.58,
        width * 0.74,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.55,
        width * 0.81,
        height * 0.57,
        width * 0.83,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.57,
        width * 0.85,
        height * 0.52,
        width * 0.81,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.51,
        width * 0.71,
        height * 0.46,
        width * 0.82,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.85,
        height * 0.45,
        width * 0.55,
        height * 0.32,
        width * 0.65,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.34,
        width * 0.74,
        height * 0.32,
        width * 0.66,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.25,
        width * 0.67,
        height * 0.24,
        width * 0.68,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.16,
        width * 0.48,
        height * 0.18,
        width * 0.48,
        height * 0.06,
      )
      ..lineTo(width * 0.48, height * 0.06);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
