import "iso_object_extension_type.dart" show IsoObject;

/// Extension on [Object] providing utility to convert the object to ISO code.
///
/// This extension provides a method, [toUpperCaseIsoCode] which safely converts
/// the object to a trimmed, uppercase ISO string representation, if applicable.
///
/// **Note:** This extension is deprecated in favor of the [IsoObject] extension
/// type.
/// The extension type provides better type safety and avoids polluting the
/// global [Object] scope.
@Deprecated(
  "Use `IsoObject` extension type instead. "
  "This extension will be removed in a future major version of the package.",
)
extension SealedWorldObjectExtension on Object {
  /// Converts the object to a trimmed, uppercase string representation.
  ///
  /// If the object is an enum, this method returns the name of the enum entry
  /// in uppercase. Otherwise, it  converts the object to a string, trims it,
  /// and converts it to uppercase.
  ///
  /// **Deprecated:** Use [IsoObject] extension type instead:
  /// ```dart
  /// IsoObject(yourObject).toUpperCaseCode();
  /// IsoObject.maybe(yourObject)?.toUpperCaseCode();
  /// ```
  @Deprecated(
    "Use `IsoObject(object).toUpperCaseCode()` or "
    "`IsoObject.maybe(object)?.toUpperCaseCode()` instead.",
  )
  String toUpperCaseIsoCode() => IsoObject(this).toUpperCaseCode();
}
