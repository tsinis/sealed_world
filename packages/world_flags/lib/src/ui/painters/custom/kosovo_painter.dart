part of "../multi_element_painter.dart";

/// Painter for the Kosovo region.
final class KosovoPainter extends MultiElementPainter {
  /// Creates a new instance of [KosovoPainter].
  const KosovoPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final center = calculateCenter(size);
    final height = size.height * property.heightFactor;
    final width = size.width * (property.widthFactor ?? 1);

    final path =
        Path()
          ..moveTo(width * 0.51, height * 1.07)
          ..cubicTo(
            width * 0.5,
            height * 1.19,
            width * 0.55,
            height * 1.11,
            width * 0.56,
            height * 1.2,
          )
          ..cubicTo(
            width * 0.58,
            height * 1.24,
            width * 0.58,
            height * 1.34,
            width * 0.62,
            height * 1.33,
          )
          ..cubicTo(
            width * 0.61,
            height * 1.4,
            width * 0.61,
            height * 1.42,
            width * 0.63,
            height * 1.43,
          )
          ..cubicTo(
            width * 0.65,
            height * 1.41,
            width * 0.65,
            height * 1.45,
            width * 0.66,
            height * 1.47,
          )
          ..cubicTo(
            width * 0.67,
            height * 1.46,
            width * 0.68,
            height * 1.44,
            width * 0.68,
            height * 1.48,
          )
          ..cubicTo(
            width * 0.67,
            height * 1.57,
            width * 0.66,
            height * 1.66,
            width * 0.64,
            height * 1.7,
          )
          ..cubicTo(
            width * 0.61,
            height * 1.7,
            width * 0.69,
            height * 1.8,
            width * 0.63,
            height * 1.78,
          )
          ..cubicTo(
            width * 0.62,
            height * 1.73,
            width * 0.61,
            height * 1.81,
            width * 0.6,
            height * 1.81,
          )
          ..cubicTo(
            width * 0.59,
            height * 1.9,
            width * 0.58,
            height * 1.92,
            width * 0.56,
            height * 1.83,
          )
          ..cubicTo(
            width * 0.44,
            height * 1.87,
            width * 0.52,
            height * 2.04,
            width * 0.46,
            height * 2.06,
          )
          ..cubicTo(
            width * 0.44,
            height * 1.59,
            width * 0.4,
            height * 1.85,
            width * 0.38,
            height * 1.65,
          )
          ..cubicTo(
            width * 0.37,
            height * 1.61,
            width * 0.36,
            height * 1.59,
            width * 0.35,
            height * 1.56,
          )
          ..cubicTo(
            width * 0.36,
            height * 1.5,
            width * 0.35,
            height * 1.48,
            width * 0.33,
            height * 1.46,
          )
          ..cubicTo(
            width * 0.33,
            height * 1.4,
            width * 0.35,
            height * 1.38,
            width * 0.37,
            height * 1.41,
          )
          ..cubicTo(
            width * 0.38,
            height * 1.4,
            width * 0.39,
            height * 1.36,
            width * 0.41,
            height * 1.36,
          )
          ..cubicTo(
            width * 0.44,
            height * 1.36,
            width * 0.43,
            height * 1.33,
            width * 0.43,
            height * 1.27,
          )
          ..cubicTo(
            width * 0.45,
            height * 1.23,
            width * 0.46,
            height * 1.25,
            width * 0.47,
            height * 1.19,
          )
          ..cubicTo(
            width * 0.48,
            height * 1.17,
            width * 0.44,
            height * 1.13,
            width * 0.46,
            height * 1.1,
          )
          ..cubicTo(
            width * 0.48,
            height * 1.09,
            width * 0.49,
            height * 1.03,
            width * 0.51,
            height * 1.07,
          );

    canvas
      ..save()
      ..translate(center.dx - width / 2, center.dy - height / 2)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
