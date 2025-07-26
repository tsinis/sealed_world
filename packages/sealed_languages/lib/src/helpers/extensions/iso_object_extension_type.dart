// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!
import "../../interfaces/iso_standardized.dart";
import "iso_standardized_string_extension.dart";
import "sealed_world_object_extension.dart";

/// Extension type for handling ISO codes from any object.
///
/// This extension type wraps any [Object] to provide specialized ISO code
/// functionality without affecting the global [Object] scope. It's a direct
/// replacement for the deprecated [SealedWorldObjectExtension].
///
/// Example usage:
/// ```dart
/// enum Colors { red, green, blue }
///
/// void main() {
///   // Example with enum:
///   Colors color = Colors.green;
///   print(IsoObject(color).toUpperCaseCode()); // Outputs: GREEN
///
///   // Example with string:
///   String text = ' Hello, World! ';
///   print(IsoObject(text).toUpperCaseCode()); // Outputs: HELLO, WORLD!
///
///   // Example with custom object:
///   final buffer = StringBuffer(' eng ');
///   print(IsoObject(buffer).toUpperCaseCode()); // Outputs: ENG
/// }
/// ```
// ignore: prefer-match-file-name, doesn't respect keywoards + "IsoObject".
extension type const IsoObject._(Object _value) implements Object {
  /// Creates an ISO code wrapper for any [Object] value.
  const IsoObject(Object value) : this._(value);

  /// Creates an ISO code wrapper for any [Object?] value.
  ///
  /// If the value is `null`, it returns `null`, otherwise it creates an
  /// [IsoObject] instance with the provided [value].
  static IsoObject? maybe(Object? value) =>
      value == null ? null : IsoObject(value);

  /// Converts the object to a trimmed, uppercase [String] representation.
  ///
  /// If the object is an [Enum], this method returns the name of the enum entry
  /// in uppercase. Otherwise, it converts the object to a string, trims it,
  /// and converts it to uppercase.
  String toUpperCaseCode() => toCode().toUpperCase();

  /// Converts the object to a trimmed, [String] representation.
  ///
  /// If the object is an [Enum], this method returns the name of the enum
  /// entry. Otherwise, it converts the object to a string and trims it.
  String toCode() => _value is Enum ? _value.name : _value.toString().trim();

  /// Checks if the object's string representation is a valid ISO code.
  ///
  /// Returns `true` if the object's string representation matches strings that
  /// consist of Latin characters (uppercase or lowercase) and have a length of
  /// 3 or more characters, indicating that it is a valid ISO code.
  /// Returns `false` otherwise.
  ///
  /// In terms of this package, it means that it is a valid
  /// ISO `code` (not `codeOther`).
  bool get isIsoAlphaRegularCode => toCode().isIsoAlphaRegularCode;

  /// Trims the object's string representation to an ISO code if its
  /// length is within the valid ISO codes range. If the string is not a valid
  /// regular ISO code, it returns `null`. The [maxLength] and [minLength]
  /// parameters control the maximum and minimum length of the trimmed string.
  /// The optional [exactLength] parameter specifies the exact length of the
  /// trimmed string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// print(IsoObject(' en ').maybeToValidIsoCode()); // Prints: "en"
  /// print(IsoObject(' e').maybeToValidIsoCode()); // Prints: null
  /// ```
  String? maybeToValidIsoCode({
    int? exactLength,
    int maxLength = IsoStandardized.codeLength,
    int minLength = IsoStandardized.codeShortLength,
  }) => toCode().maybeToValidIsoCode(
    exactLength: exactLength,
    maxLength: maxLength,
    minLength: minLength,
  );

  /// Trims and converts the object's string representation to an ISO code to
  /// uppercase if its length is within the valid ISO codes range. If the
  /// string is not a valid regular ISO code, it returns `null`. The
  /// [maxLength] and [minLength] parameters control the maximum and minimum
  /// length of the trimmed string. The optional [exactLength] parameter
  /// specifies the exact length of the trimmed string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// print(IsoObject(' eng ').maybeToValidIsoUpperCaseCode()); // Prints: "ENG"
  /// print(IsoObject('english').maybeToValidIsoUpperCaseCode()); // Prints: null
  /// ```
  String? maybeToValidIsoUpperCaseCode({
    int? exactLength,
    int maxLength = IsoStandardized.codeLength,
    int minLength = IsoStandardized.codeShortLength,
  }) => toUpperCaseCode().maybeToValidIsoCode(
    exactLength: exactLength,
    maxLength: maxLength,
    minLength: minLength,
  );

  /// Maps the ISO code of the object's string representation to a value based
  /// on the code's length and type.
  ///
  /// The `maybeMapIsoCode` method takes the object's string representation as
  /// input, converts it to UPPERCASE and maps it to a value based on the code's
  /// length and type. It provides several optional parameters to handle
  /// different code types and provide fallback values.
  ///
  /// Parameters:
  /// - `orElse`: A required function that takes a string input and returns a
  ///   a trimmed value. This function is also used as fallback value.
  /// - `numeric`: An optional function that takes a string input and returns a
  ///   trimmed value. This function is called when the code is numeric.
  /// - `regular`: An optional function that takes a string input and returns a
  ///   trimmed value. This function is called when the code is a regular alpha
  ///   code.
  /// - `short`: An optional function that takes a string input and returns a
  ///   a trimmed and UPPERCASE value. This function is called when the code
  ///   is a short alpha code.
  ///
  /// Returns: The trimmed value returned by the appropriate function based
  /// on the code's length and type. If the code is not valid or proper function
  /// is not provided, the value returns `orElse` function.
  ///
  /// Example:
  /// ```dart
  /// final result = IsoObject("EN").maybeMapIsoCode(
  ///   orElse: (_) => "orElse",
  ///   numeric: (_) => "numeric",
  ///   regular: (_) => "regular",
  /// );
  ///
  /// print(result); // Prints "orElse"
  /// ```.
  // ignore: long-parameter-list, avoid-unnecessary-extends, all but 1 required.
  T maybeMapIsoCode<T extends Object?>({
    required T Function(String input) orElse,
    int maxLength = IsoStandardized.codeLength,
    int minLength = IsoStandardized.codeShortLength,
    T Function(String code)? numeric,
    T Function(String code)? regular,
    T Function(String code)? short,
  }) => toUpperCaseCode().maybeMapIsoCode(
    orElse: orElse,
    maxLength: maxLength,
    minLength: minLength,
    numeric: numeric,
    regular: regular,
    short: short,
  );
}
