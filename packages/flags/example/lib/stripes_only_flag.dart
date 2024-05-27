import "package:flags/flags.dart";
import "package:flutter/material.dart";

class StripesOnlyFlag extends StatelessWidget {
  const StripesOnlyFlag(this.properties, {super.key});

  final FlagProperties properties;

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: properties.aspectRatio,
        child: CustomPaint(
          painter: _RoundedColoredBoxesPainter(
            properties.colors,
            16, // TODO!
            isHorizontalStriped: properties.isHorizontalStriped ?? false,
          ),
        ),
      );
}

class _RoundedColoredBoxesPainter extends CustomPainter {
  _RoundedColoredBoxesPainter(
    this.colorsProperties,
    this.borderRadius, {
    required this.isHorizontalStriped,
  });

  final double borderRadius;
  final List<ColorsProperties> colorsProperties;
  final bool isHorizontalStriped;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(borderRadius),
      ),
    );

    final totalWeight = colorsProperties.fold(0, (sum, cp) => sum + cp.ratio);
    final paint = Paint();
    var currentPosition = 0.0;

    for (final colorsProperty in colorsProperties) {
      paint.color = colorsProperty.color;
      final stripeSize = (isHorizontalStriped ? size.height : size.width) *
          colorsProperty.ratio /
          totalWeight;
      final stripe = isHorizontalStriped
          ? Rect.fromLTWH(0, currentPosition, size.width, stripeSize)
          : Rect.fromLTWH(currentPosition, 0, stripeSize, size.height);
      canvas.drawRect(stripe, paint);
      currentPosition += stripeSize;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
