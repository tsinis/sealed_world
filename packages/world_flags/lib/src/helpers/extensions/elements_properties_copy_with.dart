import "dart:ui";

import "../../model/elements/elements_properties.dart";
import "../../model/shape.dart";

/// An extension on [ElementsProperties] to provide a [copyWith] method for
/// creating a new instance of [ElementsProperties] with modified properties.
extension ElementsPropertiesCopyWith on ElementsProperties {
  /// {@macro copy_with_method}
  ///
  /// - [mainColor]: The primary color of the element.
  /// - [shape]: The shape of the element.
  /// - [offset]: The offset position of the element.
  /// - [heightFactor]: The height factor of the element.
  /// - [widthFactor]: The width factor of the element. Pass a negative value
  ///   to reset to `null`.
  /// - [angle]: The rotation angle of the element in degrees. Pass a negative
  ///   value to reset to `null`.
  /// - [child]: A potential child element.
  ElementsProperties copyWith({
    Color? mainColor,
    Shape? shape,
    Offset? offset,
    double? heightFactor,
    double? widthFactor,
    int? angle,
    ElementsProperties? child,
  }) => ElementsProperties(
    mainColor ?? this.mainColor,
    shape: shape ?? this.shape,
    offset: offset ?? this.offset,
    heightFactor: heightFactor ?? this.heightFactor,
    widthFactor: (widthFactor?.isNegative ?? false)
        ? null
        : (widthFactor ?? this.widthFactor),
    angle: (angle?.isNegative ?? false) ? null : (angle ?? this.angle),
    child: child ?? this.child,
  );
}
