part of "../multi_element_painter.dart";

final class SimpleShieldPainter extends MultiElementPainter {
  const SimpleShieldPainter.outlinedWithDividers(
    super.properties,
    super.aspectRatio,
  )   : _showDividers = true,
        _showOutline = true;
  const SimpleShieldPainter.outlinedWithoutDividers(
    super.properties,
    super.aspectRatio,
  )   : _showDividers = false,
        _showOutline = true;

  const SimpleShieldPainter.withDividers(
    super.properties,
    super.aspectRatio,
  )   : _showDividers = true,
        _showOutline = false;
  const SimpleShieldPainter.withoutDividers(
    super.properties,
    super.aspectRatio,
  )   : _showDividers = false,
        _showOutline = false;

  final bool _showDividers;
  final bool _showOutline;

  static const _fallback = Color(0x00000000);
  static const _lineFactor = 0.2;

  @override
  double get originalAspectRatio => FlagConstants.defaultAspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, parent: parent);
    final parentChild = parent?.child;
    final thisProperty = parentChild ?? property;
    final otherColors = (thisProperty is CustomElementsProperties?)
        ? (thisProperty as CustomElementsProperties?)?.otherColors
        : properties
            .whereType<CustomElementsProperties>()
            .firstOrNull
            ?.otherColors;
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final strokeWidth = height * _lineFactor;
    final width = adjustedSize.width;
    final half = height * 0.5;
    final halfWidth = width * 0.5;
    final path = Path();
    final paint = Paint();

    canvas.save();
    canvas.translate(center.dx - halfWidth, center.dy - half);

    path.moveTo(0, half);
    path.cubicTo(0, height * 0.8, halfWidth, height, halfWidth, height);
    path.cubicTo(halfWidth, height, width, height * 0.8, width, half);
    path.lineTo(width, height * 0.07);
    path.cubicTo(width, height * 0.07, width * 0.7, 0, halfWidth, 0);
    path.lineTo(0, height * 0.07);
    path.lineTo(0, half);

    if (_showOutline) {
      paint
        ..color = otherColors?.last ?? _fallback
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;
      canvas.drawPath(path, paint);
    }

    paint.style = PaintingStyle.fill;
    canvas
      ..drawPath(path, paint)
      ..saveLayer(Rect.fromLTWH(0, 0, height, height), Paint())
      ..clipPath(path);

    paint.color = otherColors?.elementAtOrNull(1) ?? _fallback;
    canvas.drawRect(Rect.fromLTWH(0, 0, halfWidth, half), paint);
    paint.color = otherColors?.elementAtOrNull(2) ?? paint.color;
    canvas.drawRect(Rect.fromLTWH(halfWidth, 0, halfWidth, half), paint);
    paint.color = otherColors?.elementAtOrNull(3) ?? paint.color;
    canvas.drawRect(Rect.fromLTWH(0, half, halfWidth, half), paint);
    paint.color = otherColors?.elementAtOrNull(4) ?? paint.color;
    canvas
      ..drawRect(Rect.fromLTWH(halfWidth, half, halfWidth, half), paint)
      ..restore();

    if (_showDividers) {
      canvas.clipPath(path);
      paint.color = property.mainColor;
      paint.strokeWidth = half * 0.2;
      canvas.drawLine(Offset(halfWidth, 0), Offset(halfWidth, height), paint);
      canvas.drawLine(Offset(0, half), Offset(width, half), paint);
    }
    canvas.restore();

    return (bounds: path.getBounds(), canvas: canvas, child: parentChild);
  }
}
