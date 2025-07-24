/// Extension type for handling ISO codes from any [String].
///
/// This extension type wraps any [String] to provide specialized ISO code
/// functionality without affecting the global [String] scope.
///
/// Example usage:
/// ```dart
/// void main() {
///   // Example with string:
///   String text = ' Hello, World! ';
///   print(IsoString(text).toUpperCaseCode()); // Outputs: HELLO, WORLD!
///
///   // Example with custom object:
///   final buffer = StringBuffer(' eng ');
///   print(IsoString(buffer).toUpperCaseCode()); // Outputs: ENG
/// }
/// ```
// ignore: prefer-match-file-name, doesn't respect keywoards + "IsoString".
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
