import "package:flutter/widgets.dart";
import "package:world_flags/world_flags.dart";

import "../extensions/locale_extension.dart";
import "../extensions/typed_locale_extension.dart";
import "../models/locale/iso_locale.dart";
import "../models/locale/typed_locale.dart";
import "../models/typedefs.dart";

/// A class that implements the [LocalizationsDelegate] for [TypedLocale].
///
/// The [TypedLocaleDelegate] class is responsible for managing the
/// localizations delegate for [TypedLocale]. It allows customization of the
/// fallback language and the resolution of the locale map.
///
/// The [TypedLocaleDelegate] class has the following properties:
/// - `fallbackLanguage`: The fallback language to be used if the locale is not
///   available.
/// - `localeMapResolution`: The resolution strategy for resolving the locale
///   map.
///
/// Example usage:
///
/// ```dart
/// const typedLocaleDelegate = TypedLocaleDelegate(
///       localeMapResolution: [
///         LocaleEntry(
///           /// Brazilian Portuguese could be mapped to Euro Portuguese.
///           Locale("pt", "BR"),
///           IsoLocale(LangPor(), country: CountryPrt()),
///         ),
///       ],
///     );
/// ```
class TypedLocaleDelegate implements LocalizationsDelegate<TypedLocale?> {
  /// Creates an instance of [TypedLocaleDelegate].
  ///
  /// The [fallbackLanguage] parameter is optional. If provided, it sets the
  /// fallback language. The [localeMapResolution] parameter is optional. If
  /// provided, it sets the resolution strategy for the locale map.
  /// The [countriesForTranslationCache] parameter is optional. If provided,
  /// it sets the countries for translation cache.
  /// The [currenciesForTranslationCache] parameter is optional. If provided,
  /// it sets the currencies for translation cache.
  /// The [languagesForTranslationCache] parameter is optional. If provided,
  /// it sets the languages for translation cache.
  /// The [asyncTranslationCacheProcessing] parameter is optional. If provided,
  /// it sets the async translation cache processing. Default to `true`.
  const TypedLocaleDelegate({
    this.fallbackLanguage,
    this.localeMapResolution = defaultLocaleMapResolution,
    bool asyncTranslationCacheProcessing = true,
    Iterable<WorldCountry> countriesForTranslationCache = WorldCountry.list,
    Iterable<FiatCurrency> currenciesForTranslationCache = FiatCurrency.list,
    Iterable<NaturalLanguage> languagesForTranslationCache =
        NaturalLanguage.list,
  })  : _asyncTranslationCacheProcessing = asyncTranslationCacheProcessing,
        _countriesForTranslationCache = countriesForTranslationCache,
        _currenciesForTranslationCache = currenciesForTranslationCache,
        _languagesForTranslationCache = languagesForTranslationCache;

  /// Creates an instance of [TypedLocaleDelegate] without translations caching.
  /// This is useful when you don't want to cache the translations for the
  /// specific unused ISO objects. For example you are only using country
  /// pickers, so you might not need currency an language translations. In this
  /// case you can provide [countriesForTranslationCache] for the countries.
  ///
  /// The [fallbackLanguage] parameter is optional. If provided, it sets the
  /// fallback language. The [localeMapResolution] parameter is optional. If
  /// provided, it sets the resolution strategy for the locale map.
  /// The [countriesForTranslationCache] parameter is optional. If provided,
  /// it sets the countries for translation cache.
  /// The [currenciesForTranslationCache] parameter is optional. If provided,
  /// it sets the currencies for translation cache.
  /// The [languagesForTranslationCache] parameter is optional. If provided,
  /// it sets the languages for translation cache.
  /// The [asyncTranslationCacheProcessing] parameter is optional. If provided,
  /// it sets the async translation cache processing. Default to `true`.
  const TypedLocaleDelegate.selectiveCache({
    this.fallbackLanguage,
    this.localeMapResolution = defaultLocaleMapResolution,
    bool asyncTranslationCacheProcessing = true,
    Iterable<WorldCountry> countriesForTranslationCache = const {},
    Iterable<FiatCurrency> currenciesForTranslationCache = const {},
    Iterable<NaturalLanguage> languagesForTranslationCache = const {},
  })  : _asyncTranslationCacheProcessing = asyncTranslationCacheProcessing,
        _countriesForTranslationCache = countriesForTranslationCache,
        _currenciesForTranslationCache = currenciesForTranslationCache,
        _languagesForTranslationCache = languagesForTranslationCache;

