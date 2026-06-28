/// Extension type for handling ISO codes from any [String].
///
/// This extension type wraps any [String] to provide specialized ISO code
/// functionality without affecting the global [String] scope.
///
/// Example usage:
/// ```dart
/// import "package:sealed_languages/sealed_languages.dart";
///
/// void main() {
///   const text = " Hello, World! ";
///   assert(IsoString(text).toUpperCaseCode() == "HELLO, WORLD!");
///
///   final buffer = StringBuffer(" eng ");
///   assert(IsoString(buffer.toString()).toUpperCaseCode() == "ENG");
/// }
/// ```
// ignore: prefer-match-file-name, doesn't respect keywords + "IsoString".
extension type const IsoString._(String _value) implements String {
  /// Creates an ISO code wrapper for any [String] value.
  const IsoString(String value) : this._(value);

  /// Creates an ISO code wrapper for any [String?] value.
  ///
  /// If the value is `null`, it returns `null`, otherwise it creates an
  /// [IsoString] instance with the provided [value].
  static IsoString? maybe(String? value) =>
      value == null ? null : IsoString(value);

  /// Converts the object to a trimmed, uppercase representation.
  String toUpperCaseCode() => _value.trim().toUpperCase();
}
