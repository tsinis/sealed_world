import "../../model/locale/basic_typed_locale.dart";

/// An extension on [BasicTypedLocale] that provides additional helpers for
/// working with typed locales.
extension BasicTypedLocaleExtension<T extends BasicTypedLocale> on T {
  /// Just an alias for the [countryCode] property. Might be useful for
  /// consistency (when regionalCode parameter is provided to the constructor).
  String? get regionalCode => countryCode; // TODO? Move to the BasicLocale?
}