  /// A constant list of [LocaleEntry] objects that define the default
  /// resolution for locale mapping.
  ///
  /// Each [LocaleEntry] in the list maps a [Locale] to an [TypedLocale]. This
  /// mapping is used to resolve the language and country of a [Locale] to the
  /// corresponding language and country.
  ///
  /// The current mappings are
  /// * Filipino (Pilipino) to Tagalog. Tagalog is the foundation of Filipino.
  ///   More details can be found at: https://en.wikipedia.org/wiki/Tagalog_language.
  /// * Swiss German Alemannic Alsatian to German (Switzerland).
  /// * Bosnian (written in the Cyrillic script) to Serbian.
  ///
  /// These mappings are used as the default resolution when no other locale
  /// mapping is provided.
  static const List<LocaleEntry> defaultLocaleMapResolution = [
    LocaleEntry(Locale("fil"), IsoLocale(LangTgl())),
    LocaleEntry(Locale("gsw"), IsoLocale(LangDeu(), country: CountryChe())),
    LocaleEntry(
      Locale.fromSubtags(languageCode: "bs", scriptCode: "Cyrl"),
      IsoLocale(LangSrp()),
    ),
  ];

  /// The fallback language to be used if the locale cannot be converted to
  /// [TypedLocale] instance.
  ///
  /// If the locale cannot be converted, the fallback language will be used
  /// as a default (with attempt to create a [TypedLocale] out of it instead).
  final NaturalLanguage? fallbackLanguage;

  /// The resolution strategy for resolving the locale map.
  ///
  /// The locale map resolution strategy determines how the locale map
  /// is resolved based on the available locales.
  final Iterable<LocaleEntry>? localeMapResolution;

  final bool _asyncTranslationCacheProcessing;
  final Iterable<WorldCountry> _countriesForTranslationCache;
  final Iterable<FiatCurrency> _currenciesForTranslationCache;
  final Iterable<NaturalLanguage> _languagesForTranslationCache;

  @override
  bool isSupported(Locale locale) => _toTypedLocale(locale) != null;

  @override
  Future<TypedLocale?> load(Locale locale) async {
    final typedLocale = _toTypedLocale(locale);
    assert(
      typedLocale != null,
      """Unsupported ISO locale: $locale, consider adding `localeMapResolution` and/or `fallbackLanguage`""",
    );

    return _asyncTranslationCacheProcessing
        ? await typedLocale?.copyWithTranslationsCacheAsync(
            languages: _languagesForTranslationCache,
            currencies: _currenciesForTranslationCache,
            countries: _countriesForTranslationCache,
          )
        : typedLocale?.copyWithTranslationsCache(
            languages: _languagesForTranslationCache,
            currencies: _currenciesForTranslationCache,
            countries: _countriesForTranslationCache,
          );
  }

  @override
  bool shouldReload(TypedLocaleDelegate old) => false;

  @override
  String toString() =>
      """TypedLocaleDelegate(fallbackLanguage: $fallbackLanguage, localeMapResolution: $localeMapResolution)""";

  @override
  Type get type => TypedLocale;

  TypedLocale? _maybeResolutionLocale(Locale locale) =>
      Map<Locale, TypedLocale>.fromEntries(localeMapResolution ?? [])[locale];

  TypedLocale? _toTypedLocale(Locale locale) =>
      _maybeResolutionLocale(locale) ??
      locale.maybeToTypedLocale(fallbackLanguage);

  /// Returns the [TypedLocale] associated with the given [BuildContext].
  ///
  /// The [context] parameter is the [BuildContext] from which
  /// the [TypedLocale] is retrieved.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final typedLocale = TypedLocaleDelegate.maybeOf(context);
  /// // or just as final typedLocale = context.maybeLocale;
  /// ```
  static TypedLocale? maybeOf(BuildContext context) =>
      Localizations.of<TypedLocale?>(context, TypedLocale);
}
