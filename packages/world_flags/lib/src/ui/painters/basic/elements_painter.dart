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
import "flag_test_properties.dart";

/// An abstract base class for painting elements on a flag.
///
/// This class extends [CustomPainter] and provides a framework for painting
/// various elements on a flag. It uses the provided [ElementsProps] and
/// [aspectRatio] to customize the appearance of the elements.
abstract base class ElementsPainter extends CustomPainter {
  /// Creates a new instance of [ElementsPainter].
  ///
  /// - [properties]: The properties of the elements to be painted. Must contain
  /// at least one element.
  /// - [aspectRatio]: The aspect ratio of the flag.
  const ElementsPainter(ElementsProps? properties, this.aspectRatio)
      : assert(aspectRatio > 0, "`aspectRatio` must be greater than 0"),
        assert(
          properties != null && properties.length > 0,
          "`properties` must contain at least one element.",
        ),
        _properties = properties;

  /// The aspect ratio of the flag.
  final double aspectRatio;

  /// The properties of the elements to be painted.
  final ElementsProps? _properties;

  /// Retrieves the properties of the elements to be painted.
  ///
  /// If no properties are provided, this returns an empty list.
  ElementsProps get properties => _properties ?? const [];

  /// Retrieves the first property from the list of properties.
  ///
  /// This is a protected getter intended for use within subclasses.
  @protected
  ElementsProperties get property => properties.first;

  /// Paints the flag elements on the given canvas and size.
  ///
  /// This method should be overridden by subclasses to provide custom painting
  /// logic.
  ///
  /// - [canvas]: The canvas on which to paint.
  /// - [size]: The size of the area to paint.
  ///
  /// Returns a [FlagParentBounds] object representing the bounds of the painted
  /// elements.
  @protected
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size);

  /// Paints the flag elements on the given canvas and size.
  ///
  /// This method calls [paintFlagElements] to perform the actual painting.
  ///
  /// - [canvas]: The canvas on which to paint.
  /// - [size]: The size of the area to paint.
  ///
  /// Returns a [FlagParentBounds] object representing the bounds of the painted
  /// elements.
  @override
  FlagParentBounds? paint(Canvas canvas, Size size) {
    final parent = paintFlagElements(canvas, size);
    if (parent == null) return parent;
    final child = paintChild(parent.canvas, parent.bounds, parent.child);

    return child ?? parent;
  }

  /// Creates a [Paint] object with the specified [color].
  ///
  /// If no [color] is provided, the `property.mainColor` is used. The paint
  /// object is configured with anti-aliasing based on [flagAntiAliasOverride].
  ///
  /// - [color]: The color to use for the paint. If null, `property.mainColor`
  /// is used.
  ///
  /// Returns a configured [Paint] object.
  @protected
  // ignore: avoid-returning-cascades, it's ok for a shorthand method.
  Paint paintCreator([Color? color]) => Paint()
    ..color = color ?? property.mainColor
    ..isAntiAlias = flagAntiAliasOverride;

  /// Retrieves the shape type if it matches the specified type [T].
  ///
  /// This method checks if the provided [shape] or the `property.shape` is of
  /// type [T].
  ///
  /// - [shape]: The shape to check. If null, `property.shape` is used.
  ///
  /// Returns the shape if it matches the type [T], otherwise null.
  @protected
  T? shapeType<T extends Shape>([Shape? shape]) {
    // ignore: avoid-mutating-parameters, it's two liner.
    shape ??= property.shape;

    // ignore: prefer-switch-with-sealed-classes, switch will be longer.
    return shape is T ? shape : null;
  }

  /// Paints a child element on the given canvas within the specified parent
  /// bounds.
  ///
  /// This method uses the [painter] method to get the appropriate painter for
  /// the child's shape and then paints it on the canvas.
  ///
  /// - [canvas]: The canvas on which to paint.
  /// - [parentBounds]: The bounds within which to paint the child.
  /// - [child]: The properties of the child element to paint.
  ///
  /// Returns a [FlagParentBounds] object representing the bounds of the painted
  /// child.
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

  /// Retrieves the appropriate painter for the given child shape.
  ///
  /// This method uses the `Shape.whenConst` method to get the appropriate
  /// painter for the specified [child] shape.
  ///
  /// - [child]: The shape of the child element.
  ///
  /// Returns a function that creates an [ElementsPainter] for the specified
  /// shape.
  @protected
  // ignore: prefer-typedefs-for-callbacks, Might be a breaking change.
  ElementsPainter Function(ElementsProps?, double) painter(Shape child) =>
      child.whenConst(
        star: StarPainter.new,
        triangle: TrianglePainter.new,
        ellipse: EllipsePainter.new,
        rectangle: RectanglePainter.new,
        moon: MoonPainter.new,
        diagonalLine: DiagonalLinePainter.new,
      );

  /// Calculates the size of the element based on the provided [size].
  ///
  /// This method calculates the size of the element using the
  /// `property.heightFactor` and `property.widthFactor`. If the width factor is
  /// not specified, the height radius is used.
  ///
  /// - [size]: The size of the area to paint.
  ///
  /// Returns the calculated size of the element.
  @protected
  double calculateSize(Size size) {
    final heightRadius = property.heightFactor * size.height / 2;
    if (property.widthFactor == null) return heightRadius;
    final widthRadius = (property.widthFactor ?? 1) * size.width / 2;

    return math.min(widthRadius, heightRadius);
  }

  /// Calculates the center offset of the element based on the provided [size].
  ///
  /// This method calculates the center offset of the element using the
  /// `property.offset`.
  ///
  /// - [size]: The size of the area to paint.
  ///
  /// Returns the calculated center offset of the element.
  @protected
  Offset calculateCenter(Size size) {
    final horizontal = (property.offset.dx + 1) * size.width / 2;
    final vertical = (property.offset.dy + 1) * size.height / 2;

    return Offset(horizontal, vertical);
  }

  /// Calculates the aspect ratio of the element based on the provided [size].
  ///
  /// This method calculates the aspect ratio of the element using the width and
  /// height of the provided [size].
  ///
  /// - [size]: The size of the area to paint.
  ///
  /// Returns the calculated aspect ratio of the element.
  @protected
  double calculateAspectRatio(Size size) => size.width / size.height;

  @override // coverage:ignore-line
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override // coverage:ignore-line
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
