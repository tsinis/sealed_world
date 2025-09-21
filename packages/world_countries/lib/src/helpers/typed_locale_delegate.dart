import "package:flutter/widgets.dart";
import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart";

import "../extensions/core/locale_extension.dart";
import "../extensions/typed_locale_extension.dart";
import "../models/locale/typed_locale.dart";
import "../models/typedefs.dart";

/// A class that implements the [LocalizationsDelegate] for [TypedLocale].
///
/// The [TypedLocaleDelegate] class is responsible for managing the
/// localizations delegate for [TypedLocale]. It allows customization of the
/// fallback language and the resolution of the locale map.
///
/// The [TypedLocaleDelegate] class has the following properties:
/// - [fallbackLanguage]: The fallback language to be used if the locale is not
///   available.
/// - [localeMapResolution]: The resolution strategy for resolving the locale
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
///           TypedLocale(LangPor(), country: CountryPrt()),
///         ),
///       ],
///     );
/// ```
@immutable
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
  /// The [l10nFormatter] parameter is optional. If provided, it customizes how
  /// ISO translations are formatted. It takes a [TypedLocale] and an
  /// [IsoTranslated] as input and returns a formatted string.
  const TypedLocaleDelegate({
    @mustBeConst this.fallbackLanguage,
    @mustBeConst this.localeMapResolution = defaultLocaleMapResolution,
    bool asyncTranslationCacheProcessing = true,
    @mustBeConst
    Iterable<WorldCountry> countriesForTranslationCache = WorldCountry.list,
    @mustBeConst
    Iterable<FiatCurrency> currenciesForTranslationCache = FiatCurrency.list,
    @mustBeConst
    Iterable<NaturalLanguage> languagesForTranslationCache =
        NaturalLanguage.list,
    L10NFormatter<TypedLocale, IsoTranslated>? l10nFormatter,
  }) : _asyncTranslationCacheProcessing = asyncTranslationCacheProcessing,
       _countriesForTranslationCache = countriesForTranslationCache,
       _currenciesForTranslationCache = currenciesForTranslationCache,
       _languagesForTranslationCache = languagesForTranslationCache,
       _l10nFormatter = l10nFormatter;

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
  /// The [l10nFormatter] parameter is optional. If provided, it customizes how
  /// ISO translations are formatted. It takes a [TypedLocale] and an
  /// [IsoTranslated] as input and returns a formatted string.
  const TypedLocaleDelegate.selectiveCache({
    @mustBeConst this.fallbackLanguage,
    @mustBeConst this.localeMapResolution = defaultLocaleMapResolution,
    bool asyncTranslationCacheProcessing = true,
    @mustBeConst Iterable<WorldCountry> countriesForTranslationCache = const {},
    @mustBeConst
    Iterable<FiatCurrency> currenciesForTranslationCache = const {},
    @mustBeConst
    Iterable<NaturalLanguage> languagesForTranslationCache = const {},
    L10NFormatter<TypedLocale, IsoTranslated>? l10nFormatter,
  }) : _asyncTranslationCacheProcessing = asyncTranslationCacheProcessing,
       _countriesForTranslationCache = countriesForTranslationCache,
       _currenciesForTranslationCache = currenciesForTranslationCache,
       _languagesForTranslationCache = languagesForTranslationCache,
       _l10nFormatter = l10nFormatter;

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
  static const defaultLocaleMapResolution = <LocaleEntry>[
    LocaleEntry(Locale("fil"), TypedLocale(LangTgl())),
    LocaleEntry(Locale("gsw"), TypedLocale(LangDeu(), country: CountryChe())),
    LocaleEntry(
      Locale.fromSubtags(languageCode: "bs", scriptCode: "Cyrl"),
      TypedLocale(LangSrp()),
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

  /// A formatter for customizing how ISO translations are formatted.
  ///
  /// When provided, this formatter is used to customize the string
  /// representation of ISO object translations. It takes a [TypedLocale] and an
  /// [IsoTranslated] object as input and returns a formatted string.
  // ignore: prefer-correct-callback-field-name, it's not a builder.
  final L10NFormatter<TypedLocale, IsoTranslated>? _l10nFormatter;

  @override
  @useResult
  bool isSupported(Locale locale) => _toTypedLocale(locale) != null;

  @override
  Future<TypedLocale?> load(Locale locale) async {
    final typedLocale = _toTypedLocale(locale);
    assert(
      typedLocale != null,
      "Unsupported ISO locale: $locale, consider adding "
      "`localeMapResolution` and/or `fallbackLanguage`",
    );

    return _asyncTranslationCacheProcessing
        ? await typedLocale?.copyWithTranslationsCacheAsync(
            languages: _languagesForTranslationCache,
            currencies: _currenciesForTranslationCache,
            countries: _countriesForTranslationCache,
            l10nFormatter: _l10nFormatter,
          )
        : typedLocale?.copyWithTranslationsCache(
            languages: _languagesForTranslationCache,
            currencies: _currenciesForTranslationCache,
            countries: _countriesForTranslationCache,
            l10nFormatter: _l10nFormatter,
          );
  }

  @override
  bool shouldReload(TypedLocaleDelegate old) => false;

  @override
  String toString() =>
      "TypedLocaleDelegate("
      """${fallbackLanguage == null ? '' : 'fallbackLanguage: ${fallbackLanguage.runtimeType}(), '}"""
      """${localeMapResolution == null ? '' : 'localeMapResolution: $localeMapResolution, '}"""
      "asyncTranslationCacheProcessing: $_asyncTranslationCacheProcessing, "
      "countriesForTranslationCache: $_countriesForTranslationCache, "
      "currenciesForTranslationCache: $_currenciesForTranslationCache, "
      "languagesForTranslationCache: $_languagesForTranslationCache, "
      "l10nFormatter: ${_l10nFormatter.runtimeType},)";

  @override
  Type get type => TypedLocale;

  TypedLocale? _maybeResolutionLocale(Locale locale) =>
      Map<Locale, TypedLocale>.fromEntries(localeMapResolution ?? [])[locale];

  TypedLocale? _toTypedLocale(Locale locale) =>
      _maybeResolutionLocale(locale) ??
      locale.maybeToTypedLocale(fallbackLanguage);

  /// Returns the [TypedLocale] associated with the given [BuildContext] or
  /// `null` if the [BuildContext] does not contain a [TypedLocale].
  ///
  /// The [context] parameter is the [BuildContext] from which
  /// the [TypedLocale] is retrieved.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final maybeTypedLocale = TypedLocaleDelegate.of(context);
  /// // or just as final typedLocale = context.maybeLocale;
  /// ```
  @Deprecated("Please use `TypedLocaleDelegate.of(context)` instead.")
  static TypedLocale? maybeOf(BuildContext context) => of(context);

  /// Returns the [TypedLocale] associated with the given [BuildContext] or
  /// `null` if the [BuildContext] does not contain a [TypedLocale].
  ///
  /// The [context] parameter is the [BuildContext] from which
  /// the [TypedLocale] is retrieved.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final typedLocale = TypedLocaleDelegate.of(context);
  /// // or just as final typedLocale = context.maybeLocale;
  /// ```
  @useResult
  static TypedLocale? of(BuildContext context) =>
      Localizations.of<TypedLocale>(context, TypedLocale);
}
