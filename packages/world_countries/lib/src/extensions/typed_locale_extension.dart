import "dart:ui" show Locale;

import "package:meta/meta.dart" show useResult;
import "package:world_flags/world_flags.dart";

import "../models/locale/typed_locale.dart";
import "../models/typedefs.dart";
import "core/duration_extension.dart";
import "iso_maps_extension.dart";

/// An extension on [TypedLocale] that provides utilities to manage translation
/// caches and transforms to other locale types.
extension TypedLocaleExtension<T extends TypedLocale> on T {
  /// Returns typed locale in the more basic (parent) type [BasicLocale],
  /// without translations and other additional properties.
  @useResult
  BasicLocale get asBasicLocale =>
      BasicLocale(language, countryCode: countryCode, script: script);

  /// Returns typed locale in the more basic (parent) type [BasicTypedLocale],
  /// without translations and other additional properties.
  @useResult
  BasicTypedLocale get asBasicTypedLocale => BasicTypedLocale(
    language,
    country: country,
    script: script,
    regionalCode: country == null ? countryCode : null,
  );

  /// Returns a weak typed (String-based) SDK locale representation of [Locale].
  @useResult
  Locale get asLocale => Locale.fromSubtags(
    languageCode: languageCode,
    countryCode: countryCode,
    scriptCode: script?.code,
  );

  /// Synchronously returns a copy of this [TypedLocale] with updated
  /// translation caches.
  ///
  /// {@template typed_locale_with_translations_cache}
  /// This updates or creates the translation  caches for [languages],
  /// [currencies], and [countries] for a specific [TypedLocale].
  ///
  /// If any of these parameters are omitted or `null`, the existing
  /// translations are retained. However, at least one of the
  /// iterables must be provided; otherwise, an assertion error will be thrown.
  ///
  /// - [languages]: An iterable of [NaturalLanguage] items to update the
  ///   language translations cache. If `null`, the existing language
  ///   translations are retained.
  /// - [currencies]: An iterable of [FiatCurrency] items to update the currency
  ///   translations cache. If `null`, the existing currency translations are
  ///   retained.
  /// - [countries]: An iterable of [WorldCountry] items to update the country
  ///   translations cache. If `null`, the existing country translations are
  ///   retained.
  ///
  /// An assertion error is thrown if all iterables are `null` as at least one
  /// iterable must be non-null to perform an update.
  /// {@endtemplate}
  ///
  /// Returns a new instance of [TypedLocale] with updated translation caches.
  @useResult
  T copyWithTranslationsCache({
    Iterable<NaturalLanguage>? languages,
    Iterable<FiatCurrency>? currencies,
    Iterable<WorldCountry>? countries,
    L10NFormatter<T, IsoTranslated>? l10nFormatter,
  }) {
    final l10n = _itemsToTranslate(languages, currencies, countries);

    return _copyWithTranslationMaps(
      _cache(l10n.languages, l10nFormatter),
      _cache(l10n.currencies, l10nFormatter),
      _cache(l10n.countries, l10nFormatter),
    );
  }

  /// Returns a future of a new [TypedLocale] instance with updated translation
  /// caches asynchronously.
  ///
  /// {@macro typed_locale_with_translations_cache}
  ///
  /// Returns a [Future] that completes with a new instance of [TypedLocale].
  @useResult
  Future<T> copyWithTranslationsCacheAsync({
    Iterable<NaturalLanguage>? languages,
    Iterable<FiatCurrency>? currencies,
    Iterable<WorldCountry>? countries,
    L10NFormatter<T, IsoTranslated>? l10nFormatter,
  }) async {
    final l10n = _itemsToTranslate(languages, currencies, countries);
    final languageMap = await _cacheAsync(l10n.languages, l10nFormatter);
    final currencyMap = await _cacheAsync(l10n.currencies, l10nFormatter);
    final countryMap = await _cacheAsync(l10n.countries, l10nFormatter);

    return _copyWithTranslationMaps(languageMap, currencyMap, countryMap);
  }

  Map<R, String>? _cache<R extends IsoTranslated>(
    Iterable<R> iso,
    L10NFormatter<T, R>? l10nFormatter,
  ) {
    if (iso.isEmpty) return null;

    final l10nMap = iso.commonNamesMap(
      options: LocaleMappingOptions(mainLocale: this),
    );
    if (l10nFormatter == null) return l10nMap;

    return _formatTranslation(l10nMap, l10nFormatter);
  }

  Future<Map<R, String>?> _cacheAsync<R extends IsoTranslated>(
    Iterable<R> iso, [
    L10NFormatter<T, R>? l10nFormatter,
  ]) async {
    if (iso.isEmpty) return null;
    await Duration.zero.sleep; // ignore: prefer-moving-to-variable, redundant .

    final l10nMap = iso.commonNamesMap(
      options: LocaleMappingOptions(mainLocale: this),
    );

    if (l10nFormatter == null) return l10nMap;
    await Duration.zero.sleep; // ignore: prefer-moving-to-variable, redundant .

    return _formatTranslation(l10nMap, l10nFormatter);
  }

  Map<R, String> _formatTranslation<R extends IsoTranslated>(
    Map<R, String> originalMap,
    L10NFormatter<T, R> l10nFormatter,
  ) {
    try {
      return originalMap.map(
        (iso, l10n) => MapEntry(iso, l10nFormatter(MapEntry(iso, l10n), this)),
      );
      // ignore: avoid_catches_without_on_clauses, should catch anything.
    } catch (error, stackTrace) {
      assert(
        false, //ignore: avoid-constant-assert-conditions, should always trigger
        "Error formatting translation map: $originalMap, $error on $stackTrace",
      );

      return originalMap;
    }
  }

  T _copyWithTranslationMaps(
    Map<NaturalLanguage, String>? languages,
    Map<FiatCurrency, String>? currencies,
    Map<WorldCountry, String>? countries,
  ) {
    if (languages == null && currencies == null && countries == null) {
      return this;
    }

    final translatedIsoMaps = isoMaps.copyWith(
      languageTranslations: languages ?? languageTranslations,
      currencyTranslations: currencies ?? currencyTranslations,
      countryTranslations: countries ?? countryTranslations,
    );

    // ignore: avoid-type-casts, Might be a breaking change.
    return copyWith(isoMaps: translatedIsoMaps) as T;
  }

  ({
    Iterable<WorldCountry> countries,
    Iterable<FiatCurrency> currencies,
    Iterable<NaturalLanguage> languages,
  })
  _itemsToTranslate(
    Iterable<NaturalLanguage>? languages,
    Iterable<FiatCurrency>? currencies,
    Iterable<WorldCountry>? countries,
  ) {
    assert(
      languages != null || currencies != null || countries != null,
      """At least one of `languages`, `currencies`, or `countries` must be non-null""",
    );

    return (
      languages: languages ?? languageTranslations.keys,
      currencies: currencies ?? currencyTranslations.keys,
      countries: countries ?? countryTranslations.keys,
    );
  }
}
