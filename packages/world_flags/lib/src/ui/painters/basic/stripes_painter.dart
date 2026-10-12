import "dart:math";

import "package:flutter/foundation.dart";
import "package:flutter/rendering.dart";

import "../../../helpers/extensions/box_decoration_extension.dart";
import "../../../model/flag_properties.dart";
import "../../../model/stripe_orientation.dart";

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
  /// - [textDirection]: The direction used to resolve a directional border
  ///   radius of the [decoration], left-to-right by default.
  const new(
    this.properties,
    this.decoration,
    this.elementsPainter, {
    super.repaint,
    this.textDirection,
  });

  /// The properties of the flag.
  final FlagProperties properties;

  /// The decoration to apply to the flag, such as background color and border
  /// radius.
  final BoxDecoration? decoration;

  /// The direction used to resolve a directional border radius of the
  /// [decoration] (i.e. [BorderRadiusDirectional]), left-to-right if `null`.
  final TextDirection? textDirection;

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
    if (size.isEmpty) return; // There is nothing to see, ratios would be NaN.
    applyFlagClipping(canvas, size);
    paintStripes(canvas, size);
  }

  @protected
  @visibleForTesting
  /// Paints the stripes on the flag based on the [FlagProperties]. Every flag
  /// should have at least one stripe.
  void paintStripes(Canvas canvas, Size size) {
    final total = properties.stripeColors.fold(
      0,
      // ignore: prefer-correct-identifier-length, CP for [ColorsProperties].
      (sum, cp) => sum + cp.ratio,
    );
    // Stripes have no extent then, only the elements could be painted.
    if (total == 0) {
      elementsPainter?.paint(canvas, size);

      return;
    }

    switch (properties.stripeOrientation) {
      case StripeOrientation.horizontal:
        _drawStripes(canvas, size, total, isVertical: false);

      case StripeOrientation.vertical:
        _drawStripes(canvas, size, total, isVertical: true);

      case StripeOrientation.diagonalBottomLeftToTopRight:
        _drawDiagonalStripes(canvas, size, total, isTopLeftToBottom: true);

      case StripeOrientation.diagonalTopLeftToBottomRight:
        _drawDiagonalStripes(canvas, size, total, isTopLeftToBottom: false);
    }

    elementsPainter?.paint(canvas, size);
  }

  @protected
  /// Applies clipping to the flag based on the [decoration].
  void applyFlagClipping(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    if (decoration.isCircle) {
      final radius = size.height / 2;
      final circle = Rect.fromCircle(center: rect.center, radius: radius);
      final rRect = RRect.fromRectAndRadius(circle, Radius.circular(radius));
      canvas.clipRRect(rRect);
    } else if (borderRadius.resolve(textDirection ?? TextDirection.ltr)
        case final radius when radius != BorderRadius.zero) {
      canvas.clipRRect(radius.toRRect(rect));
    } else {
      canvas.clipRect(rect, doAntiAlias: false); // Straight rectangle.
    }
  }

  /// Draws the straight stripes, one draw call per color.
  ///
  /// Stripes never overlap, so stripes that share a color can be filled as
  /// one path without changing a pixel: thirteen stripes of two colors cost
  /// two draw calls instead of thirteen. Anti-aliasing stays off, so the
  /// merged path rasterizes exactly like the separate rectangles did.
  void _drawStripes(
    Canvas canvas,
    Size size,
    int totalRatio, {
    required bool isVertical,
  }) {
    final byColor = <Color, List<Rect>>{};
    double position = 0;
    for (final colorProperty in properties.stripeColors) {
      final extent =
          (isVertical ? size.width : size.height) *
          colorProperty.ratio /
          totalRatio;
      final stripe = isVertical
          ? Rect.fromLTWH(position, 0, extent, size.height)
          : Rect.fromLTWH(0, position, size.width, extent);
      final same = byColor[colorProperty.color] ?? const <Rect>[];
      byColor[colorProperty.color] = [...same, stripe];
      position += extent;
    }

    final paint = Paint()..isAntiAlias = false;
    for (final MapEntry(key: color, value: group) in byColor.entries) {
      paint.color = color;
      if (group.length == 1) {
        canvas.drawRect(group.first, paint);

        continue;
      }
      final path = Path();
      group.forEach(path.addRect);
      canvas.drawPath(path, paint);
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
      ..clipRect(Rect.fromLTWH(0, 0, size.width, height))
      ..translate(size.width / 2, height / 2)
      ..rotate(isTopLeftToBottom ? angle : -angle)
      // The rotated square of the diagonal size covers the whole flag, at any
      // aspect ratio, so no corner is left unpainted.
      ..translate(-diagonalLength, -diagonalLength);

    final span = diagonalLength * 2;
    final stripes = properties.stripeColors;
    double position = 0;
    final paint = Paint();
    for (final (index, colorProperty) in stripes.indexed) {
      final extent = span * colorProperty.ratio / totalRatio;
      // A stripe reaches the far end if the next ones are opaque and drawn over
      // it: two anti-aliased edges meeting each other would let the background
      // show through the seam between them. Translucent stripes would blend
      // with it though, so they keep the exact extent.
      final isCovered = stripes
          .skip(index + 1)
          .every((next) => next.color.a == 1);
      paint.color = colorProperty.color;
      canvas.drawRect(
        Rect.fromLTWH(position, 0, isCovered ? span - position : extent, span),
        paint,
      );
      position += extent;
    }

    canvas.restore();
  }

  @override // coverage:ignore-line
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(covariant StripesPainter<T> oldDelegate) {
    final StripesPainter(
      decoration: oldDecoration,
      elementsPainter: oldElements,
      properties: oldProperties,
      textDirection: oldTextDirection,
    ) = oldDelegate;
    if (oldProperties != properties ||
        oldDecoration != decoration ||
        oldTextDirection != textDirection) {
      return true;
    }
    final elements = elementsPainter;
    if (elements == null || oldElements == null) return elements != oldElements;

    return elements.runtimeType != oldElements.runtimeType ||
        elements.shouldRepaint(oldElements);
  }
}
