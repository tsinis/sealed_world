import "package:world_flags/world_flags.dart";

import "../models/iso/iso_collections.dart";
import "../models/typedefs.dart";

/// Convenience helpers for working with [IsoCollections] instances.
extension IsoCollectionsExtension on IsoCollections {
  /// Returns the countries to cache for flag/translation rendering.
  ///
  /// Prefers [IsoCollections.countriesForFlagsCache] when provided,
  /// otherwise falls back to [IsoCollections.countriesForTranslationCache].
  Set<WorldCountry> get anyCountriesToCache => countriesForFlagsCache.isEmpty
      ? countriesForTranslationCache.toSet()
      : countriesForFlagsCache.toSet();

  /// Returns the currencies to cache for flag/translation rendering.
  ///
  /// Prefers [IsoCollections.currenciesForFlagsCache] when provided,
  /// otherwise falls back to [IsoCollections.currenciesForTranslationCache].
  Set<FiatCurrency> get anyCurrenciesToCache => currenciesForFlagsCache.isEmpty
      ? currenciesForTranslationCache.toSet()
      : currenciesForFlagsCache.toSet();

  /// Returns the languages to cache for flag/translation rendering.
  ///
  /// Prefers [IsoCollections.languagesForFlagsCache] when provided,
  /// otherwise falls back to [IsoCollections.languagesForTranslationCache].
  Set<NaturalLanguage> get anyLanguagesToCache => languagesForFlagsCache.isEmpty
      ? languagesForTranslationCache.toSet()
      : languagesForFlagsCache.toSet();

  /// Creates a copy of this [IsoCollections] with selectively overridden data.
  IsoCollections copyWith({
    Iterable<WorldCountry>? countriesForTranslationCache,
    Iterable<FiatCurrency>? currenciesForTranslationCache,
    Iterable<NaturalLanguage>? languagesForTranslationCache,
    Map<FiatCurrency, Iterable<WorldCountry>>? currencyFlagsMap,
    Map<NaturalLanguage, Iterable<WorldCountry>>? languagesFlagsMap,
    Iterable<WorldCountry>? countriesForFlagsCache,
    Iterable<FiatCurrency>? currenciesForFlagsCache,
    Iterable<NaturalLanguage>? languagesForFlagsCache,
    Iterable<LocaleEntry>? localeMapResolution,
  }) => IsoCollections(
    currencyFlagsMap: currencyFlagsMap ?? this.currencyFlagsMap,
    languagesFlagsMap: languagesFlagsMap ?? this.languagesFlagsMap,
    localeMapResolution: localeMapResolution ?? this.localeMapResolution,
    countriesForTranslationCache:
        countriesForTranslationCache ?? this.countriesForTranslationCache,
    currenciesForTranslationCache:
        currenciesForTranslationCache ?? this.currenciesForTranslationCache,
    languagesForTranslationCache:
        languagesForTranslationCache ?? this.languagesForTranslationCache,
    countriesForFlagsCache:
        countriesForFlagsCache ?? this.countriesForFlagsCache,
    currenciesForFlagsCache:
        currenciesForFlagsCache ?? this.currenciesForFlagsCache,
    languagesForFlagsCache:
        languagesForFlagsCache ?? this.languagesForFlagsCache,
  );
}
