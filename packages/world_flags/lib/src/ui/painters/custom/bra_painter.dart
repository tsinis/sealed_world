part of "../multi_element_painter.dart";

final class BraPainter extends MultiElementPainter {
  const BraPainter(super.properties, super.aspectRatio);

  @protected
  double? get originalAspectRatio => flagBraProperties.aspectRatio;

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
      ..moveTo(width / 2, height / 2 - height / 2)
      ..lineTo(width / 2 + width / 2, height / 2)
      ..lineTo(width / 2, height / 2 + height / 2)
      ..lineTo(width / 2 - width / 2, height / 2)
      ..close();

    canvas
      ..save()
      ..translate(center.dx - width / 2, center.dy - height / 2)
      ..drawPath(path, paintCreator())
      ..restore();

    canvas.drawOval(
      Rect.fromCircle(center: center, radius: height / 3),
      paintCreator(),
    );

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
