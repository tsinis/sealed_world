import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class SvkPainter extends CustomElementsPainter {
  const SvkPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagSvkProperties.aspectRatio;

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
      ..moveTo(width * 0.97, height * 0.02)
      ..cubicTo(
        width * 0.97,
        height * 0.02,
        width * 0.98,
        height * 0.17,
        width * 0.98,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.76,
        width * 0.71,
        height * 0.91,
        width * 0.51,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.91,
        width * 0.03,
        height * 0.76,
        width * 0.03,
        height * 0.46,
      )
      ..lineTo(width * 0.05, height * 0.02)
      ..lineTo(width * 0.97, height * 0.02)
      ..lineTo(width * 0.97, height * 0.02);

    final path2 = Path()
      ..moveTo(width * 0.47, height * 0.82)
      ..lineTo(width * 0.47, height * 0.45)
      ..cubicTo(
        width * 0.32,
        height * 0.45,
        width * 0.27,
        height * 0.46,
        width * 0.23,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.44,
        width * 0.23,
        height * 0.4,
        width * 0.23,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.37,
        width * 0.32,
        height * 0.38,
        width * 0.47,
        height * 0.38,
      )
      ..lineTo(width * 0.47, height * 0.28)
      ..cubicTo(
        width * 0.42,
        height * 0.28,
        width * 0.35,
        height * 0.28,
        width * 0.28,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.27,
        width * 0.28,
        height * 0.23,
        width * 0.28,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.21,
        width * 0.42,
        height * 0.21,
        width * 0.47,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.18,
        width * 0.46,
        height * 0.12,
        width * 0.44,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.07,
        width * 0.53,
        height * 0.07,
        width * 0.57,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.12,
        width * 0.55,
        height * 0.18,
        width * 0.55,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.21,
        width * 0.68,
        height * 0.21,
        width * 0.74,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.23,
        width * 0.73,
        height * 0.27,
        width * 0.74,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.29,
        width * 0.61,
        height * 0.28,
        width * 0.55,
        height * 0.28,
      )
      ..lineTo(width * 0.55, height * 0.38)
      ..cubicTo(
        width * 0.7,
        height * 0.38,
        width * 0.74,
        height * 0.37,
        width * 0.79,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.4,
        width * 0.78,
        height * 0.44,
        width * 0.79,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.46,
        width * 0.7,
        height * 0.45,
        width * 0.55,
        height * 0.45,
      )
      ..lineTo(width * 0.55, height * 0.82)
      ..lineTo(width * 0.47, height * 0.82)
      ..lineTo(width * 0.47, height * 0.82);

    final path3 = Path()
      ..moveTo(width * 0.51, height * 0.99)
      ..cubicTo(
        width * 0.66,
        height * 0.93,
        width * 0.79,
        height * 0.85,
        width * 0.88,
        height * 0.74,
      )
      ..lineTo(width * 0.88, height * 0.74)
      ..cubicTo(
        width * 0.82,
        height * 0.64,
        width * 0.72,
        height * 0.62,
        width * 0.65,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.68,
        width * 0.63,
        height * 0.67,
        width * 0.62,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.56,
        width * 0.43,
        height * 0.58,
        width * 0.36,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.67,
        width * 0.3,
        height * 0.65,
        width * 0.26,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.65,
        width * 0.16,
        height * 0.69,
        width * 0.13,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.85,
        width * 0.36,
        height * 0.93,
        width * 0.51,
        height * 0.99,
      )
      ..lineTo(width * 0.51, height * 0.99);

    final path4 = Path()
      ..moveTo(width * 0.51, height)
      ..lineTo(width * 0.5, height)
      ..cubicTo(
        width * 0.38,
        height * 0.96,
        width * 0.27,
        height * 0.89,
        width * 0.18,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.72,
        width * 0.01,
        height * 0.59,
        width * 0.02,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.17,
        width * 0.03,
        height * 0.02,
        width * 0.03,
        height * 0.02,
      )
      ..lineTo(width * 0.03, 0)
      ..lineTo(width * 0.98, 0)
      ..lineTo(width * 0.98, height * 0.02)
      ..cubicTo(
        width * 0.98,
        height * 0.02,
        width,
        height * 0.17,
        width,
        height * 0.46,
      )
      ..cubicTo(
        width,
        height * 0.59,
        width * 0.94,
        height * 0.72,
        width * 0.83,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.89,
        width * 0.63,
        height * 0.96,
        width * 0.51,
        height,
      )
      ..lineTo(width * 0.51, height)
      ..lineTo(width * 0.51, height)
      ..moveTo(width * 0.07, height * 0.03)
      ..cubicTo(
        width * 0.06,
        height * 0.07,
        width * 0.05,
        height * 0.22,
        width * 0.05,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.58,
        width * 0.11,
        height * 0.7,
        width * 0.21,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.87,
        width * 0.4,
        height * 0.93,
        width * 0.51,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.93,
        width * 0.72,
        height * 0.87,
        width * 0.81,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.7,
        width * 0.97,
        height * 0.58,
        width * 0.97,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.22,
        width * 0.95,
        height * 0.07,
        width * 0.95,
        height * 0.03,
      )
      ..lineTo(width * 0.07, height * 0.03)
      ..lineTo(width * 0.07, height * 0.03);

    final bounds = path4.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator(customColors.first)) // Red.
      ..drawPath(path2, paintCreator()) // White.
      ..drawPath(path3, paintCreator(customColors.last)) // Blue.
      ..drawPath(path4, paintCreator()) // White.
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
