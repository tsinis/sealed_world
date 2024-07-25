part of "../multi_element_painter.dart";

final class ZmbPainter extends MultiElementPainter {
  const ZmbPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagZmbProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
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
      ..moveTo(width * 0.93, height * 0.25)
      ..cubicTo(
        width * 0.92,
        height * 0.24,
        width * 0.92,
        height * 0.25,
        width * 0.9,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.08,
        width * 0.92,
        height * 0.14,
        width * 0.88,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.97,
        0,
        width * 0.88,
        height * 0.1,
        width * 0.84,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.94,
        height * -0.04,
        width * 0.8,
        height * 0.17,
        width * 0.75,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.08,
        width * 0.65,
        height * 0.26,
        width * 0.63,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.31,
        width * 0.47,
        height * 0.28,
        width * 0.47,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.23,
        width * 0.5,
        height * 0.18,
        width * 0.5,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.11,
        width * 0.38,
        height * 0.03,
        width * 0.38,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.31,
        width * 0.1,
        height * -0.01,
        width * 0.19,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.14,
        width * -0.01,
        height * -0.07,
        width * 0.09,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.12,
        width * -0.01,
        0,
        width * 0.04,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.01,
        height * 0.11,
        width * -0.01,
        height * 0.16,
        width * 0.03,
        height * 0.25,
      )
      ..cubicTo(
        width * -0.02,
        height * 0.14,
        width * 0.01,
        height * 0.33,
        width * 0.1,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.39,
        width * 0.1,
        height * 0.45,
        width * 0.15,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.46,
        width * 0.16,
        height * 0.53,
        width * 0.19,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.51,
        width * 0.16,
        height * 0.58,
        width * 0.25,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.56,
        width * 0.23,
        height * 0.62,
        width * 0.27,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.63,
        width * 0.29,
        height * 0.63,
        width * 0.3,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.63,
        width * 0.29,
        height * 0.63,
        width * 0.29,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.66,
        width * 0.33,
        height * 0.64,
        width * 0.34,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.69,
        width * 0.36,
        height * 0.67,
        width * 0.38,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.71,
        width * 0.41,
        height * 0.73,
        width * 0.42,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.72,
        width * 0.42,
        height * 0.74,
        width * 0.42,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.73,
        width * 0.43,
        height * 0.73,
        width * 0.43,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.76,
        width * 0.41,
        height * 0.9,
        width * 0.44,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.86,
        width * 0.43,
        height * 0.87,
        width * 0.44,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.92,
        width * 0.38,
        height * 0.92,
        width * 0.39,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.38,
        height * 1.03,
        width * 0.4,
        height * 0.99,
        width * 0.42,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.41,
        height * 1.06,
        width * 0.43,
        height * 1.08,
        width * 0.45,
        height,
      )
      ..cubicTo(
        width * 0.47,
        height * 1.09,
        width * 0.46,
        height * 1.08,
        width * 0.47,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.48,
        height * 1.02,
        width * 0.48,
        height * 1.01,
        width * 0.48,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.98,
        width * 0.49,
        height * 0.98,
        width * 0.49,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.49,
        height * 1.01,
        width * 0.49,
        height * 1.04,
        width * 0.51,
        height * 1.05,
      )
      ..cubicTo(
        width * 0.51,
        height * 1.03,
        width * 0.5,
        height * 1.02,
        width * 0.51,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.98,
        width * 0.51,
        height * 0.91,
        width * 0.53,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.98,
        width * 0.53,
        height * 0.99,
        width * 0.53,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.57,
        height * 1.01,
        width * 0.52,
        height * 0.86,
        width * 0.55,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.94,
        width * 0.55,
        height * 0.88,
        width * 0.55,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.88,
        width * 0.53,
        height * 0.88,
        width * 0.53,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.92,
        width * 0.54,
        height * 0.82,
        width * 0.54,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.82,
        width * 0.56,
        height * 0.8,
        width * 0.54,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.76,
        width * 0.58,
        height * 0.81,
        width * 0.57,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.83,
        width * 0.63,
        height * 0.77,
        width * 0.59,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.75,
        width * 0.69,
        height * 0.8,
        width * 0.64,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.71,
        width * 0.69,
        height * 0.69,
        width * 0.67,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.67,
        width * 0.71,
        height * 0.65,
        width * 0.69,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.62,
        width * 0.75,
        height * 0.58,
        width * 0.76,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.52,
        width * 0.93,
        height * 0.33,
        width * 0.89,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.31,
        width * 0.93,
        height * 0.28,
        width * 0.93,
        height * 0.25,
      )
      ..lineTo(width * 0.93, height * 0.25)
      ..moveTo(width * 0.48, height * 0.91)
      ..cubicTo(
        width * 0.46,
        height * 0.9,
        width * 0.46,
        height * 0.87,
        width * 0.46,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.89,
        width * 0.47,
        height * 0.72,
        width * 0.48,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.74,
        width * 0.49,
        height * 0.86,
        width * 0.5,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.92,
        width * 0.49,
        height * 0.89,
        width * 0.48,
        height * 0.91,
      )
      ..lineTo(width * 0.48, height * 0.91);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
