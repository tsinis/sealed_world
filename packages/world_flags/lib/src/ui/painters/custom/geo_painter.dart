part of "../multi_element_painter.dart";

/// Painter for the Georgia flag.
final class GeoPainter extends MultiElementPainter {
  /// Creates a new instance of [GeoPainter].
  const GeoPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final center = calculateCenter(size);
    final dimension = size.height / 5;

    final vertical =
        Path()
          ..moveTo(dimension * 0.33, 0)
          ..cubicTo(
            dimension * 0.44,
            dimension * 0.02,
            dimension * 0.55,
            dimension * 0.02,
            dimension * 0.67,
            0,
          )
          ..cubicTo(
            dimension * 0.6,
            dimension * 0.33,
            dimension * 0.6,
            dimension * 0.67,
            dimension * 0.67,
            dimension,
          )
          ..cubicTo(
            dimension * 0.55,
            dimension * 0.98,
            dimension * 0.44,
            dimension * 0.98,
            dimension * 0.33,
            dimension,
          )
          ..cubicTo(
            dimension * 0.39,
            dimension * 0.67,
            dimension * 0.39,
            dimension * 0.33,
            dimension * 0.33,
            0,
          )
          ..lineTo(dimension * 0.33, 0);

    final horizontal =
        Path()
          ..moveTo(dimension, dimension * 0.33)
          ..cubicTo(
            dimension * 0.98,
            dimension * 0.44,
            dimension * 0.98,
            dimension * 0.55,
            dimension,
            dimension * 0.67,
          )
          ..cubicTo(
            dimension * 0.67,
            dimension * 0.6,
            dimension * 0.33,
            dimension * 0.6,
            0,
            dimension * 0.67,
          )
          ..cubicTo(
            dimension * 0.02,
            dimension * 0.55,
            dimension * 0.02,
            dimension * 0.44,
            0,
            dimension * 0.33,
          )
          ..cubicTo(
            dimension * 0.33,
            dimension * 0.39,
            dimension * 0.67,
            dimension * 0.39,
            dimension,
            dimension * 0.33,
          )
          ..lineTo(dimension, dimension * 0.33);

    final paint = paintCreator();
    for (final prop in properties.skip(1)) {
      final offsetY = center.dy + (prop.offset.dy * size.height / 2);
      // ignore: avoid-similar-names, Horizontal is already defined.
      final offsetX =
          center.dx +
          (prop.offset.dx * size.width / 2 / aspectRatio) -
          dimension / 2;

      canvas
        ..save()
        ..translate(offsetX, offsetY)
        ..drawPath(vertical, paint)
        ..drawPath(horizontal, paint)
        ..restore();
    }

    return null;
  }
}
