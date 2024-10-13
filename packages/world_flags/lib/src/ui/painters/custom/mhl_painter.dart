part of "../multi_element_painter.dart";

/// Painter for the Marshall Islands flag.
final class MhlPainter extends MultiElementPainter {
  /// Creates a new instance of [MhlPainter].
  const MhlPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final biggerFactor = property.widthFactor ?? 1;
    final offsetFromEdges = property.heightFactor * size.height;
    final start = Offset(0, size.height - offsetFromEdges * 2);
    final topRightBelow = Offset(size.width, offsetFromEdges);
    final rightEdgeBottom = Offset(size.width, size.height * biggerFactor);
    final end = Offset(0, size.height - offsetFromEdges);
    final orange = paintCreator(customColors.last);

    final orangePath = Path()
      ..moveTo(start.dx, start.dy)
      ..lineTo(topRightBelow.dx, topRightBelow.dy)
      ..lineTo(rightEdgeBottom.dx, rightEdgeBottom.dy)
      ..lineTo(end.dx, end.dy)
      ..close();

    final offsetUnderEnd = size.height * (property.heightFactor / 2);
    final rightBottomUnder =
        Offset(size.width, rightEdgeBottom.dy + size.height * biggerFactor);
    final endUnder = Offset(end.dx, end.dy + offsetUnderEnd);

    final whitePath = Path()
      ..moveTo(end.dx, end.dy)
      ..lineTo(rightEdgeBottom.dx, rightEdgeBottom.dy)
      ..lineTo(rightBottomUnder.dx, rightBottomUnder.dy)
      ..lineTo(endUnder.dx, endUnder.dy)
      ..close();

    canvas
      ..drawPath(orangePath, orange)
      ..drawPath(whitePath, paintCreator());

    return (canvas: canvas, bounds: whitePath.getBounds(), child: null);
  }
}
