import "dart:ui" show Color;

import "package:flutter/foundation.dart" show immutable, visibleForTesting;

/// A class representing properties related to the flag colors.
///
/// This class is immutable and provides properties for a color and its ratio.
/// It includes a constructor for creating an instance with a [Color] object and
/// another constructor for creating an instance from an integer representation
/// of a color.
///
/// Example usage:
/// ```dart
/// import 'package:your_package/colors_properties.dart';
/// import 'package:flutter/material.dart';
///
/// void main() {
///   const colorProps = ColorsProperties(Colors.red, ratio: 2);
///   print(colorProps);
///
///   const intProps = ColorsProperties.fromIntColor(0xFFFF0000, ratio: 2);
///   print(intProps);
/// }
/// ```
///
/// The properties include:
/// - [color]: The color of the element.
/// - [ratio]: The ratio associated with the color.
@immutable
class ColorsProperties {
  /// Creates a new instance of [ColorsProperties].
  ///
  /// The [color] parameter is required and specifies the color of the element.
  /// The [ratio] parameter is optional and defaults to 1. It must be greater
  /// than or equal to zero.
  const ColorsProperties(this.color, {this.ratio = 1})
      : assert(ratio >= 0, "`ratio` must be greater than or equal to zero.");

  /// Creates a new instance of [ColorsProperties] from an integer
  /// representation of a color.
  ///
  /// The [bitColor] parameter is required and specifies the color in integer
  /// format. The [ratio] parameter is optional and defaults to 1. It must be
  /// greater than or equal to zero.
  @visibleForTesting
  ColorsProperties.fromIntColor(int bitColor, {this.ratio = 1})
      : assert(ratio >= 0, "`ratio` must be greater than or equal to zero."),
        color = Color(bitColor);

  /// The color of the element.
  final Color color;

  /// The ratio associated with the color, typically used for flags stripes.
  /// For example in the Germany all three colors have the same ratio of 1.
  ///
  /// This value must be greater than or equal to zero.
  final int ratio;

  @override
  String toString() => "ColorsProperties($color, ratio: $ratio)";
}
