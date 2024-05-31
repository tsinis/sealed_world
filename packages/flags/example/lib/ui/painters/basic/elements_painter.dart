import "dart:math" as math;

import "package:flags/flags.dart";
import "package:flutter/foundation.dart";
import "package:flutter/rendering.dart";

class ElementsPainter extends CustomPainter {
  const ElementsPainter(this.properties, this.aspectRatio)
      : assert(
          properties != null && properties.length > 0,
          "`properties` must contain at least one element.",
        );

  final List<ElementsProperties>? properties;
  final double aspectRatio;

  @protected
  ElementsProperties get property => (properties ?? const []).first;

  @protected
  Shape? get shape => property.shape;

  @override
  void paint(Canvas canvas, Size size) {
    return; // TODO!
  }

  @protected
  Paint createPaintWithColor([Color? color]) =>
      Paint()..color = color ?? property.colors.first;

  @protected
  double calculateSize(Size size) {
    final heightRadius = property.heightFactor * size.height / 2;
    if (property.widthFactor == null) return heightRadius;
    final widthRadius = (property.widthFactor ?? 1) * size.width / 2;

    return math.min(widthRadius, heightRadius);
  }

  @protected
  Offset calculateCenter(Size size) {
    final horizontal = (property.x + 1) * size.width / 2;
    final vertical = (property.y + 1) * size.height / 2;

    return Offset(horizontal, vertical);
  }

  @protected
  double calculateAspectRatio(Size size) => size.width / size.height;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
