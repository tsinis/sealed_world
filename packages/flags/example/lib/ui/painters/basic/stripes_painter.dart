import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

class StripesPainter extends CustomPainter {
  const StripesPainter(this.colors, this._radius, {required this.isHorizontal});

  final List<ColorsProperties> colors;
  final bool isHorizontal;

  static const _withAntiAlias = false;
  final Radius? _radius;

  Radius get radius => _radius ?? Radius.zero;

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final rect = Rect.fromLTWH(0, 0, width, height);

    if (radius == Radius.zero) {
      canvas.clipRect(rect, doAntiAlias: _withAntiAlias);
    } else {
      canvas.clipRRect(
        RRect.fromRectAndRadius(rect, radius),
        doAntiAlias: _withAntiAlias,
      );
    }

    final totalRatio = colors.fold(0, (sum, cp) => sum + cp.ratio);
    final paint = Paint();
    var position = 0.0;

    if (isHorizontal) {
      for (final property in colors) {
        final stripeSize = height * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(0, position, width, stripeSize);
        canvas.drawRect(stripe, paint..color = property.color);
        position += stripeSize;
      }
    } else {
      for (final property in colors) {
        final stripeSize = width * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(position, 0, stripeSize, height);
        canvas.drawRect(stripe, paint..color = property.color);
        position += stripeSize;
      }
    }
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
