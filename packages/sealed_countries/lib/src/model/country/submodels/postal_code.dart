import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/postal_code_extension.dart";

/// A class that represents a postal code format and regular expression pattern.
///
/// The `PostalCode` class is a simple value object that represents a postal
/// code format and regular expression pattern. It consists of two string
/// values - a `format` string that describes the format of a postal code
/// (e.g. "#####"), and a `regExpPattern` string that specifies a regular
/// expression pattern that can be used to validate postal codes.
///
/// Example usage:
///
/// ```dart
/// final postalCode =
///   PostalCode(format: "#####-####", regExpPattern: r"^(\d{5}(-\\d{4})?)$");
/// print(postalCode.format); // Prints: "#####-####"
/// print(postalCode.regExpPattern); // Prints: "^(\\d{5}(-\\d{4})?)$"
/// ```
final class PostalCode implements JsonEncodable<PostalCode> {
  /// Creates a new `PostalCode` object with the given format and regular
  /// expression pattern.
  ///
  /// The `format` and `regExpPattern` parameters must be non-empty strings.
  const PostalCode({this.format = "#####", this.regExpPattern = r"^(\d{5})$"})
      : assert(format.length > 0, "`format` should not be empty!"),
        assert(
          regExpPattern.length > 0,
          "`regExpPattern` should not be empty!",
        );

  /// The format string for this `PostalCode` object.
  ///
  /// The `format` string describes the format of a postal code. It typically
  /// consist of one or more '#' characters, which will be replaced with digits
  /// when formatting a postal code.
  final String format;

  /// The regular expression pattern for this `PostalCode` object.
  ///
  /// The `regExpPattern` string specifies a regular expression pattern that can
  /// be used to validate postal codes. The regular expression should include a
  /// single capturing group that matches the entire postal code.
  final String regExpPattern;

  @override
  String toString() =>
      'PostalCode(format: "$format", regExpPattern: r"$regExpPattern")';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant PostalCode other) {
    if (identical(this, other)) return true;

    return other.format == format && other.regExpPattern == regExpPattern;
  }

  @override
  int get hashCode => format.hashCode ^ regExpPattern.hashCode;
}
