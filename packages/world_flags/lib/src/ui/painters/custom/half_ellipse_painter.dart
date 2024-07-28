part of "../multi_element_painter.dart";

final class HalfEllipsePainter extends MultiElementPainter {
  const HalfEllipsePainter(super.properties, super.aspectRatio);

  @override
  double? get originalAspectRatio => FlagConstants.defaultAspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final center = calculateCenter(size);
    final radius = size.height * property.heightFactor / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);
    final firstColor = property.mainColor;
    final lastColor = customColors.firstOrNull ?? firstColor.withOpacity(0);
    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [firstColor, lastColor],
        stops: const [0.5, 0.5],
      ).createShader(rect);

    canvas.drawOval(rect, paint);

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
