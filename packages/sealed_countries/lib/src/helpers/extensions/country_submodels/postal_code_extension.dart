import "../../../model/country/submodels/postal_code.dart";

/// A class extension that adds a additional methods to the `PostalCode` class.
extension PostalCodeExtension on PostalCode {
  /// Returns a `RegExp` object that can be used to validate postal codes.
  ///
  /// The returned `RegExp` object is based on the `regExpPattern` field of this
  /// `PostalCode` object. The `multiLine`, `caseSensitive`, `unicode`, and
  /// `dotAll` parameters can be used to customize the behavior of the `RegExp`
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
    bool multiLine = false,
    bool caseSensitive = true,
    bool unicode = false,
    bool dotAll = false,
  }) =>
      RegExp(
        regExpPattern,
        multiLine: multiLine,
        caseSensitive: caseSensitive,
        unicode: unicode,
        dotAll: dotAll,
      );
}
