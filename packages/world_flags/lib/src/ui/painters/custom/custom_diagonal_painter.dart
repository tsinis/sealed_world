part of "../multi_element_painter.dart";

/// A painter for rendering custom diagonal elements.
///
/// This class extends [MultiElementPainter] and provides different constructors
/// for rendering diagonal elements either vertically or horizontally.
final class CustomDiagonalPainter extends MultiElementPainter {
  /// Creates a [CustomDiagonalPainter] for vertical diagonal elements.
  ///
  /// The [properties] parameter specifies the properties of the elements.
  /// The [aspectRatio] parameter specifies the aspect ratio of the elements.
  const CustomDiagonalPainter.vertical(super.properties, super.aspectRatio)
    : _isHorizontal = false;

  /// Creates a [CustomDiagonalPainter] for horizontal diagonal elements.
  ///
  /// The [properties] parameter specifies the properties of the elements.
  /// The [aspectRatio] parameter specifies the aspect ratio of the elements.
  const CustomDiagonalPainter.horizontal(super.properties, super.aspectRatio)
    : _isHorizontal = true;

  final bool _isHorizontal;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final mainLineFactor = property.heightFactor;
    final outlineColor = customColors.firstOrNull;

    final path = Path()..moveTo(0, height);
    if (_isHorizontal) {
      path
        ..lineTo(0, height - (height * mainLineFactor))
        ..lineTo(width, 0)
        ..lineTo(width, height * mainLineFactor);
    } else {
      path
        ..lineTo(width * mainLineFactor, height)
        ..lineTo(width, 0)
        ..lineTo(width - (width * mainLineFactor), 0);
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
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
