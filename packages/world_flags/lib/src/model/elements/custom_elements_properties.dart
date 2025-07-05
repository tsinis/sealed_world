import "dart:ui" show Color;

import "elements_properties.dart";

/// A class representing custom properties for elements, extending
/// [ElementsProperties].
///
/// This class allows for the specification of additional colors and other
/// properties for custom elements. It inherits from [ElementsProperties] and
/// adds the ability to define a list of other colors.
///
/// Example usage:
/// ```dart
/// import 'package:world_flags/world_flags.dart';
/// import 'package:flutter/material.dart';
///
/// void main() {
///   const customProps = CustomElementsProperties(
///     Colors.red,
///     otherColors: [Colors.blue, Colors.green],
///     offset: Offset(10, 20),
///     heightFactor: 0.5,
///     widthFactor: 0.5,
///     angle: 45,
///   );
///
///   print('Main color: ${customProps.mainColor}');
///   print('Other colors: ${customProps.otherColors}');
/// }
/// ```
///
/// The properties include:
/// - [mainColor]: The primary color of the element.
/// - [otherColors]: A list of additional colors for the element.
/// - [offset]: The offset position of the element.
/// - [heightFactor]: The height factor of the element.
/// - [widthFactor]: The width factor of the element.
/// - [angle]: The rotation angle of the element.
class CustomElementsProperties extends ElementsProperties {
  /// Creates a new instance of [CustomElementsProperties].
  ///
  /// The [mainColor] parameter is required and specifies the primary color of
  /// the element. The [otherColors] parameter is optional and defaults to an
  /// empty list. Other parameters such as [offset], [heightFactor],
  /// [widthFactor], and [angle] are inherited from [ElementsProperties].
  const CustomElementsProperties(
    super.mainColor, {
    this.otherColors = const [],
    super.offset,
    super.heightFactor,
    super.widthFactor,
    super.angle,
  }) : super(shape: null); // coverage:ignore-line

  /// A list of additional colors for the element.
  ///
  /// This list can be used to specify secondary colors or other [Color]
  /// variations for the flag element.
  final List<Color> otherColors;

  @override
  String toString() =>
      "CustomElementsProperties($mainColor, "
      "heightFactor: $heightFactor, otherColors: $otherColors, "
      "${widthFactor == null ? '' : 'widthFactor: $widthFactor, '}"
      "${angle == null ? '' : 'angle: $angle, '}offset: $offset,"
      "${child == null ? '' : ' child: $child,'})";
}
