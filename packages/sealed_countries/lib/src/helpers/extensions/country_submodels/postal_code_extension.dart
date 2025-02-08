import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/postal_code.dart";

/// Provides extension methods for [PostalCode] class.
/// {@macro submodels_class_extension}
extension PostalCodeExtension on PostalCode {
  /// Returns a [RegExp] object that can be used to validate postal codes.
  ///
  /// The returned [RegExp] object is based on the [regExpPattern] field of this
  /// [PostalCode] object. The [multiLine], [caseSensitive], [unicode], and
  /// [dotAll] parameters can be used to customize the behavior of the [RegExp]
  /// object.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// const postalCode = PostalCode(
  ///   format: "#####-####",
  ///   regExpPattern: r"^(\d{5}(-\d{4})?)$",
  /// );
  /// final postalCodeValidator = postalCode.validator();
  /// final isValid = postalCodeValidator.hasMatch("12345-6789");
  /// print(isValid); // Prints: true
  /// ```
  RegExp validator({
    bool caseSensitive = true,
    bool dotAll = false,
    bool multiLine = false,
    bool unicode = false,
  }) =>
      RegExp(
        regExpPattern,
        multiLine: multiLine,
        caseSensitive: caseSensitive,
        unicode: unicode,
        dotAll: dotAll,
      );

  /// {@macro copy_with_method}
  PostalCode copyWith({String? format, String? regExpPattern}) => PostalCode(
        format: format ?? this.format,
        regExpPattern: regExpPattern ?? this.regExpPattern,
      );

  /// {@macro to_map_method}
  Map<String, String> toMap() =>
      {"format": format, "regExpPattern": regExpPattern};

  /// {@macro from_map_method}
  static PostalCode fromMap(JsonMap map) => PostalCode(
        format: map["format"].toString(),
        regExpPattern: map["regExpPattern"].toString(),
      );
}
