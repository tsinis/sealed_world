part of "../multi_element_painter.dart";

/// Painter for the Kazakhstan flag.
final class KazPainter extends MultiElementPainter {
  /// Creates a new instance of [KazPainter].
  const KazPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagKazProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.93, height * 0.01)
      ..cubicTo(
        width * 0.91,
        height * -0.01,
        width * 0.89,
        height * 0.02,
        width * 0.89,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.37,
        width * 0.63,
        height * 0.45,
        width * 0.51,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.46,
        width * 0.12,
        height * 0.36,
        width * 0.12,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.12,
        height * 0.02,
        width * 0.09,
        0,
        width * 0.07,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.01,
        height * 0.08,
        width * -0.01,
        height * 0.21,
        0,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.58,
        width * 0.17,
        height * 0.75,
        width * 0.29,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.87,
        width * 0.28,
        height * 0.91,
        width * 0.27,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.27,
        height * 1.01,
        width * 0.31,
        height * 1.02,
        width * 0.32,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.89,
        width * 0.5,
        height * 0.84,
        width * 0.58,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.84,
        width * 0.62,
        height * 0.73,
        width * 0.58,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.73,
        width * 0.42,
        height * 0.76,
        width * 0.35,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.7,
        width * 0.44,
        height * 0.57,
        width * 0.51,
        height * 0.56,
      )
      ..lineTo(width * 0.51, height * 0.56)
      ..cubicTo(
        width * 0.65,
        height * 0.57,
        width * 0.88,
        height * 0.46,
        width * 0.93,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.23,
        width * 0.94,
        height * 0.29,
        width * 0.93,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.54,
        width * 0.8,
        height * 0.62,
        width * 0.71,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.69,
        width * 0.68,
        height * 0.81,
        width * 0.72,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.71,
        width * 0.94,
        height * 0.61,
        width * 0.99,
        height * 0.37,
      )
      ..cubicTo(
        width * 1.01,
        height * 0.24,
        width * 0.99,
        height * 0.09,
        width * 0.93,
        height * 0.01,
      )
      ..lineTo(width * 0.93, height * 0.01)
      ..moveTo(width * 0.31, height * 0.72)
      ..cubicTo(
        width * 0.21,
        height * 0.66,
        width * 0.14,
        height * 0.56,
        width * 0.08,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.33,
        width * 0.05,
        height * 0.24,
        width * 0.07,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.11,
        height * 0.39,
        width * 0.26,
        height * 0.5,
        width * 0.39,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.59,
        width * 0.33,
        height * 0.65,
        width * 0.31,
        height * 0.72,
      )
      ..lineTo(width * 0.31, height * 0.72);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
