import "dart:ui";

import "../shape.dart";

class ElementsProperties {
  const ElementsProperties(
    this.mainColor, {
    required this.shape,
    this.offset = Offset.zero,
    this.heightFactor = 1,
    this.widthFactor,
    this.angle,
    this.child,
  })  : assert(widthFactor == null || widthFactor >= 0.0),
        assert(heightFactor >= 0.0);

  /// The distance fraction in the horizontal/vertical direction (of the center).
  ///
  /// A value of -1.0 corresponds to the leftmost/topmost edge. A value of 1.0
  /// corresponds to the rightmost/bottommost edge. Values are not limited to
  /// that range.
  final Offset offset;

  final Color mainColor;

  /// Height factor of the symbol. Is more relevant than width factor, because
  /// of various aspect rations of the flags, when width varies but height
  /// remains the same.
  final double heightFactor;

  /// If [widthFactor] is null, this is usually means that element's bounding
  /// box has square form.
  final double? widthFactor;
  final int? angle;
  final Shape? shape;
  final ElementsProperties? child;

  @override
  String toString() => "ElementsProperties($mainColor, shape: $shape, "
      "heightFactor: $heightFactor, widthFactor: $widthFactor, angle: $angle, "
      "offset: $offset, child: $child)";
}
