import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/country/country.dart";

/// Extension on [IsoStandardized] objects that provides type checking
/// functionality for world countries.
///
/// This extension allows for easy identification of whether an
/// [IsoStandardized] instance is a [WorldCountry].
extension IsoStandardizedWorldCountryExtension on IsoStandardized? {
  /// Pattern-matching helper for ISO types.
  ///
  /// Returns the result of the callback matching the type of this object. If
  /// there is no such callback (or it returns `null`), the result of [orElse]
  /// is returned instead. The [orElse] callback is invoked lazily, only when
  /// needed. Returns `null` if this object is `null`.
  T? mapWhenOrNull<T extends Object>({
    T? Function(WorldCountry country)? country,
    T? Function(FiatCurrency currency)? currency,
    T? Function(NaturalLanguage language)? language,
    T? Function(Script script)? script,
    T? Function(IsoStandardized iso)? orElse,
  }) {
    final iso = this;
    if (iso == null) return null;

    final result = switch (iso) {
      final WorldCountry value => country?.call(value),
      final FiatCurrency value => currency?.call(value),
      final NaturalLanguage value => language?.call(value),
      final Script value => script?.call(value),
      _ => null,
    };

    return result ?? orElse?.call(iso);
  }
}
