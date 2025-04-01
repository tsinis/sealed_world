part of "../multi_element_painter.dart";

/// Painter for the Brunei flag.
final class BrnPainter extends MultiElementPainter {
  /// Creates a new instance of [BrnPainter].
  const BrnPainter(super.properties, super.aspectRatio);

  @override
  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final midLeft = Offset(0, size.height * 0.3);
    final midRight = Offset(size.width, size.height * 0.72);
    final topLeft = Offset(0, size.height * 0.07);
    final topRight = Offset(size.width, size.height * 0.49);
    final bottomLeft = Offset(0, size.height * 0.51);
    final bottomRight = Offset(size.width, size.height * 0.93);

    final whitePath =
        Path()
          ..moveTo(midLeft.dx, midLeft.dy)
          ..lineTo(topLeft.dx, topLeft.dy)
          ..lineTo(topRight.dx, topRight.dy)
          ..lineTo(midRight.dx, midRight.dy)
          ..close();

    final blackPath =
        Path()
          ..moveTo(midLeft.dx, midLeft.dy)
          ..lineTo(bottomLeft.dx, bottomLeft.dy)
          ..lineTo(bottomRight.dx, bottomRight.dy)
          ..lineTo(midRight.dx, midRight.dy)
          ..close();

    canvas
      ..drawPath(whitePath, paintCreator())
      ..drawPath(blackPath, paintCreator(customColors.first));

    return null;
  }
}
