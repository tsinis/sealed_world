part of "../multi_element_painter.dart";

final class AtgPainter extends MultiElementPainter {
  const AtgPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
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
