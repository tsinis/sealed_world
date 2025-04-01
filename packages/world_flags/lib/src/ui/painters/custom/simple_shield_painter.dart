part of "../multi_element_painter.dart";

/// A painter for rendering shields with various styles and configurations.
///
/// This class extends [MultiElementPainter] and provides different constructors
/// for rendering shields with or without outlines and dividers.
final class SimpleShieldPainter extends MultiElementPainter {
  /// Creates a [SimpleShieldPainter] with an outlined shield and dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const SimpleShieldPainter.outlinedWithDividers(
    super.properties,
    super.aspectRatio,
  ) : _showDividers = true,
      _showOutline = true;

  /// Creates a [SimpleShieldPainter] with an outlined shield without dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const SimpleShieldPainter.outlinedWithoutDividers(
    super.properties,
    super.aspectRatio,
  ) : _showDividers = false,
      _showOutline = true;

  /// Creates a [SimpleShieldPainter] with a shield with dividers but without an
  /// outline.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const SimpleShieldPainter.withDividers(super.properties, super.aspectRatio)
    : _showDividers = true,
      _showOutline = false;

  /// Creates a [SimpleShieldPainter] with a shield without dividers and
  /// outline.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const SimpleShieldPainter.withoutDividers(super.properties, super.aspectRatio)
    : _showDividers = false,
      _showOutline = false;

  final bool _showDividers;
  final bool _showOutline;

  static const _fallback = Color(0x00000000);
  static const _lineFactor = 0.2;

  @override
  double get originalAspectRatio => FlagConstants.defaultAspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final thisProperty = property;
    final otherColors =
        // ignore: avoid-type-casts, Might be a breaking change.
        (thisProperty as CustomElementsProperties?)?.otherColors;
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final half = height * 0.5;
    final halfWidth = width * 0.5;
    final path = Path();
    final paint = Paint();

    canvas
      ..save()
      ..translate(center.dx - halfWidth, center.dy - half);

    path
      ..moveTo(0, half)
      ..cubicTo(0, height * 0.8, halfWidth, height, halfWidth, height)
      ..cubicTo(halfWidth, height, width, height * 0.8, width, half)
      ..lineTo(width, height * 0.07)
      ..cubicTo(width, height * 0.07, width * 0.7, 0, halfWidth, 0)
      ..lineTo(0, height * 0.07)
      ..lineTo(0, half);

    if (_showOutline) {
      final strokeWidth = height * _lineFactor;

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
      paint
        ..color = property.mainColor
        ..strokeWidth = half * 0.2;
      canvas
        ..drawLine(Offset(halfWidth, 0), Offset(halfWidth, height), paint)
        ..drawLine(Offset(0, half), Offset(width, half), paint);
    }
    canvas.restore();

    return (bounds: path.getBounds(), canvas: canvas, child: null);
  }
}
