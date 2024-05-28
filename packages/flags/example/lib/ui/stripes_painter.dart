import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

class StripesPainter extends CustomPainter {
  const StripesPainter(
    this.colors,
    this.radius, {
    required this.isHorizontal,
    this.strokeColor,
    this.strokeHeightFactor,
    this.strokeWidth,
  }) : assert(
          (strokeHeightFactor ?? 0) >= 0 && (strokeHeightFactor ?? 0) <= 1,
          "strokeHeightFactor must be between 0 and 1!",
        );

  static const defaultStrokeColor = Color.fromARGB(255, 0, 0, 0); // Black.

  final List<ColorsProperties> colors;
  final bool isHorizontal;
  final Radius radius;

  final Color? strokeColor;
  final double? strokeHeightFactor;
  final double? strokeWidth;

  static const _withAntiAlias = false;

  @override
  void paint(Canvas canvas, Size size) {
    final totalRatio = colors.fold(0, (sum, cp) => sum + cp.ratio);
    final height = size.height;
    final width = size.width;
    final paint = Paint();
    final rectangle =
        RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, width, height), radius);

    var currentPosition = 0.0;
    canvas.clipRRect(rectangle, doAntiAlias: _withAntiAlias);

    if (isHorizontal) {
      for (final property in colors) {
        final stripeSize = height * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(0, currentPosition, width, stripeSize);
        canvas.drawRect(stripe, paint..color = property.color);
        currentPosition += stripeSize;
      }
    } else {
      for (final property in colors) {
        final stripeSize = width * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(currentPosition, 0, stripeSize, height);
        canvas.drawRect(stripe, paint..color = property.color);
        currentPosition += stripeSize;
      }
    }

    if (strokeHeightFactor == null && strokeWidth == null) return;

    final outlinePaint = Paint()
      ..color = strokeColor ?? defaultStrokeColor
      ..strokeWidth = strokeWidth ?? height * (strokeHeightFactor ?? 0)
      ..style = PaintingStyle.stroke
      ..isAntiAlias = _withAntiAlias;

    canvas.drawRRect(rectangle, outlinePaint);
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
