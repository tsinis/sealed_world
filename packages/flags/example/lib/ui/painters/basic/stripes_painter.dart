import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

class StripesPainter extends CustomPainter {
  const StripesPainter(this.colors, this._radius, {required this.isHorizontal});

  final List<ColorsProperties> colors;
  final bool isHorizontal;
  final BorderRadiusGeometry? _radius;

  static const _doAntiAlias = false;

  BorderRadiusGeometry get radius => _radius ?? BorderRadius.zero;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    if (radius == BorderRadius.zero) {
      canvas.clipRect(rect, doAntiAlias: _doAntiAlias);
    } else {
      final borderRadius = radius.resolve(TextDirection.ltr);
      canvas.clipRRect(borderRadius.toRRect(rect), doAntiAlias: _doAntiAlias);
    }

    final totalRatio = colors.fold(0, (sum, cp) => sum + cp.ratio);
    final paint = Paint();
    var position = 0.0;

    if (isHorizontal) {
      for (final property in colors) {
        final stripeSize = size.height * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(0, position, size.width, stripeSize);
        canvas.drawRect(stripe, paint..color = property.color);
        position += stripeSize;
      }
    } else {
      for (final property in colors) {
        final stripeSize = size.width * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(position, 0, stripeSize, size.height);
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
