part of "../multi_element_painter.dart";

/// Painter for the Iran flag.
final class IrnPainter extends MultiElementPainter {
  /// Creates a new instance of [IrnPainter].
  const IrnPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagIrnProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.76, height * 0.78)
      ..cubicTo(
        width * 0.81,
        height * 0.59,
        width * 0.76,
        height * 0.38,
        width * 0.64,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.49,
        width * 0.72,
        height * 0.83,
        width * 0.54,
        height * 1.01,
      )
      ..lineTo(width * 0.55, height * 0.59)
      ..lineTo(width * 0.55, height * 0.26)
      ..cubicTo(
        width * 0.53,
        height * 0.25,
        width * 0.51,
        height * 0.23,
        width * 0.5,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.23,
        width * 0.47,
        height * 0.25,
        width * 0.45,
        height * 0.26,
      )
      ..lineTo(width * 0.45, height * 0.59)
      ..lineTo(width * 0.46, height * 1.01)
      ..cubicTo(
        width * 0.28,
        height * 0.83,
        width * 0.23,
        height * 0.49,
        width * 0.36,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.47,
        width * 0.19,
        height * 0.91,
        width * 0.43,
        height * 1.08,
      )
      ..cubicTo(
        width * 0.38,
        height * 1.1,
        width * 0.32,
        height * 1.12,
        width * 0.26,
        height * 1.11,
      )
      ..cubicTo(
        width * 0.33,
        height * 1.14,
        width * 0.4,
        height * 1.15,
        width * 0.47,
        height * 1.13,
      )
      ..lineTo(width * 0.47, height * 1.14)
      ..lineTo(width * 0.5, height * 1.2)
      ..lineTo(width * 0.53, height * 1.15)
      ..lineTo(width * 0.53, height * 1.13)
      ..cubicTo(
        width * 0.6,
        height * 1.14,
        width * 0.67,
        height * 1.14,
        width * 0.74,
        height * 1.11,
      )
      ..cubicTo(
        width * 0.68,
        height * 1.12,
        width * 0.62,
        height * 1.1,
        width * 0.57,
        height * 1.08,
      )
      ..cubicTo(
        width * 0.66,
        height * 1.02,
        width * 0.73,
        height * 0.92,
        width * 0.76,
        height * 0.79,
      )
      ..lineTo(width * 0.76, height * 0.78);
    final path2 = Path()
      ..moveTo(width * 0.89, height * 0.43)
      ..cubicTo(
        width * 0.84,
        height * 0.33,
        width * 0.77,
        height * 0.26,
        width * 0.68,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.41,
        width * 0.91,
        height * 0.77,
        width * 0.77,
        height * 1.01,
      )
      ..lineTo(width * 0.77, height * 1.01)
      ..cubicTo(
        width * 0.92,
        height * 0.9,
        width * 0.98,
        height * 0.63,
        width * 0.89,
        height * 0.43,
      )
      ..lineTo(width * 0.89, height * 0.43)
      ..moveTo(width * 0.32, height * 0.23)
      ..cubicTo(
        width * 0.07,
        height * 0.31,
        width * -0.01,
        height * 0.7,
        width * 0.16,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.97,
        width * 0.21,
        height * 0.99,
        width * 0.24,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.77,
        width * 0.13,
        height * 0.42,
        width * 0.32,
        height * 0.23,
      )
      ..lineTo(width * 0.32, height * 0.23)
      ..moveTo(width * 0.41, height * 0.2)
      ..cubicTo(
        width * 0.44,
        height * 0.22,
        width * 0.48,
        height * 0.22,
        width * 0.5,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.23,
        width * 0.59,
        height * 0.21,
        width * 0.61,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.14,
        width * 0.61,
        height * 0.12,
        width * 0.61,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.16,
        width * 0.54,
        height * 0.18,
        width * 0.51,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.14,
        width * 0.5,
        height * 0.13,
        width * 0.5,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.18,
        width * 0.42,
        height * 0.18,
        width * 0.4,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.12,
        width * 0.39,
        height * 0.11,
        width * 0.39,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.14,
        width * 0.39,
        height * 0.18,
        width * 0.41,
        height * 0.2,
      )
      ..lineTo(width * 0.41, height * 0.2);

    final bounds = path.getBounds();
    final paint = paintCreator();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paint)
      ..drawPath(path2, paint)
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
