part of "../multi_element_painter.dart";

final class TkmPainter extends MultiElementPainter {
  const TkmPainter(super.properties, super.aspectRatio);

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final horizontal = (customProperties.offset.dx + 1) * size.width / 2;
    final vertical = (customProperties.offset.dy + 1) * size.height / 2;
    final center = Offset(horizontal, vertical);
    final height = size.height * customProperties.heightFactor;
    final width = size.width * (customProperties.widthFactor ?? 1);

    final path = Path()
      ..moveTo(width * 0.29, height * 0.27)
      ..lineTo(width * 0.01, height * 0.19)
      ..lineTo(width * 0.01, height * 0.13)
      ..lineTo(width * 0.5, 0)
      ..lineTo(width * 0.71, 0)
      ..lineTo(width * 0.99, height * 0.08)
      ..lineTo(width * 0.99, height * 0.13)
      ..lineTo(width * 0.5, height * 0.27)
      ..lineTo(width * 0.29, height * 0.27)
      ..lineTo(width * 0.29, height * 0.27);

    final path2 = Path()
      ..moveTo(width * 0.5, 0)
      ..lineTo(width * 0.29, 0)
      ..lineTo(width * 0.01, height * 0.08)
      ..lineTo(width * 0.01, height * 0.13)
      ..lineTo(width * 0.5, height * 0.13)
      ..lineTo(width * 0.5, 0)
      ..lineTo(width * 0.5, 0)
      ..moveTo(width * 0.5, height * 0.27)
      ..lineTo(width * 0.71, height * 0.27)
      ..lineTo(width * 0.99, height * 0.19)
      ..lineTo(width * 0.99, height * 0.13)
      ..lineTo(width * 0.5, height * 0.13)
      ..lineTo(width * 0.5, height * 0.27)
      ..lineTo(width * 0.5, height * 0.27);

    final path3 = Path()
      ..moveTo(width * 0.29, height * 0.97)
      ..lineTo(width * 0.01, height * 0.89)
      ..lineTo(width * 0.01, height * 0.78)
      ..lineTo(width * 0.29, height * 0.7)
      ..lineTo(width * 0.71, height * 0.7)
      ..lineTo(width * 0.99, height * 0.78)
      ..lineTo(width * 0.99, height * 0.89)
      ..lineTo(width * 0.71, height * 0.97)
      ..lineTo(width * 0.29, height * 0.97)
      ..lineTo(width * 0.29, height * 0.97)
      ..moveTo(width, height * 1.14)
      ..lineTo(width * 0.87, height * 1.14)
      ..lineTo(width * 0.87, height * 1.09)
      ..lineTo(width * 0.65, height * 1.09)
      ..lineTo(width * 0.5, height * 1.04)
      ..lineTo(width * 0.35, height * 1.09)
      ..lineTo(width * 0.13, height * 1.09)
      ..lineTo(width * 0.13, height * 1.14)
      ..lineTo(0, height * 1.14)
      ..lineTo(0, height * 1.23)
      ..lineTo(width * 0.13, height * 1.23)
      ..lineTo(width * 0.13, height * 1.28)
      ..lineTo(width * 0.35, height * 1.28)
      ..lineTo(width * 0.5, height * 1.34)
      ..lineTo(width * 0.65, height * 1.28)
      ..lineTo(width * 0.87, height * 1.28)
      ..lineTo(width * 0.87, height * 1.23)
      ..lineTo(width, height * 1.23)
      ..lineTo(width, height * 1.14)
      ..lineTo(width, height * 1.14)
      ..moveTo(width, height * 0.44)
      ..lineTo(width * 0.87, height * 0.44)
      ..lineTo(width * 0.87, height * 0.39)
      ..lineTo(width * 0.65, height * 0.39)
      ..lineTo(width * 0.5, height * 0.34)
      ..lineTo(width * 0.35, height * 0.39)
      ..lineTo(width * 0.13, height * 0.39)
      ..lineTo(width * 0.13, height * 0.44)
      ..lineTo(0, height * 0.44)
      ..lineTo(0, height * 0.53)
      ..lineTo(width * 0.13, height * 0.53)
      ..lineTo(width * 0.13, height * 0.58)
      ..lineTo(width * 0.35, height * 0.58)
      ..lineTo(width * 0.5, height * 0.63)
      ..lineTo(width * 0.65, height * 0.58)
      ..lineTo(width * 0.87, height * 0.58)
      ..lineTo(width * 0.87, height * 0.53)
      ..lineTo(width, height * 0.53)
      ..lineTo(width, height * 0.44)
      ..lineTo(width, height * 0.44);

