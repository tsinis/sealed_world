part of "../multi_element_painter.dart";

final class BraPainter extends MultiElementPainter {
  const BraPainter(super.properties, super.aspectRatio);

  @protected
  double? get originalAspectRatio => FlagConstants.defaultAspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
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

    final otherColor = otherColors?.firstOrNull;
    if (otherColor != null) {
      canvas.drawOval(
        Rect.fromCircle(center: center, radius: height / 3),
        paintCreator(otherColor),
      );
    }

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}