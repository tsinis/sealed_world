part of "../multi_element_painter.dart";

/// Painter for the half ellipse element.
final class HalfEllipsePainter extends MultiElementPainter {
  /// Creates a new instance of [HalfEllipsePainter].
  const HalfEllipsePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final center = calculateCenter(size);
    final radius = size.height * property.heightFactor / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);
    final firstColor = property.mainColor;
    final lastColor = customColors.firstOrNull ?? firstColor.withAlpha(0);
    final paint =
        Paint()
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
