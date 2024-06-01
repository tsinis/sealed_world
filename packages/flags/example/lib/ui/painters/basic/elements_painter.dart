import "dart:math" as math;

import "package:flags/flags.dart";
import "package:flutter/foundation.dart";
import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../common/circle_painter.dart";
import "../common/rectangle_painter.dart";
import "../common/star_painter.dart";
import "../common/triangle_painter.dart";

abstract base class ElementsPainter extends CustomPainter {
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
  FlagParentPath paintFlagElements(Canvas canvas, Size size);

  @override
  void paint(Canvas canvas, Size size) {
    final parent = paintFlagElements(canvas, size);
    paintChild(parent.canvas, parent.path);
  }

  @protected
  T? shapeType<T extends Shape>([Shape? shape]) {
    shape ??= property.shape;

    return shape is T ? shape : null;
  }

  @protected
  void paintChild(Canvas canvas, Path parentPath) {
    final child = property.children.firstOrNull;
    final childShape = child?.shape;
    if (child == null || childShape == null) return; // TODO!

    final parentBounds = parentPath.getBounds();
    final painter = childShape.whenConst(
      circle: CirclePainter.new,
      moon: CirclePainter.new, // TODO!
      rectangle: RectanglePainter.new,
      star: StarPainter.new,
      triangle: TrianglePainter.new,
    );

    /// if (parentPath != null) canvas.clipPath(parentPath); // TODO!
    canvas
      ..save()
      ..translate(parentBounds.left, parentBounds.top);

    final parentSize = parentBounds.size;
    painter([child], parentSize.aspectRatio).paint(canvas, parentSize);
    canvas.restore();
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
