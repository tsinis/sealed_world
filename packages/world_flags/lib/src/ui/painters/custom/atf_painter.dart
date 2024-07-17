part of "../multi_element_painter.dart";

final class AtfPainter extends MultiElementPainter {
  const AtfPainter(super.properties, super.aspectRatio);

  @protected
  double? get originalAspectRatio => flagAtfProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.1, 0)
      ..lineTo(width * 0.18, height * 0.15)
      ..lineTo(width * 0.43, height * 0.15)
      ..lineTo(width * 0.43, height * 0.64)
      ..lineTo(width * 0.24, height * 0.34)
      ..lineTo(0, height * 0.75)
      ..lineTo(width * 0.12, height * 0.75)
      ..lineTo(width * 0.24, height * 0.51)
      ..lineTo(width * 0.5, height)
      ..lineTo(width * 0.76, height * 0.51)
      ..lineTo(width * 0.88, height * 0.75)
      ..lineTo(width, height * 0.75)
      ..lineTo(width * 0.76, height * 0.34)
      ..lineTo(width * 0.58, height * 0.64)
      ..lineTo(width * 0.58, height * 0.37)
      ..lineTo(width * 0.68, height * 0.37)
      ..lineTo(width * 0.76, height * 0.23)
      ..lineTo(width * 0.58, height * 0.23)
      ..lineTo(width * 0.58, height * 0.15)
      ..lineTo(width * 0.82, height * 0.15)
      ..lineTo(width * 0.9, 0)
      ..lineTo(width * 0.1, 0)
      ..lineTo(width * 0.1, 0)
      ..moveTo(width * 0.38, height * 0.61)
      ..lineTo(width * 0.12, height * 0.61)
      ..lineTo(width * 0.12, height * 0.71)
      ..lineTo(width * 0.38, height * 0.71)
      ..lineTo(width * 0.38, height * 0.61)
      ..lineTo(width * 0.38, height * 0.61)
      ..moveTo(width * 0.88, height * 0.61)
      ..lineTo(width * 0.62, height * 0.61)
      ..lineTo(width * 0.62, height * 0.71)
      ..lineTo(width * 0.88, height * 0.71)
      ..lineTo(width * 0.88, height * 0.61)
      ..lineTo(width * 0.88, height * 0.61);

    canvas
      ..save()
      ..translate(center.dx - width / 2, center.dy - height / 2)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
