part of "../multi_element_painter.dart";

final class UgaPainter extends MultiElementPainter {
  const UgaPainter(super.properties, super.aspectRatio);

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final width = size.width * (customProperties.widthFactor ?? 1);
    final height = size.height * customProperties.heightFactor;
    final center = calculateCenter(size);

    final path = Path()
      ..moveTo(width * 0.73, height * 0.62)
      ..cubicTo(
        width * 0.61,
        height * 0.58,
        width * 0.49,
        height * 0.54,
        width * 0.36,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.51,
        width * 0.33,
        height * 0.41,
        width * 0.39,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.33,
        width * 0.47,
        height * 0.28,
        width * 0.47,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.27,
        width * 0.55,
        height * 0.27,
        width * 0.55,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.23,
        width * 0.52,
        height * 0.21,
        width * 0.49,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.13,
        width * 0.28,
        height * 0.14,
        width * 0.2,
        height * 0.17,
      )
      ..lineTo(width * 0.26, height * 0.24)
      ..cubicTo(
        width * 0.22,
        height * 0.27,
        width * 0.23,
        height * 0.29,
        width * 0.24,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.3,
        width * 0.1,
        height * 0.32,
        width * 0.12,
        height * 0.34,
      )
      ..lineTo(width * 0.13, height * 0.34)
      ..cubicTo(
        width * 0.15,
        height * 0.34,
        width * 0.21,
        height * 0.34,
        width * 0.24,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.35,
        width * 0.2,
        height * 0.38,
        width * 0.24,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.41,
        width * 0.01,
        height * 0.61,
        width * 0.18,
        height * 0.69,
      )
      ..lineTo(width * 0.19, height * 0.68)
      ..cubicTo(
        width * 0.21,
        height * 0.7,
        width * 0.27,
        height * 0.74,
        width * 0.33,
        height * 0.75,
      )
      ..lineTo(width * 0.4, height * 0.79)
      ..cubicTo(
        width * 0.4,
        height * 0.81,
        width * 0.41,
        height * 0.86,
        width * 0.4,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.88,
        width * 0.04,
        height * 0.82,
        width * 0.08,
        height * 0.99,
      )
      ..lineTo(width * 0.11, height * 0.94)
      ..cubicTo(
        width * 0.11,
        height * 0.95,
        width * 0.12,
        height * 0.97,
        width * 0.14,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.96,
        width * 0.14,
        height * 0.94,
        width * 0.15,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.94,
        width * 0.17,
        height * 0.98,
        width * 0.19,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.88,
        width * 0.37,
        height * 0.91,
        width * 0.4,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.96,
        width * 0.42,
        height * 1.04,
        width * 0.41,
        height * 1.05,
      )
      ..cubicTo(
        width * 0.36,
        height * 1.05,
        width * 0.22,
        height * 1.05,
        width * 0.21,
        height * 1.08,
      )
      ..cubicTo(
        width * 0.26,
        height * 1.08,
        width * 0.31,
        height * 1.08,
        width * 0.33,
        height * 1.08,
      )
      ..cubicTo(
        width * 0.31,
        height * 1.1,
        width * 0.27,
        height * 1.13,
        width * 0.29,
        height * 1.15,
      )
      ..cubicTo(
        width * 0.35,
        height * 1.1,
        width * 0.46,
        height * 1.07,
        width * 0.6,
        height * 1.09,
      )
      ..cubicTo(
        width * 0.58,
        height * 1.05,
        width * 0.49,
        height * 1.05,
        width * 0.47,
        height * 1.05,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.87,
        width * 0.43,
        height * 0.92,
        width * 0.6,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.81,
        width * 0.46,
        height * 0.76,
        width * 0.69,
        height * 0.79,
      )
      ..lineTo(width * 0.72, height * 0.82)
      ..lineTo(width * 0.72, height * 0.82)
      ..cubicTo(
        width * 0.72,
        height * 0.83,
        width * 0.72,
        height * 0.84,
        width * 0.71,
        height * 0.85,
      )
      ..lineTo(width * 0.72, height * 0.85)
      ..cubicTo(
        width * 0.75,
        height * 0.84,
        width * 0.76,
        height * 0.82,
        width * 0.77,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.85,
        width * 0.74,
        height * 0.89,
        width * 0.67,
        height * 0.91,
      )
      ..lineTo(width * 0.69, height * 0.92)
      ..cubicTo(
        width * 0.67,
        height * 0.93,
        width * 0.67,
        height * 0.94,
        width * 0.74,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.94,
        width * 0.74,
        height * 0.94,
        width * 0.77,
        height * 0.93,
      )
      ..lineTo(width * 0.74, height * 0.96)
      ..lineTo(width * 0.74, height * 0.96)
      ..cubicTo(
        width * 0.99,
        height * 0.92,
        width,
        height * 0.65,
        width * 0.73,
        height * 0.62,
      )
      ..lineTo(width * 0.73, height * 0.62);

    final bounds = path.getBounds();

    canvas
      ..translate(
        center.dx - bounds.center.dx * 0.8,
        center.dy - bounds.center.dy,
      )
      ..drawPath(path, paintCreator(customColors.first));

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