    final path4 = Path()
      ..moveTo(width * 0.36, height * 0.78)
      ..lineTo(width * 0.64, height * 0.78)
      ..lineTo(width * 0.64, height * 0.89)
      ..lineTo(width * 0.36, height * 0.89)
      ..lineTo(width * 0.36, height * 0.78)
      ..lineTo(width * 0.36, height * 0.78)
      ..moveTo(width * 0.5, height * 0.54)
      ..cubicTo(
        width * 0.61,
        height * 0.54,
        width * 0.68,
        height * 0.49,
        width * 0.62,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.44,
        width * 0.55,
        height * 0.43,
        width * 0.5,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.43,
        width * 0.32,
        height * 0.47,
        width * 0.38,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.53,
        width * 0.45,
        height * 0.54,
        width * 0.5,
        height * 0.54,
      )
      ..lineTo(width * 0.5, height * 0.54)
      ..moveTo(width * 0.5, height * 1.24)
      ..cubicTo(
        width * 0.61,
        height * 1.24,
        width * 0.68,
        height * 1.2,
        width * 0.62,
        height * 1.16,
      )
      ..cubicTo(
        width * 0.6,
        height * 1.15,
        width * 0.55,
        height * 1.14,
        width * 0.5,
        height * 1.14,
      )
      ..cubicTo(
        width * 0.39,
        height * 1.14,
        width * 0.32,
        height * 1.18,
        width * 0.38,
        height * 1.21,
      )
      ..cubicTo(
        width * 0.4,
        height * 1.23,
        width * 0.45,
        height * 1.24,
        width * 0.5,
        height * 1.24,
      )
      ..lineTo(width * 0.5, height * 1.24);

    final path5 = Path()
      ..moveTo(width * 0.29, height * 1.67)
      ..lineTo(width * 0.01, height * 1.59)
      ..lineTo(width * 0.01, height * 1.54)
      ..lineTo(width * 0.5, height * 1.4)
      ..lineTo(width * 0.71, height * 1.4)
      ..lineTo(width * 0.99, height * 1.48)
      ..lineTo(width * 0.99, height * 1.54)
      ..lineTo(width * 0.5, height * 1.67)
      ..lineTo(width * 0.29, height * 1.67)
      ..lineTo(width * 0.29, height * 1.67);

    final path6 = Path()
      ..moveTo(width * 0.5, height * 1.4)
      ..lineTo(width * 0.29, height * 1.4)
      ..lineTo(width * 0.01, height * 1.48)
      ..lineTo(width * 0.01, height * 1.54)
      ..lineTo(width * 0.5, height * 1.54)
      ..lineTo(width * 0.5, height * 1.4)
      ..lineTo(width * 0.5, height * 1.4)
      ..moveTo(width * 0.5, height * 1.67)
      ..lineTo(width * 0.71, height * 1.67)
      ..lineTo(width * 0.99, height * 1.59)
      ..lineTo(width * 0.99, height * 1.54)
      ..lineTo(width * 0.5, height * 1.54)
      ..lineTo(width * 0.5, height * 1.67)
      ..lineTo(width * 0.5, height * 1.67);

    final bounds = path.getBounds();
    final compensation = -size.height / 40;
    final rect = Rect.fromLTWH(
      bounds.left + compensation,
      compensation * 1.2,
      bounds.width - compensation * 2,
      size.height,
    );
    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawRect(rect, paintCreator(customColors[1])) // Red.
      ..drawPath(path, paintCreator(customColors.first)) // White.
      ..drawPath(path2, paintCreator(customColors[3])) // Yellow.
      ..drawPath(path3, paintCreator(customProperties.mainColor)) // Green.
      ..drawPath(path4, paintCreator(customColors[1])) // Red.
      ..drawPath(path5, paintCreator(customColors.first)) // White.
      ..drawPath(path6, paintCreator(customColors[3])) // Yellow.
      ..restore();

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
