import "dart:math";

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
    final total = properties.colors.fold(0, (sum, cp) => sum + cp.ratio);
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    _applyFlagClipping(canvas, rect, size);
    switch (properties.stripeOrientation) {
      case StripeOrientation.horizontal:
        _drawHorizontalStripes(canvas, size, total);
      case StripeOrientation.vertical:
        _drawVerticalStripes(canvas, size, total);
      case StripeOrientation.diagonalBottomLeftToTopRight:
        _drawDiagonalStripes(canvas, size, total, isTopLeftToBottom: true);
      case StripeOrientation.diagonalTopLeftToBottomRight:
        _drawDiagonalStripes(canvas, size, total, isTopLeftToBottom: false);
    }

    elementsPainter?.paint(canvas, size);
  }

  void _applyFlagClipping(Canvas canvas, Rect rect, Size size) {
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
  }

  void _drawVerticalStripes(Canvas canvas, Size size, int totalRatio) {
    var position = 0.0;
    for (final property in properties.colors) {
      final stripeSize = size.width * property.ratio / totalRatio;
      final stripe = Rect.fromLTWH(position, 0, stripeSize, size.height);
      canvas.drawRect(stripe, Paint()..color = property.color);
      position += stripeSize;
    }
  }

  void _drawHorizontalStripes(Canvas canvas, Size size, int totalRatio) {
    var position = 0.0;
    for (final property in properties.colors) {
      final stripeSize = size.height * property.ratio / totalRatio;
      final stripe = Rect.fromLTWH(0, position, size.width, stripeSize);
      canvas.drawRect(stripe, Paint()..color = property.color);
      position += stripeSize;
    }
  }

  void _drawDiagonalStripes(
    Canvas canvas,
    Size size,
    int totalRatio, {
    required bool isTopLeftToBottom,
  }) {
    final width = size.width;
    final height = size.height;
    final angle = atan2(width, height);
    final diagonalLength = sqrt(width * width + height * height);

    canvas
      ..save()
      ..translate(width / 2, height / 2)
      ..rotate(isTopLeftToBottom ? angle : -angle)
      ..translate(-diagonalLength, -height * 2);

    var position = 0.0;
    for (final colorProperty in properties.colors) {
      final stripeSize = diagonalLength * 2 * colorProperty.ratio / totalRatio;
      final stripe = Rect.fromLTWH(position, 0, stripeSize, height * 4);
      canvas.drawRect(stripe, Paint()..color = colorProperty.color);
      position += stripeSize;
    }

    canvas.restore();
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
