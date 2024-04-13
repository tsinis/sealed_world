import "package:sealed_countries/sealed_countries.dart";

import "../models/locale/typed_locale.dart";

/// Provides extension methods for [TypedLocale] class.
extension TypedLocaleExtension<T extends Object> on TypedLocale<T> {
  /// Returns a copy of the [TypedLocale] object with the specified properties.
  /// {@macro copy_with_method}
  // ignore: long-parameter-list, class has 6 properties.
  TypedLocale<T> copyWith({
    NaturalLanguage? language,
    T? country,
    Script? script,
    Map<WorldCountry, String>? countryTranslations,
    Map<FiatCurrency, String>? currencyTranslations,
    Map<NaturalLanguage, String>? languageTranslations,
  }) =>
      TypedLocale<T>(
        language ?? this.language,
        country: country ?? this.country,
        script: script ?? this.script,
        countryTranslations: countryTranslations ?? this.countryTranslations,
        currencyTranslations: currencyTranslations ?? this.currencyTranslations,
        languageTranslations: languageTranslations ?? this.languageTranslations,
      );
}
