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
  const Rectangle();
}

class Star implements Shape {
  const Star({this.points = defaultPoints, this.radiusFactor = defaultFactor});

  static const defaultFactor = 0.38;
  static const defaultPoints = 5;

  final int points;
  final double radiusFactor;
}

class Circle implements Shape {
  const Circle();
}

class Moon implements Shape {
  const Moon();
}
