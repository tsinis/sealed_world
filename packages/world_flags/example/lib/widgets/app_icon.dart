import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";
import "app_icon_shape.dart";

/// Paints an [AppIconShape] in a square of [size] points.
class AppIcon extends StatelessWidget {
  const new(
    this.shape, {
    this.size = 24,
    this.color = AppColors.surfaceVariantContent,
    super.key,
  });

  final AppIconShape shape;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) => ExcludeSemantics(
    child: CustomPaint(
      size: Size.square(size),
      painter: _IconPainter(shape, color),
    ),
  );
}

class _IconPainter extends CustomPainter {
  const new(this.shape, this.color);

  final AppIconShape shape;
  final Color color;

  static const _grid = 24.0;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.shortestSide / _grid;
    canvas
      ..save()
      ..scale(scale)
      ..drawPath(shape.path, Paint()..color = color)
      ..restore();
  }

  @override
  bool shouldRepaint(_IconPainter oldDelegate) =>
      oldDelegate.shape != shape || oldDelegate.color != color;
}
