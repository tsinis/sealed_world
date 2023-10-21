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
  bool get isIsoCode => RegExp(r"^[a-zA-Z]{3,}$").hasMatch(this);
}
