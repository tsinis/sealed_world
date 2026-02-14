import "dart:ui" show Locale;

import "package:flutter/foundation.dart" show immutable;
import "package:world_flags/world_flags.dart";

import "../locale/typed_locale.dart";
import "../typedefs.dart";

/// Immutable holder for ISO-related collections used by localization and flags.
///
/// [IsoCollections] centralizes optional caches and lookups that power
/// localization-related features across countries, currencies, and languages.
/// Grouping these inputs in a single object keeps APIs concise and makes it
/// easy to share consistent configuration across delegates and widgets.
///
/// The class exposes two convenient constructors:
/// - [IsoCollections]: provides sensible defaults by including all known
///   countries, fiat currencies, and natural languages.
/// - [IsoCollections.selective]: starts with empty, constant collections so
///   you can opt-in to only what your app needs.
///
/// All fields are `final`, and instances are `const`-constructible.
@immutable
class IsoCollections {
  /// Creates a fully populated [IsoCollections] instance.
  ///
  /// - [countriesForTranslationCache]: iterable of countries pre-cached for
  ///   translations. Defaults to [WorldCountry.list].
  /// - [currenciesForTranslationCache]: iterable of fiat currencies pre-cached
  ///   for translations. Defaults to [FiatCurrency.list].
  /// - [languagesForTranslationCache]: iterable of natural languages pre-cached
  ///   for translations. Defaults to [NaturalLanguage.list].
  /// - [currencyFlagsMap]: mapping of fiat currencies to their [WorldCountry].
  ///   This enables custom flag rendering for currencies. Defaults to `{}`.
  /// - [languagesFlagsMap]: mapping of natural languages to their
  ///   [WorldCountry]. This enables custom flag rendering for languages.
  ///   Defaults to `{}`.
  /// - [countriesForFlagsCache]: optional iterable of countries used when
  ///   building country-backed flag relationships. Defaults to `[]`.
  /// - [currenciesForFlagsCache]: optional iterable of fiat currencies used
  ///   when building currency-to-flag relationships. Defaults to `[]`.
  /// - [languagesForFlagsCache]: optional iterable of natural languages used
  ///   when building language-to-flag relationships. Defaults to `[]`.
  /// - [localeMapResolution]: optional remapping between [Locale] and
  ///   [TypedLocale]. Defaults to [defaultLocaleMapResolution].
  const IsoCollections({
    this.localeMapResolution = defaultLocaleMapResolution,
    this.countriesForTranslationCache = WorldCountry.list,
    this.currenciesForTranslationCache = FiatCurrency.list,
    this.languagesForTranslationCache = NaturalLanguage.list,
    this.currencyFlagsMap = const {},
    this.languagesFlagsMap = const {},
    this.countriesForFlagsCache = const [],
    this.currenciesForFlagsCache = const [],
    this.languagesForFlagsCache = const [],
  });

  /// Creates a minimal [IsoCollections] instance with empty caches.
  ///
  /// Useful for selective caching scenarios where you only opt‑in to specific
  /// ISO objects, keep memory overhead minimal, and provide bespoke locale
  /// remapping entries.
  const IsoCollections.selective({
    this.localeMapResolution = const [],
    this.countriesForTranslationCache = const [],
    this.currenciesForTranslationCache = const [],
    this.languagesForTranslationCache = const [],
    this.currencyFlagsMap = const {},
    this.languagesFlagsMap = const {},
    this.countriesForFlagsCache = const [],
    this.currenciesForFlagsCache = const [],
    this.languagesForFlagsCache = const [],
  });

  /// Default remapping strategy used when no custom locale resolution is set.
  static const defaultLocaleMapResolution = <LocaleEntry>[
    LocaleEntry(Locale("fil"), TypedLocale(LangTgl())),
    LocaleEntry(Locale("gsw"), TypedLocale(LangDeu(), country: CountryChe())),
    LocaleEntry(
      Locale.fromSubtags(languageCode: "bs", scriptCode: "Cyrl"),
      TypedLocale(LangSrp()),
    ),
  ];

