import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

import "../../../helpers/extensions/box_decoration_extension.dart";

class StripesPainter<T extends CustomPainter> extends CustomPainter {
  const StripesPainter(this.properties, this.decoration, this.elementsPainter);

  final FlagProperties properties;
  final BoxDecoration? decoration;
  final T? elementsPainter;

  static const _doAntiAlias = false;

  BorderRadiusGeometry get borderRadius =>
      decoration?.borderRadius ?? BorderRadius.zero;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    if (decoration.isCircle) {
      final radius = size.height / 2;
      final circle = Rect.fromCircle(center: rect.center, radius: radius);
      final rRect = RRect.fromRectAndRadius(circle, Radius.circular(radius));
      canvas.clipRRect(rRect, doAntiAlias: _doAntiAlias);
    } else if (borderRadius != BorderRadius.zero) {
      final radius = borderRadius.resolve(TextDirection.ltr);
      canvas.clipRRect(radius.toRRect(rect), doAntiAlias: _doAntiAlias);
    } else {
      canvas.clipRect(rect, doAntiAlias: _doAntiAlias);
    }

    final totalRatio = properties.colors.fold(0, (sum, cp) => sum + cp.ratio);
    final paint = Paint();
    var position = 0.0;

    if (properties.stripeOrientation == StripeOrientation.vertical) {
      for (final property in properties.colors) {
        final stripeSize = size.width * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(position, 0, stripeSize, size.height);
        canvas.drawRect(stripe, paint..color = property.color);
        position += stripeSize;
      }
    } else {
      for (final property in properties.colors) {
        final stripeSize = size.height * property.ratio / totalRatio;
        final stripe = Rect.fromLTWH(0, position, size.width, stripeSize);
        canvas.drawRect(stripe, paint..color = property.color);
        position += stripeSize;
      }
    }

    elementsPainter?.paint(canvas, size);
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
