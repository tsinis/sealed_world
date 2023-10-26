import "../../world_countries.dart";

// TODO! Remove.
/// An extension that provides a deprecated getter for the common name.
extension DeprecatedTranslatedNameExtension on TranslatedName {
  /// Gets the common name.
  ///
  /// This getter is deprecated. Please use the `name` getter instead.
  @Deprecated("Use `name` getter instead")
  String get common => name;
}
