import "dart:ui";

import "../../model/elements/custom_elements_properties.dart";

/// An extension on [CustomElementsProperties] to provide a [copyWith] method
/// for creating a new instance of [CustomElementsProperties] with modified
/// properties.
extension CustomElementsPropertiesCopyWith on CustomElementsProperties {
  /// {@macro copy_with_method}
  ///
  /// - [mainColor]: The primary color of the element.
  /// - [otherColors]: A list of additional colors for the element.
  /// - [offset]: The offset position of the element.
  /// - [heightFactor]: The height factor of the element.
  /// - [widthFactor]: The width factor of the element. Pass a negative value
  ///   to reset to `null`.
  /// - [angle]: The rotation angle of the element in degrees. Pass a negative
  ///   value to reset to `null`.
  CustomElementsProperties copyWith({
    Color? mainColor,
    List<Color>? otherColors,
    Offset? offset,
    double? heightFactor,
    double? widthFactor,
    int? angle,
  }) => CustomElementsProperties(
    mainColor ?? this.mainColor,
    otherColors: otherColors ?? this.otherColors,
    offset: offset ?? this.offset,
    heightFactor: heightFactor ?? this.heightFactor,
    widthFactor: (widthFactor?.isNegative ?? false)
        ? null
        : (widthFactor ?? this.widthFactor),
    angle: (angle?.isNegative ?? false) ? null : (angle ?? this.angle),
  );
}
