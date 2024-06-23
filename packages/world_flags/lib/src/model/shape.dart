import "dart:ui" show Offset;

import "package:flutter/foundation.dart";

part "shape.g.dart";

@immutable
sealed class Shape {
  const Shape();
}

class Triangle implements Shape {
  const Triangle();
}

class Rectangle implements Shape {
  const Rectangle({this.aspectRatio});

  final double? aspectRatio;
}

class Star implements Shape {
  const Star({this.points = 5, this.radiusFactor = 0.38});

  final int points;
  final double radiusFactor;
}

class Ellipse implements Shape {
  const Ellipse();
}

class Moon implements Shape {
  const Moon({this.radius = 0.85, this.offset = const Offset(0.22, 0)});

  /// Relative radius of the second circle.
  final double radius;

  /// Relative X and Y positions of the second circle.
  final Offset offset;
}

class DiagonalLine implements Shape {
  const DiagonalLine({this.isTopRightToBottomLeft = true});

  final bool isTopRightToBottomLeft;
}
