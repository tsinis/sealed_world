part of "../multi_element_painter.dart";

final class TklPainter extends MultiElementPainter {
  const TklPainter(super.properties, super.aspectRatio);

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final height = size.height * property.heightFactor;
    final width = size.width * (property.widthFactor ?? 1);

    final path = Path()
      ..moveTo(width * 0.17, height * 1.24)
      ..cubicTo(
        width * 0.16,
        height * 1.24,
        width * 0.27,
        height * 1.11,
        width * 0.36,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.72,
        width * 0.73,
        height * 0.38,
        width * 0.81,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.32,
        width * 0.79,
        height * 0.35,
        width * 0.79,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.58,
        width * 0.77,
        height * 0.98,
        width * 0.87,
        height * 1.18,
      )
      ..cubicTo(
        width * 0.9,
        height * 1.23,
        width * 0.9,
        height * 1.23,
        width * 0.96,
        height * 1.24,
      )
      ..lineTo(width * 0.96, height * 1.25)
      ..lineTo(width * 0.17, height * 1.24)
      ..moveTo(width * 0.16, height * 1.26)
      ..cubicTo(
        width * 0.16,
        height * 1.26,
        width * 0.15,
        height * 1.27,
        width * 0.15,
        height * 1.28,
      )
      ..lineTo(width * 0.16, height * 1.3)
      ..lineTo(width * 0.94, height * 1.32)
      ..lineTo(width * 0.96, height * 1.3)
      ..lineTo(width * 0.94, height * 1.27)
      ..lineTo(width * 0.16, height * 1.26);

    canvas
      ..save()
      ..translate(width * 0.03, -height * 0.23)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
