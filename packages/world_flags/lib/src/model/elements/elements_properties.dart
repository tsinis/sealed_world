import "dart:ui";

import "package:flutter/foundation.dart";

import "../shape.dart";

/// A class representing the properties of elements used in flag designs.
///
/// This class is immutable and contains various properties that define the
/// appearance and positioning of elements within a flag. These properties
/// include color, shape, offset, size factors, rotation angle, and potential
/// child elements.
///
/// Example usage:
/// ```dart
/// const element = ElementsProperties(
///   Color(0xFF0000FF),
///   shape: Triangle(),
///   offset: Offset(0.5, 0.5),
///   heightFactor: 0.8,
///   widthFactor: 0.8,
///   angle: 90,
/// );
/// ```
@immutable
class ElementsProperties {
  /// Creates an instance of [ElementsProperties].
  ///
  /// The [mainColor] parameter specifies the primary color of the element. The
  /// [shape] parameter specifies the shape of the element and is required. The
  /// [offset] parameter specifies the distance fraction in the horizontal and
  /// vertical directions from the center. It defaults to [Offset.zero]. The
  /// [heightFactor] parameter specifies the height factor of the element and
  /// defaults to `1`. The [widthFactor] parameter specifies the width factor of
  /// the element and is optional. The [angle] parameter specifies the rotation
  /// angle of the element in degrees and is optional. The [child] parameter
  /// specifies a potential child element and is optional.
  ///
  /// The constructor asserts that [widthFactor], if provided, is non-negative,
  /// and that [heightFactor] is non-negative.
  const ElementsProperties(
    this.mainColor, {
    required this.shape,
    this.offset = Offset.zero,
    this.heightFactor = 1,
    this.widthFactor,
    this.angle,
    this.child,
  }) : assert(
         widthFactor == null || widthFactor >= 0,
         "`widthFactor` must be null or greater than or equal to 0",
       ),
       assert(
         heightFactor >= 0,
         "`heightFactor` must be greater than or equal to 0",
       );

  /// The distance fraction in the horizontal/vertical direction (of the
  /// center).
  ///
  /// A value of `-1.0` corresponds to the leftmost/topmost edge. A value of
  /// `1.0` corresponds to the rightmost/bottommost edge. Values are not limited
  /// to that range.
  final Offset offset;

  /// The primary color of the element.
  final Color mainColor;

  /// Height factor of the element.
  ///
  /// This factor is more relevant than the width factor because of the various
  /// aspect ratios of flags, where the width may vary but the height remains
  /// the same.
  final double heightFactor;

  /// Width factor of the element.
  ///
  /// If [widthFactor] is null, it usually means that width is not relevant.
  final double? widthFactor;

  /// Rotation angle of the element in degrees.
  ///
  /// This parameter specifies how much the element should be rotated.
  final int? angle;

  /// The shape of the element.
  ///
  /// This parameter specifies the geometric shape of the element and is
  /// required.
  final Shape? shape;

  /// A potential child element.
  ///
  /// This parameter allows for nesting elements within each other.
  final ElementsProperties? child;

  @override
  String toString() =>
      "ElementsProperties($mainColor, "
      "${shape == null ? '' : 'shape: ${shape.runtimeType}(), '}"
      "heightFactor: $heightFactor, "
      "${widthFactor == null ? '' : 'widthFactor: $widthFactor, '}"
      "${angle == null ? '' : 'angle: $angle, '}offset: $offset,"
      "${child == null ? '' : ' child: $child,'})";
}
