part of "../multi_element_painter.dart";

final class PyfPainter extends MultiElementPainter {
  const PyfPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final center = calculateCenter(size);
    final radius = size.height * property.heightFactor / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);
    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [customColors.first, customColors.last],
        stops: const [0.6, 0.6],
      ).createShader(rect);

    canvas.drawOval(rect, paint);

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
