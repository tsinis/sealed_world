import "dart:ui" show Color;

import "element_type.dart";

class ElementsProperties {
  const ElementsProperties(
    this.colors, {
    this.x = middle,
    this.y = middle,
    this.heightFactor,
    this.widthFactor,
    this.angle,
    this.type,
    this.children = const [],
  })  : assert(widthFactor == null || widthFactor >= 0.0),
        assert(heightFactor == null || heightFactor >= 0.0);

  static const double middle = 0;

  /// Height factor of the symbol. Is more relevant than width factor, because
  /// of various aspect rations of the flags, when width varies but height
  /// remains the same.
  final double? heightFactor;

  /// If [widthFactor] is null, this is usually means that element's bounding
  /// box has square form.
  final double? widthFactor;
  final List<Color> colors;
  final double? angle;
  final ElementType? type;
  final List<ElementsProperties> children;

  /// The distance fraction in the horizontal direction (of the center).
  ///
  /// A value of -1.0 corresponds to the leftmost edge. A value of 1.0
  /// corresponds to the rightmost edge. Values are not limited to that range;
  /// values less than -1.0 represent positions to the left of the left edge,
  /// and values greater than 1.0 represent positions to the right of the right
  /// edge.
  final double x;

  /// The distance fraction in the vertical direction (of the center).
  ///
  /// A value of -1.0 corresponds to the topmost edge. A value of 1.0
  /// corresponds to the bottommost edge. Values are not limited to that range;
  /// values less than -1.0 represent positions above the top, and values
  /// greater than 1.0 represent positions below the bottom.
  // ignore: prefer-correct-identifier-length, conventional name for Y axis.
  final double y;

  @override
  String toString() =>
      "ElementsProperties(${x.toStringAsFixed(1)}, ${y.toStringAsFixed(1)}"
      "widthFactor: $widthFactor, heightFactor: $heightFactor, "
      "colors: $colors, angle: $angle)";
}
