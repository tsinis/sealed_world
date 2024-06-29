part of "../multi_element_painter.dart";

final class CustomDiagonalPainter extends MultiElementPainter {
  const CustomDiagonalPainter.vertical(super.properties, super.aspectRatio)
      : _isHorizontal = false;
  const CustomDiagonalPainter.horizontal(super.properties, super.aspectRatio)
      : _isHorizontal = true;

  final bool _isHorizontal;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    final height = size.height;
    final width = size.width;
    final mainLineFactor = property.heightFactor;
    final outlineColor = otherColors?.firstOrNull;

    final path = Path()..moveTo(0, height);
    if (_isHorizontal) {
      path.lineTo(0, height - (height * mainLineFactor));
      path.lineTo(width, 0);
      path.lineTo(width, height * mainLineFactor);
    } else {
      path.lineTo(width * mainLineFactor, height);
      path.lineTo(width, 0);
      path.lineTo(width - (width * mainLineFactor), 0);
    }
    path.close();

    if (outlineColor != null) {
      final strokeWidth = (property.widthFactor ?? 1) * height;
      canvas.drawPath(
        path,
        Paint()
          ..color = outlineColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth,
      );
    }
    canvas.drawPath(path, colorPaint);

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
