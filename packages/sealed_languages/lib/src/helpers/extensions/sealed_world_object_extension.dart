/// Extension on [Object] providing utility to convert the object to ISO code.
///
/// This extension provides a method, [toUpperCaseIsoCode] which safely converts
/// the object to a trimmed, uppercase ISO string representation, if applicable.
///
/// Example usage:
/// ```dart
/// enum Colors { red, green, blue }
///
/// void main() {
///   // Example with enum:
///   Colors color = Colors.green;
///   print(color.toUpperCaseIsoCode()); // Outputs: GREEN
///
///   // Example with string:
///   String text = ' Hello, World! ';
///   print(text.toUpperCaseIsoCode()); // Outputs: HELLO, WORLD!
/// }
/// ```
extension SealedWorldObjectExtension on Object {
  /// Converts the object to a trimmed, uppercase string representation.
  ///
  /// If the object is an enum, this method returns the name of the enum entry
  /// in uppercase. Otherwise, it  converts the object to a string, trims it,
  /// and converts it to uppercase.
  String toUpperCaseIsoCode() {
    final object = this;
    if (object is Enum) return object.name.toUpperCase();

    return object.toString().trim().toUpperCase();
  }
}
