import "dart:math" as math;

import "package:flutter/foundation.dart";
import "package:flutter/rendering.dart";

import "../../../model/elements/elements_properties.dart";
import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../common/diagonal_line_painter.dart";
import "../common/ellipse_painter.dart";
import "../common/moon_painter.dart";
import "../common/rectangle_painter.dart";
import "../common/star_painter.dart";
import "../common/triangle_painter.dart";

abstract base class ElementsPainter extends CustomPainter {
  const ElementsPainter(ElementsProps? properties, this.aspectRatio)
      : assert(
          properties != null && properties.length > 0,
          "`properties` must contain at least one element.",
        ),
        _properties = properties;

  final double aspectRatio;
  final ElementsProps? _properties;

  ElementsProps get properties => _properties ?? const [];

  @protected
  ElementsProperties get property => properties.first;

  @protected
  Paint get colorPaint => Paint()..color = property.mainColor;

  @protected
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size);

  @override
  FlagParentBounds? paint(Canvas canvas, Size size) {
    final parent = paintFlagElements(canvas, size);
    if (parent == null) return parent;
    final child = paintChild(parent.canvas, parent.bounds, parent.child);

    return child ?? parent;
  }

  @protected
  T? shapeType<T extends Shape>([Shape? shape]) {
    shape ??= property.shape;

    return shape is T ? shape : null;
  }

  @protected
  FlagParentBounds? paintChild(
    Canvas canvas,
    Rect parentBounds,
    ElementsProperties? child,
  ) {
    final childShape = child?.shape;
    if (childShape == null || child == null) return null;

    final shapePainter = painter(childShape);
    final parent = parentBounds.size;

    canvas
      ..save()
      ..translate(parentBounds.left, parentBounds.top);
    final res = shapePainter([child], parent.aspectRatio).paint(canvas, parent);
    canvas.restore();

    return res;
  }

  @protected
  ElementsPainter Function(ElementsProps?, double) painter(Shape child) =>
      child.whenConst(
        ellipse: EllipsePainter.new,
        moon: MoonPainter.new,
        rectangle: RectanglePainter.new,
        star: StarPainter.new,
        triangle: TrianglePainter.new,
        diagonalLine: DiagonalLinePainter.new,
      );

  @protected
  double calculateSize(Size size) {
    final heightRadius = property.heightFactor * size.height / 2;
    if (property.widthFactor == null) return heightRadius;
    final widthRadius = (property.widthFactor ?? 1) * size.width / 2;

    return math.min(widthRadius, heightRadius);
  }

  @protected
  Offset calculateCenter(Size size) {
    final horizontal = (property.offset.dx + 1) * size.width / 2;
    final vertical = (property.offset.dy + 1) * size.height / 2;

    return Offset(horizontal, vertical);
  }

  @protected
  double calculateAspectRatio(Size size) => size.width / size.height;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
