import "package:flags/flags.dart";
import "package:flutter/material.dart";

class StripesOnlyFlag extends StatelessWidget {
  const StripesOnlyFlag(
    this.properties, {
    this.borderRadius = 16,
    this.aspectRatio,
    super.key,
  });

  final FlagProperties properties;
  final double borderRadius;
  final double? aspectRatio;

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: aspectRatio ?? properties.aspectRatio,
        child: CustomPaint(
          painter: StripesPainter(
            properties.colors,
            borderRadius,
            isHorizontalStriped: properties.isHorizontalStriped ?? false,
          ),
        ),
      );
}

class StripesPainter extends CustomPainter {
  const StripesPainter(
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
      doAntiAlias: false,
    );

    final totalWeight = colorsProperties.fold(0, (sum, cp) => sum + cp.ratio);
    var currentPosition = 0.0;
    final paint = Paint();

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

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;
}