  /// Countries to pre-cache translations for.
  final Iterable<WorldCountry> countriesForTranslationCache;

  /// Fiat currencies to pre-cache translations for.
  final Iterable<FiatCurrency> currenciesForTranslationCache;

  /// Natural languages to pre-cache translations for.
  final Iterable<NaturalLanguage> languagesForTranslationCache;

  /// Optional mapping of currencies to flags (customizable per app).
  ///
  /// Custom mappings that override the default behavior. If a
  /// currency exists in this map, its custom country list is used instead of
  /// the computed one.
  final Map<FiatCurrency, Iterable<WorldCountry>> currencyFlagsMap;

  /// Optional mapping of languages to flags (customizable per app).
  ///
  /// Custom mappings that override the default behavior. If a
  /// language exists in this map, its custom country list is used instead of
  /// the computed one.
  final Map<NaturalLanguage, Iterable<WorldCountry>> languagesFlagsMap;

  /// Optional countries pre-fetched specifically for flag lookups.
  final Iterable<WorldCountry> countriesForFlagsCache;

  /// Optional currencies pre-fetched specifically for flag lookups.
  final Iterable<FiatCurrency> currenciesForFlagsCache;

  /// Optional languages pre-fetched specifically for flag lookups.
  final Iterable<NaturalLanguage> languagesForFlagsCache;

  /// Optional locale remapping strategy applied before fallback language.
  final Iterable<LocaleEntry>? localeMapResolution;

  @override
  String toString({bool short = true}) {
    if (short) {
      return "IsoCollections(countries: ${countriesForTranslationCache.length},"
          " currencies: ${currenciesForTranslationCache.length},"
          " languages: ${languagesForTranslationCache.length},"
          " currencyFlags: ${currencyFlagsMap.length},"
          " languageFlags: ${languagesFlagsMap.length},"
          " countryFlagsCache: ${countriesForFlagsCache.length},"
          " currencyFlagsCache: ${currenciesForFlagsCache.length},"
          " languageFlagsCache: ${languagesForFlagsCache.length},"
          " localeMapResolution: ${localeMapResolution?.length})";
    }

    final countriesStr =
        "[${countriesForTranslationCache.map((e) => e.code).join(', ')}]";
    final currenciesStr =
        "[${currenciesForTranslationCache.map((e) => e.code).join(', ')}]";
    final languagesStr =
        "[${languagesForTranslationCache.map((e) => e.code).join(', ')}]";
    final currencyFlagsString =
        "{${currencyFlagsMap.entries.map((e) => '${e.key.code}: '
            '${e.value.map((i) => i.code).join(', ')}').join(', ')}}";
    final languagesFlagsString =
        "{${languagesFlagsMap.entries.map((e) => '${e.key.code}: '
            '${e.value.map((i) => i.code).join(', ')}').join(', ')}}";
    final countriesFlagsCacheString =
        "[${countriesForFlagsCache.map((e) => e.code).join(', ')}]";
    final currenciesFlagsCacheString =
        "[${currenciesForFlagsCache.map((e) => e.code).join(', ')}]";
    final langsFlagsCacheString =
        "[${languagesForFlagsCache.map((e) => e.code).join(', ')}]";
    final localeMapResolutionString =
        "[${localeMapResolution?.map((entry) => '${entry.key} '
                '${entry.value}').join(', ') ?? ''}]";

    return "IsoCollections(\n"
        "  countries: $countriesStr,\n"
        "  currencies: $currenciesStr,\n"
        "  languages: $languagesStr,\n"
        "  currencyFlags: $currencyFlagsString,\n"
        "  languageFlags: $languagesFlagsString,\n"
        "  countryFlagsCache: $countriesFlagsCacheString,\n"
        "  currencyFlagsCache: $currenciesFlagsCacheString,\n"
        "  languageFlagsCache: $langsFlagsCacheString,\n"
        "  localeMapResolution: $localeMapResolutionString\n)";
  }
}
