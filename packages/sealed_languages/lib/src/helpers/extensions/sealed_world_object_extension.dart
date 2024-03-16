/// Extension on [Object?] providing utility to convert the object to ISO code.
///
/// This extension provides a method, [maybeToIsoCode], which safely converts
/// the object to a trimmed, uppercase ISO string representation, if applicable.
/// It handles cases where the object might be `null`, an enum, or any other
/// type that can be converted to a string.
///
/// Example usage:
/// ```dart
/// enum Colors { red, green, blue }
///
/// void main() {
///   // Example with enum:
///   Colors color = Colors.green;
///   print(color.maybeToIsoCode()); // Outputs: GREEN
///
///   // Example with string:
///   String text = ' Hello, World! ';
///   print(text.maybeToIsoCode()); // Outputs: HELLO, WORLD!
///
///   // Example with null:
///   Object? nullObject;
///   print(nullObject.maybeToIsoCode()); // Outputs: null
/// }
/// ```
extension SealedWorldObjectExtension on Object {
  /// Converts the object to a trimmed, uppercase string representation.
  ///
  /// If the object is an enum, this method returns the name of the enum entry
  /// in uppercase. If the object is `null`, it returns `null`. Otherwise, it
  /// converts the object to a string, trims it, and converts it to uppercase.
  ///
  /// Returns a string representation of the object if it is not `null`,
  /// otherwise `null`.
  String? maybeToIsoCode() {
    final object = this;
    if (object is Enum) return object.name.toUpperCase();

    return object.toString().trim().toUpperCase();
  }
}
