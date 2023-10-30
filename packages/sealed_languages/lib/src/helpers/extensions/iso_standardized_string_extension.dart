import "../../../sealed_languages.dart";

/// Extension on [String] providing additional functionality
/// for ISO standardized strings.
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
  bool get isIsoAlphaRegularCode =>
      RegExp(r"^[a-z]{3,}$", caseSensitive: false).hasMatch(this);

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
  T maybeMapIsoCode<T extends Object?>({
    required T Function(String input) orElse,
    T Function(String code)? numeric,
    T Function(String code)? regular,
    T Function(String code)? short,
  }) {
    final code = trim();

    return switch (code.length) {
      IsoStandardized.codeShortLength =>
        short?.call(code.toUpperCase()) ?? orElse(code),
      >= IsoStandardized.codeLength =>
        RegExp("[a-z]", caseSensitive: false).hasMatch(code)
            ? regular?.call(code) ?? orElse(code)
            : numeric?.call(code) ?? orElse(code),
      _ => orElse(code),
    };
  }
}
