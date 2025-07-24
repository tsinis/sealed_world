// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!
import "iso_string_extension_type.dart";
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
  String toUpperCaseCode() => _value is Enum
      ? _value.name.toUpperCase()
      : IsoString(_value.toString()).toUpperCaseCode();
}
