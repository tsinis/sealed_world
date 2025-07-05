import "dart:math";

import "package:flutter/rendering.dart";

import "../../../helpers/extensions/box_decoration_extension.dart";
import "../../../model/flag_properties.dart";
import "../../../model/stripe_orientation.dart";
import "flag_test_properties.dart";

/// A custom painter that draws stripes on a flag.
///
/// This class extends [CustomPainter] and allows for the drawing of stripes on
/// a flag. It uses the provided [FlagProperties], [BoxDecoration], and an
/// optional elements painter to customize the appearance of the stripes.
class StripesPainter<T extends CustomPainter> extends CustomPainter {
  /// Creates a new instance of [StripesPainter].
  ///
  /// - [properties]: The properties of the flag.
  /// - [decoration]: The decoration to apply to the flag, such as background
  ///   color and border radius.
  /// - [elementsPainter]: An optional custom painter for additional elements on
  ///   the flag.
  const StripesPainter(this.properties, this.decoration, this.elementsPainter);

  /// The properties of the flag.
  final FlagProperties properties;

  /// The decoration to apply to the flag, such as background color and border
  /// radius.
  final BoxDecoration? decoration;

  /// An optional custom painter for additional elements on the flag.
  final T? elementsPainter;

  /// The border radius of the flag, derived from the [decoration].
  ///
  /// If no border radius is specified in the [decoration], this defaults to
  /// [BorderRadius.zero].
  BorderRadiusGeometry get borderRadius =>
      decoration?.borderRadius ?? BorderRadius.zero;

  @override
  void paint(Canvas canvas, Size size) {
    _applyFlagClipping(canvas, size);
    // ignore: prefer-correct-identifier-length, CP for [ColorsProperties].
    final total = properties.stripeColors.fold(0, (sum, cp) => sum + cp.ratio);
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

  void _applyFlagClipping(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    if (decoration.isCircle) {
      final radius = size.height / 2;
      final circle = Rect.fromCircle(center: rect.center, radius: radius);
      final rRect = RRect.fromRectAndRadius(circle, Radius.circular(radius));
      // ignore: deprecated_member_use_from_same_package, it's TODO!
      canvas.clipRRect(rRect, doAntiAlias: flagAntiAliasOverride);
    } else if (borderRadius != BorderRadius.zero) {
      final rad = borderRadius.resolve(TextDirection.ltr);
      // ignore: deprecated_member_use_from_same_package, it's TODO!
      canvas.clipRRect(rad.toRRect(rect), doAntiAlias: flagAntiAliasOverride);
    } else {
      canvas.clipRect(rect, doAntiAlias: false); // Straight rectangle.
    }
  }

  void _drawVerticalStripes(Canvas canvas, Size size, int totalRatio) {
    double position = 0;
    final paint = Paint()..isAntiAlias = false;
    for (final colorProperty in properties.stripeColors) {
      final stripeSize = size.width * colorProperty.ratio / totalRatio;
      final stripe = Rect.fromLTWH(position, 0, stripeSize, size.height);
      paint.color = colorProperty.color;
      canvas.drawRect(stripe, paint);
      position += stripeSize;
    }
  }

  void _drawHorizontalStripes(Canvas canvas, Size size, int totalRatio) {
    double position = 0;
    final paint = Paint()..isAntiAlias = false;
    for (final colorProperty in properties.stripeColors) {
      final stripeSize = size.height * colorProperty.ratio / totalRatio;
      final stripe = Rect.fromLTWH(0, position, size.width, stripeSize);
      paint.color = colorProperty.color;
      canvas.drawRect(stripe, paint);
      position += stripeSize;
    }
  }

  void _drawDiagonalStripes(
    Canvas canvas,
    Size size,
    int totalRatio, {
    required bool isTopLeftToBottom,
  }) {
    final height = size.height;
    final angle = atan2(size.width, height);
    final diagonalLength = sqrt(size.width * size.width + height * height);

    canvas
      ..save()
      ..translate(size.width / 2, height / 2)
      ..rotate(isTopLeftToBottom ? angle : -angle)
      ..translate(-diagonalLength, -height * 2);

    double position = 0;
    final paint = Paint();
    for (final colorProperty in properties.stripeColors) {
      final stripeSize = diagonalLength * 2 * colorProperty.ratio / totalRatio;
      final stripe = Rect.fromLTWH(position, 0, stripeSize, height * 4);
      paint.color = colorProperty.color;
      canvas.drawRect(stripe, paint);
      position += stripeSize;
    }

    canvas.restore();
  }

  @override // coverage:ignore-line
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override // coverage:ignore-line
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
