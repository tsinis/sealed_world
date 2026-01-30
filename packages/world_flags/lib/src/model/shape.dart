import "package:flutter/foundation.dart" show immutable;

/// An abstract class representing a shape that can be used in flag designs.
///
/// This class is sealed and cannot be instantiated directly. Instead, use one
/// of the subclasses to represent specific shapes.
@immutable
@pragma("vm:deeply-immutable")
sealed class Shape {
  const Shape(); // coverage:ignore-line
}

/// A class representing a triangle shape.
///
/// Triangles are commonly used in flag designs to represent various symbolic
/// meanings.
@pragma("vm:deeply-immutable")
final class Triangle implements Shape {
  /// Creates a new instance of [Triangle].
  const Triangle(); // coverage:ignore-line
}

/// A class representing a rectangle shape.
///
/// Rectangles are often used in flags to represent the flag's background or as
/// a part of the flag's design.
@pragma("vm:deeply-immutable")
final class Rectangle implements Shape {
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
@pragma("vm:deeply-immutable")
final class Star implements Shape {
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
@pragma("vm:deeply-immutable")
final class Ellipse implements Shape {
  /// Creates a new instance of [Ellipse].
  const Ellipse(); // coverage:ignore-line
}

/// A class representing a moon shape.
///
/// Moons are commonly used in flags to represent various symbolic meanings,
/// often related to cultural or religious significance.
@pragma("vm:deeply-immutable")
final class Moon implements Shape {
  /// Creates a new instance of [Moon].
  ///
  /// The [radius] parameter specifies the relative radius of the second circle.
  /// The [offsetDx] and [offsetDy] parameters specify the relative X and Y
  /// positions of the second circle.
  const Moon({this.radius = 0.85, this.offsetDx = 0.22, this.offsetDy = 0})
    : assert(radius > 0, "`radius` must be greater than 0");

  /// Relative radius of the second circle.
  final double radius;

  /// Relative X position of the second circle.
  final double offsetDx;

  /// Relative Y position of the second circle.
  final double offsetDy;
}

/// A class representing a diagonal line shape.
///
/// Diagonal lines are used in flags to represent various symbolic meanings and
/// can be used as part of the flag's design.
@pragma("vm:deeply-immutable")
final class DiagonalLine implements Shape {
  /// Creates a new instance of [DiagonalLine].
  ///
  /// The [isTopRightToBottomLeft] parameter specifies the direction of the
  /// diagonal line.
  const DiagonalLine( // coverage:ignore-line
  {
    this.isTopRightToBottomLeft = true, // Dart 3.8 format.
  });

  /// Whether the diagonal line goes from top-right to bottom-left.
  final bool isTopRightToBottomLeft;
}
