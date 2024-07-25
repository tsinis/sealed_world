part of "../multi_element_painter.dart";

final class TjkPainter extends MultiElementPainter {
  const TjkPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagTjkProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.76, height * 0.71)
      ..cubicTo(
        width * 0.67,
        height * 0.85,
        width * 0.54,
        height * 0.78,
        width * 0.52,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.56,
        width * 0.51,
        height * 0.55,
        width * 0.51,
        height * 0.54,
      )
      ..lineTo(width * 0.51, height * 0.32)
      ..cubicTo(
        width * 0.51,
        height * 0.25,
        width * 0.55,
        height * 0.21,
        width * 0.58,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.25,
        width * 0.6,
        height * 0.26,
        width * 0.6,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.12,
        width * 0.55,
        height * -0.02,
        width * 0.47,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.05,
        width * 0.37,
        height * 0.17,
        width * 0.39,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.22,
        width * 0.45,
        height * 0.22,
        width * 0.47,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.3,
        width * 0.48,
        height * 0.31,
        width * 0.48,
        height * 0.32,
      )
      ..lineTo(width * 0.48, height * 0.54)
      ..cubicTo(
        width * 0.47,
        height * 0.75,
        width * 0.34,
        height * 0.86,
        width * 0.25,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.73,
        width * 0.24,
        height * 0.72,
        width * 0.23,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.88,
        width * 0.08,
        height * 0.95,
        0,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.01,
        height * 1.1,
        width * 0.23,
        height * 1.05,
        width * 0.24,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.31,
        height * 1.01,
        width * 0.45,
        height * 0.95,
        width * 0.49,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.95,
        width * 0.68,
        height * 1.01,
        width * 0.75,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.76,
        height * 1.05,
        width * 0.97,
        height * 1.1,
        width * 0.99,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.85,
        width * 0.97,
        height * 0.86,
        width * 0.96,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.93,
        width * 0.79,
        height * 0.86,
        width * 0.76,
        height * 0.71,
      )
      ..lineTo(width * 0.76, height * 0.71);

    final path2 = Path()
      ..moveTo(width * 0.34, height)
      ..cubicTo(
        width * 0.34,
        height,
        width * 0.32,
        height * 0.98,
        width * 0.29,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.96,
        width * 0.27,
        height * 0.93,
        width * 0.26,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.93,
        width * 0.24,
        height * 0.98,
        width * 0.24,
        height * 1.01,
      )
      ..lineTo(width * 0.2, height * 1.04)
      ..cubicTo(
        width * 0.25,
        height * 1.14,
        width * 0.31,
        height * 1.12,
        width * 0.34,
        height,
      )
      ..lineTo(width * 0.34, height)
      ..moveTo(width * 0.57, height * 0.99)
      ..cubicTo(
        width * 0.57,
        height * 0.99,
        width * 0.55,
        height * 0.97,
        width * 0.52,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.93,
        width * 0.51,
        height * 0.9,
        width * 0.5,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.9,
        width * 0.47,
        height * 0.93,
        width * 0.47,
        height * 0.97,
      )
      ..lineTo(width * 0.42, height * 0.99)
      ..cubicTo(
        width * 0.47,
        height * 1.1,
        width * 0.52,
        height * 1.1,
        width * 0.57,
        height * 0.99,
      )
      ..lineTo(width * 0.57, height * 0.99)
      ..moveTo(width * 0.73, height * 0.91)
      ..cubicTo(
        width * 0.72,
        height * 0.93,
        width * 0.7,
        height * 0.96,
        width * 0.7,
        height,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.99,
        width * 0.67,
        height * 0.99,
        width * 0.65,
        height,
      )
      ..cubicTo(
        width * 0.69,
        height * 1.12,
        width * 0.75,
        height * 1.14,
        width * 0.79,
        height * 1.04,
      )
      ..cubicTo(
        width * 0.79,
        height * 1.04,
        width * 0.78,
        height * 1.02,
        width * 0.75,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.97,
        width * 0.74,
        height * 0.94,
        width * 0.73,
        height * 0.91,
      )
      ..lineTo(width * 0.73, height * 0.91);

    final path3 = Path()
      ..moveTo(width * 0.11, height * 1.21)
      ..lineTo(width * 0.13, height * 1.32)
      ..cubicTo(
        width * 0.37,
        height * 1.19,
        width * 0.62,
        height * 1.19,
        width * 0.86,
        height * 1.32,
      )
      ..lineTo(width * 0.88, height * 1.21)
      ..cubicTo(
        width * 0.63,
        height * 1.07,
        width * 0.36,
        height * 1.07,
        width * 0.11,
        height * 1.21,
      )
      ..lineTo(width * 0.11, height * 1.21);

    final bounds = path.getBounds();
    final paint = paintCreator();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paint)
      ..drawPath(path2, paint)
      ..drawPath(path3, paint)
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
