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
  /// Returns the result of the first matching callback or `null` if none match.
  T? mapWhenOrNull<T extends Object>({
    T? Function(WorldCountry country)? country,
    T? Function(FiatCurrency currency)? currency,
    T? Function(NaturalLanguage language)? language,
    T? Function(Script script)? script,
    T? Function(IsoStandardized iso)? orElse,
  }) {
    final iso = this;

    if (iso == null) return null;
    final elseResult = orElse?.call(iso);

    if (iso is WorldCountry) return country?.call(iso) ?? elseResult;
    if (iso is FiatCurrency) return currency?.call(iso) ?? elseResult;
    if (iso is NaturalLanguage) return language?.call(iso) ?? elseResult;
    if (iso is Script) return script?.call(iso) ?? elseResult;

    return elseResult;
  }
}
