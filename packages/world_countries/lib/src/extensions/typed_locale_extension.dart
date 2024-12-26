import "package:world_flags/world_flags.dart";

import "../models/locale/typed_locale.dart";
import "duration_extension.dart";

/// An extension on [TypedLocale] that provides utilities to manage translation
/// caches.
extension TypedLocaleExtension<O extends Object, T extends TypedLocale<O>>
    on T {
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
  T copyWithTranslationsCache({
    Iterable<NaturalLanguage>? languages,
    Iterable<FiatCurrency>? currencies,
    Iterable<WorldCountry>? countries,
  }) {
    final translation = _itemsToTranslate(languages, currencies, countries);

    return _copyWithTranslationMaps(
      _cache(translation.languages),
      _cache(translation.currencies),
      _cache(translation.countries),
    );
  }

  /// Returns a future of a new [TypedLocale] instance with updated translation
  /// caches asynchronously.
  ///
  /// {@macro typed_locale_with_translations_cache}
  ///
  /// Returns a [Future] that completes with a new instance of [TypedLocale].
  Future<T> copyWithTranslationsCacheAsync({
    Iterable<NaturalLanguage>? languages,
    Iterable<FiatCurrency>? currencies,
    Iterable<WorldCountry>? countries,
  }) async {
    final translation = _itemsToTranslate(languages, currencies, countries);
    final languageMap = await _cacheAsync(translation.languages);
    final currencyMap = await _cacheAsync(translation.currencies);
    final countryMap = await _cacheAsync(translation.countries);

    return _copyWithTranslationMaps(languageMap, currencyMap, countryMap);
  }

  Map<R, String>? _cache<R extends IsoTranslated>(Iterable<R> isoItems) =>
      isoItems.isEmpty ? null : isoItems.commonNamesCacheMap(this);

  Future<Map<R, String>?> _cacheAsync<R extends IsoTranslated>(
    Iterable<R> iso,
  ) async {
    if (iso.isEmpty) return null;
    await Duration.zero.sleep;

    return iso.commonNamesCacheMap(this);
  }

  T _copyWithTranslationMaps(
    Map<NaturalLanguage, String>? languages,
    Map<FiatCurrency, String>? currencies,
    Map<WorldCountry, String>? countries,
  ) =>
      // ignore: avoid-type-casts, Might be a breaking change.
      copyWith(
        countryTranslations: countries, // Common country names cache.
        currencyTranslations: currencies, // Common currency names cache.
        languageTranslations: languages, // Common language names cache.
      ) as T;

  ({
    Iterable<WorldCountry> countries,
    Iterable<FiatCurrency> currencies,
    Iterable<NaturalLanguage> languages,
  }) _itemsToTranslate(
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
