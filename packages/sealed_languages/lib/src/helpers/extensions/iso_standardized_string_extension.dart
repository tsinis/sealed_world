import "../../interfaces/iso_standardized.dart";
import "iso_object_extension_type.dart";

/// Extension on [String] providing additional functionality
/// for ISO standardized strings.
///
/// **Note:** This extension is internal and deprecated. Use [IsoObject]
/// extension type instead for better type safety and to avoid polluting the
/// global [String] scope.
@Deprecated(
  "Use `IsoObject` extension type instead. "
  "This extension will become internal in a future version.",
)
// TODO! Remove export.
extension IsoStandardizedStringExtension on String {
  /// Checks if the string is a valid ISO code.
  ///
  /// Returns `true` if the string matches strings that consist of Latin
  /// characters (uppercase or lowercase) and have a length of 3 or more
  /// characters, indicating that it is a valid ISO code.
  /// Returns `false` otherwise.
  ///
  /// In terms of this package, it means that it is a valid
  /// ISO `code` (not `codeOther`).
  ///
  /// **Deprecated:** Use [IsoObject] extension type instead:
  /// ```dart
  /// IsoObject(yourString).isIsoAlphaRegularCode
  /// ```
  @Deprecated("Use `IsoObject(string).isIsoAlphaRegularCode` instead.")
  bool get isIsoAlphaRegularCode =>
      RegExp(r"^[a-z]{3,}$", caseSensitive: false).hasMatch(this);

  /// Trims the provided string to an ISO code if it's
  /// length is within the valid ISO codes range. If the string is not a valid
  /// regular ISO code, it returns `null`. The [maxLength] and [minLength]
  /// parameters control the maximum and minimum length of the trimmed string.
  /// The optional [exactLength] parameter specifies the exact length of the
  /// trimmed string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// print(' en '.maybeToValidIsoCode()); // Prints: "en"
  /// print(' e'.maybeToValidIsoCode()); // Prints: null
  /// ```
  ///
  /// **Deprecated:** Use [IsoObject] extension type instead:
  /// ```dart
  /// IsoObject(yourString).maybeToValidIsoCode()
  /// ```
  @Deprecated("Use `IsoObject(string).maybeToValidIsoCode()` instead.")
  String? maybeToValidIsoCode({
    int? exactLength,
    int maxLength = IsoStandardized.codeLength,
    int minLength = IsoStandardized.codeShortLength,
  }) {
    final code = trim();
    if (exactLength != null) return code.length == exactLength ? code : null;
    assert(minLength > 0, "`minLength` must be > 0");
    assert(maxLength > 1, "`maxLength` must be > 1");
    assert(minLength < maxLength, "`maxLength` must be > `minLength`");

    return code.length < minLength || code.length > maxLength ? null : code;
  }

  /// Trims and converts the provided string to an ISO code to uppercase if it's
  /// length is within the valid ISO codes range. If the string is not a valid
  /// regular ISO code, it returns `null`. The [maxLength] and [minLength]
  /// parameters control the maximum and minimum length of the trimmed string.
  /// The optional [exactLength] parameter specifies the exact length of the
  /// trimmed string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// print(' eng '.maybeToValidIsoCode()); // Prints: "ENG"
  /// print('english'.maybeToValidIsoCode()); // Prints: null
  /// ```
  ///
  /// **Deprecated:** Use [IsoObject] extension type instead:
  /// ```dart
  /// IsoObject(yourString).maybeToValidIsoUppercaseCode()
  /// ```
  @Deprecated("Use `IsoObject(string).maybeToValidIsoUpperCaseCode()` instead.")
  String? maybeToValidIsoUppercaseCode({
    int? exactLength,
    int maxLength = IsoStandardized.codeLength,
    int minLength = IsoStandardized.codeShortLength,
  }) => maybeToValidIsoCode(
    maxLength: maxLength,
    minLength: minLength,
    exactLength: exactLength,
  )?.toUpperCase();

  /// Maps the ISO code of a string to a value based on the code's length and
  /// type.
  ///
  /// The `maybeMapIsoCode` method takes a string as input and maps it to a
  /// value based on the code's length and type. It provides several optional
  /// parameters to handle different code types and provide fallback values.
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
  /// final result = "EN".maybeMapIsoCode(
  ///   orElse: (_) => "orElse",
  ///   numeric: (_) => "numeric",
  ///   regular: (_) => "regular",
  /// );
  ///
  /// print(result); // Prints "orElse"
  /// ```.
  ///
  /// **Deprecated:** Use [IsoObject] extension type instead:
  /// ```dart
  /// IsoObject(yourString).maybeMapIsoCode(...)
  /// ```
  @Deprecated("Use `IsoObject(string).maybeMapIsoCode()` instead.")
  // ignore: avoid-unnecessary-extends, otherwise it will be dynamic, so and void.
  T maybeMapIsoCode<T extends Object?>({
    required T Function(String input) orElse,
    int maxLength = IsoStandardized.codeLength,
    int minLength = IsoStandardized.codeShortLength,
    T Function(String code)? numeric,
    T Function(String code)? regular,
    T Function(String code)? short,
  }) {
    final code = (minLength == maxLength)
        ? maybeToValidIsoCode(exactLength: minLength)
        : maybeToValidIsoCode(maxLength: maxLength, minLength: minLength);
    if (code == null) return orElse(this);

    return code.length == IsoStandardized.codeShortLength
        ? (short?.call(code.toUpperCase()) ?? orElse(code))
        : _onNumericOrRegular(code, orElse, regular: regular, numeric: numeric);
  }

  T _onNumericOrRegular<T>(
    String code,
    T Function(String input) orElse, {
    T Function(String code)? numeric,
    T Function(String code)? regular,
  }) {
    if (numeric == null && regular == null) return orElse(code);

    return RegExp("[a-z]", caseSensitive: false).hasMatch(code)
        ? (regular?.call(code) ?? orElse(code))
        : (numeric?.call(code) ?? orElse(code));
  }
}
