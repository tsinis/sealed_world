part of "../multi_element_painter.dart";

/// Painter for the Antigua and Barbuda flag.
final class AtgPainter extends MultiElementPainter {
  /// Creates a new instance of [AtgPainter].
  const AtgPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paintCreator(customProperties.mainColor));

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
