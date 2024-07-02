part of "../multi_element_painter.dart";

final class HalfEllipsePainter extends MultiElementPainter {
  HalfEllipsePainter(super.properties, super.aspectRatio);

  @protected
  double? get originalAspectRatio => 3 / 2;

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
    final rect = Rect.fromCenter(center: center, width: width, height: height);

    final paint = Paint()
      ..color = otherColors?.firstOrNull ?? property.mainColor;

    canvas.drawArc(rect, pi, pi, false, paint);

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
