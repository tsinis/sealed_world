part of "../multi_element_painter.dart";

final class PngPainter extends MultiElementPainter {
  const PngPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagPngProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.5);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.89, height * 0.69)
      ..cubicTo(
        width * 0.88,
        height * 0.58,
        width * 0.85,
        height * 0.56,
        width * 0.84,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.52,
        width * 0.85,
        height * 0.54,
        width * 0.85,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.55,
        width * 0.85,
        height * 0.53,
        width * 0.85,
        height * 0.52,
      )
      ..lineTo(width * 0.9, height * 0.55)
      ..cubicTo(
        width * 0.91,
        height * 0.55,
        width * 0.88,
        height * 0.45,
        width * 0.86,
        height * 0.44,
      )
      ..lineTo(width * 0.88, height * 0.44)
      ..cubicTo(
        width * 0.89,
        height * 0.44,
        width * 0.82,
        height * 0.34,
        width * 0.8,
        height * 0.34,
      )
      ..lineTo(width * 0.83, height * 0.34)
      ..lineTo(width * 0.73, height * 0.27)
      ..cubicTo(
        width * 0.71,
        height * 0.27,
        width * 0.76,
        height * 0.25,
        width * 0.76,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.24,
        width * 0.65,
        height * 0.19,
        width * 0.55,
        height * 0.24,
      )
      ..lineTo(width * 0.61, height * 0.19)
      ..cubicTo(
        width * 0.57,
        height * 0.16,
        width * 0.61,
        height * 0.17,
        width * 0.61,
        height * 0.14,
      )
      ..lineTo(width * 0.59, height * 0.13)
      ..cubicTo(
        width * 0.59,
        height * 0.12,
        width * 0.64,
        height * 0.08,
        width * 0.59,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.09,
        width * 0.62,
        height * 0.04,
        width * 0.57,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.06,
        width * 0.61,
        height * 0.01,
        width * 0.6,
        0,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.11,
        width * 0.49,
        height * 0.25,
        width * 0.42,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.3,
        width * 0.35,
        height * 0.26,
        width * 0.33,
        height * 0.24,
      )
      ..lineTo(width * 0.25, height * 0.25)
      ..lineTo(width * 0.17, height * 0.25)
      ..cubicTo(
        width * 0.18,
        height * 0.25,
        width * 0.26,
        height * 0.28,
        width * 0.26,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.3,
        width * 0.36,
        height * 0.33,
        width * 0.34,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.38,
        width * 0.21,
        height * 0.28,
        width * 0.1,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.44,
        width * -0.03,
        height * 0.6,
        width * 0.07,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.57,
        width * 0.08,
        height * 0.52,
        width * 0.12,
        height * 0.51,
      )
      ..lineTo(width * 0.12, height * 0.54)
      ..lineTo(width * 0.15, height * 0.52)
      ..cubicTo(
        width * 0.15,
        height * 0.52,
        width * 0.15,
        height * 0.54,
        width * 0.15,
        height * 0.55,
      )
      ..lineTo(width * 0.21, height * 0.51)
      ..lineTo(width * 0.21, height * 0.55)
      ..cubicTo(
        width * 0.25,
        height * 0.53,
        width * 0.27,
        height * 0.46,
        width * 0.26,
        height * 0.55,
      )
      ..lineTo(width * 0.32, height * 0.49)
      ..cubicTo(
        width * 0.31,
        height * 0.56,
        width * 0.39,
        height * 0.66,
        width * 0.45,
        height * 0.68,
      )
      ..lineTo(width * 0.45, height * 0.64)
      ..lineTo(width * 0.51, height * 0.68)
      ..lineTo(width * 0.51, height * 0.66)
      ..cubicTo(
        width * 0.53,
        height * 0.68,
        width * 0.58,
        height * 0.75,
        width * 0.69,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.76,
        width * 0.67,
        height * 0.74,
        width * 0.66,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.73,
        width * 0.7,
        height * 0.75,
        width * 0.71,
        height * 0.74,
      )
      ..lineTo(width * 0.65, height * 0.67)
      ..lineTo(width * 0.68, height * 0.67)
      ..lineTo(width * 0.63, height * 0.59)
      ..cubicTo(
        width * 0.63,
        height * 0.58,
        width * 0.64,
        height * 0.59,
        width * 0.65,
        height * 0.59,
      )
      ..lineTo(width * 0.63, height * 0.53)
      ..cubicTo(
        width * 0.64,
        height * 0.52,
        width * 0.72,
        height * 0.59,
        width * 0.71,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.58,
        width * 0.81,
        height * 0.63,
        width * 0.86,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.85,
        height * 0.8,
        width * 0.75,
        height * 0.88,
        width * 0.64,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.91,
        width * 0.87,
        height * 0.88,
        width * 0.89,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.91,
        width * 0.83,
        height * 1.01,
        width * 0.73,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.87,
        height * 1.07,
        width * 1.04,
        height * 0.86,
        width * 0.89,
        height * 0.69,
      )
      ..lineTo(width * 0.89, height * 0.69);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
