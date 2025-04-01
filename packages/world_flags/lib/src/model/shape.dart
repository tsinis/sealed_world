import "dart:ui" show Offset;

import "package:flutter/foundation.dart";

part "shape.g.dart";

/// An abstract class representing a shape that can be used in flag designs.
///
/// This class is sealed and cannot be instantiated directly. Instead, use one
/// of the subclasses to represent specific shapes.
@immutable
sealed class Shape {
  const Shape(); // coverage:ignore-line
}

/// A class representing a triangle shape.
///
/// Triangles are commonly used in flag designs to represent various symbolic
/// meanings.
class Triangle implements Shape {
  /// Creates a new instance of [Triangle].
  const Triangle();
}

/// A class representing a rectangle shape.
///
/// Rectangles are often used in flags to represent the flag's background or as
/// a part of the flag's design.
class Rectangle implements Shape {
  /// Creates a new instance of [Rectangle].
  ///
  /// The [aspectRatio] parameter is optional and specifies the width to height
  /// ratio of the rectangle.
  const Rectangle({this.aspectRatio})
    : assert(
        aspectRatio == null || aspectRatio > 0,
        "`aspectRatio` must be greater than 0",
      );

  /// The aspect ratio of the rectangle, given as width to height.
  final double? aspectRatio;
}

/// A class representing a star shape.
///
/// Stars are commonly used in flags to represent states, regions, or other
/// symbolic meanings.
class Star implements Shape {
  /// Creates a new instance of [Star].
  ///
  /// The [points] parameter specifies the number of points on the star. The
  /// [radiusFactor] parameter specifies the relative size of the inner radius
  /// compared to the outer radius. The [isFilled] parameter specifies whether
  /// the star is filled or outlined.
  const Star({this.points = 5, this.radiusFactor = 0.38, this.isFilled = true})
    : assert(points > 0, "`points` must be greater than 0");

  /// The number of points on the star.
  final int points;

  /// The relative size of the inner radius compared to the outer radius.
  final double radiusFactor;

  /// Whether the star is filled or outlined.
  final bool isFilled;
}

/// A class representing an ellipse shape.
///
/// Ellipses are used in flags to represent various symbolic meanings and can be
/// used as part of the flag's design.
class Ellipse implements Shape {
  /// Creates a new instance of [Ellipse].
  const Ellipse();
}

/// A class representing a moon shape.
///
/// Moons are commonly used in flags to represent various symbolic meanings,
/// often related to cultural or religious significance.
class Moon implements Shape {
  /// Creates a new instance of [Moon].
  ///
  /// The [radius] parameter specifies the relative radius of the second circle.
  /// The [offset] parameter specifies the relative X and Y positions of the
  /// second circle.
  const Moon({this.radius = 0.85, this.offset = const Offset(0.22, 0)})
    : assert(radius > 0, "`radius` must be greater than 0");

  /// Relative radius of the second circle.
  final double radius;

  /// Relative X and Y positions of the second circle.
  final Offset offset;
}

/// A class representing a diagonal line shape.
///
/// Diagonal lines are used in flags to represent various symbolic meanings and
/// can be used as part of the flag's design.
class DiagonalLine implements Shape {
  /// Creates a new instance of [DiagonalLine].
  ///
  /// The [isTopRightToBottomLeft] parameter specifies the direction of the
  /// diagonal line.
  const DiagonalLine({this.isTopRightToBottomLeft = true});

  /// Whether the diagonal line goes from top-right to bottom-left.
  final bool isTopRightToBottomLeft;
}
