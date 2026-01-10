// ignore: lines_longer_than_80_chars, we are re-using `Locale` implementations.
// ignore_for_file: prefer-overriding-parent-equality, avoid-nullable-parameters-with-default-values, avoid-suspicious-super-overrides

import "dart:ui" show Locale, keepToString;

import "package:flutter/foundation.dart" show immutable;
import "package:world_flags/world_flags.dart";

import "../../extensions/typed_locale_extension.dart";
import "../iso/iso_maps.dart";
import "../typedefs.dart";

/// A class representing a typed locale with optional country and script.
///
/// The [TypedLocale] class extends the [Locale] class and adds additional
/// properties for language, country, and script. It provides a way to associate
/// a specific language with optional country and script information.
///
/// The [TypedLocale] class has the following properties:
/// - `language`: The [NaturalLanguage] representing the language of the locale.
/// - `country`: The optional country information of generic type `CountryType`.
/// - `script`: The optional script information of type [Script].
///
/// Example usage:
///
/// ```dart
/// const typedLocale = TypedLocale(LangEng(), script: ScriptLatn());
/// ```
@immutable
class TypedLocale extends Locale implements BasicTypedLocale {
  /// Creates an instance of [TypedLocale].
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  /// The [isoMaps] parameter encapsulates translation and flag maps.
  /// The [regionalCode] parameter is optional.
  const TypedLocale(
    this.language, {
    this.country,
    this.script,
    this.isoMaps = const IsoMaps(),
    String? regionalCode,
  }) : assert(
         regionalCode == null || country == null,
         "Cannot provide both `regionalCode` and `country` at the same time",
       ),
       _regionalCode = regionalCode,
       super(" ", " ");

  /// Creates an instance of [TypedLocale] from subtags.
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  /// The [isoMaps] parameter encapsulates translation and flag maps.
  /// The [regionalCode] parameter is optional.
  TypedLocale.fromSubtags({
    required this.language,
    this.country,
    this.script,
    String? regionalCode,
    this.isoMaps = const IsoMaps(),
  }) : assert(
         regionalCode == null || country == null,
         "Cannot provide both `regionalCode` and `country` at the same time",
       ),
       _regionalCode = regionalCode,
       super.fromSubtags(
         languageCode: language.codeShort.toLowerCase(),
         scriptCode: script?.code,
         countryCode: country?.codeShort ?? regionalCode,
       );

  /// Creates an instance of [TypedLocale] with implicit translations cache
  /// creation.
  ///
  /// The [language] parameter is required. The [country] and [script]
  /// parameters are optional.
  ///
  /// The [languages], [currencies], and [countries] parameters specify which
  /// ISO objects will be cached in the translations.
  ///
  /// The [regionalCode] parameter is optional and can be used instead of
  /// providing a [country] parameter.
  ///
  /// The [l10nFormatter] parameter is optional. If provided, it customizes
  /// how ISO translations are formatted. It takes a [TypedLocale] and an
  /// [IsoTranslated] object as input and returns a formatted string.
  ///
  /// {@macro typed_locale_with_translations_cache}
  ///
  factory TypedLocale.withTranslationsCache(
    NaturalLanguage language, {
    WorldCountry? country,
    Script? script,
    Iterable<NaturalLanguage>? languages = NaturalLanguage.list,
    Iterable<FiatCurrency>? currencies = FiatCurrency.list,
    Iterable<WorldCountry>? countries = WorldCountry.list,
    String? regionalCode,
    L10NFormatter<TypedLocale, IsoTranslated>? l10nFormatter,
  }) =>
      TypedLocale(
        language,
        country: country,
        script: script,
        regionalCode: regionalCode,
      ).copyWithTranslationsCache(
        languages: languages,
        currencies: currencies,
        countries: countries,
        l10nFormatter: l10nFormatter,
      );

  @override
  final NaturalLanguage language;

  @override
  final WorldCountry? country;

  @override
  final Script? script;

  /// Translation and flag maps backing this locale instance.
  final IsoMaps isoMaps;

  /// Common country names translations for the current locale.
  TranslationMap<WorldCountry> get countryTranslations =>
      isoMaps.countryTranslations;

  /// Common currency names translations for the current locale.
  TranslationMap<FiatCurrency> get currencyTranslations =>
      isoMaps.currencyTranslations;

  /// Common language names translations for the current locale.
  TranslationMap<NaturalLanguage> get languageTranslations =>
      isoMaps.languageTranslations;

  /// Optional currency flags associated with this locale.
  Map<FiatCurrency, BasicFlag> get currencyFlags => isoMaps.currencyFlags;

  /// Optional language flags associated with this locale.
  Map<NaturalLanguage, BasicFlag> get languageFlags => isoMaps.languageFlags;

  @override
  String? get countryCode =>
      country?.codeShort ??
      country?.code ??
      IsoString.maybe(_regionalCode)?.toUpperCaseCode();

  @override
  String get languageCode => language.codeShort.toLowerCase();

  @override
  String? get scriptCode => script?.code;

  // TODO! Test 3 letter codes construction too.
  /// Returns a copy of the [TypedLocale] object with the specified properties.
  /// {@macro copy_with_method}
  TypedLocale copyWith({
    NaturalLanguage? language,
    WorldCountry? country,
    Script? script,
    IsoMaps? isoMaps,
    String? regionalCode,
  }) => TypedLocale(
    language ?? this.language,
    country: country ?? this.country,
    script: script ?? this.script,
    isoMaps: isoMaps ?? this.isoMaps,
    regionalCode: regionalCode ?? _regionalCode,
  );

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) =>
      asBasicLocale.toJson(codec: codec);

  @override
  String toLanguageTag() => toUnicodeLocaleId(separator: "-");

  @keepToString
  @override
  String toString({bool short = true}) => short
      ? toUnicodeLocaleId()
      : "TypedLocale(${language.runtimeType}()"
            "${country == null ? '' : ', country: ${country.runtimeType}()'}"
            '''${countryCode == null || country != null ? '' : ', countryCode: "$countryCode"'}'''
            "${script == null ? '' : ', script: ${script.runtimeType}()'})";

  final String? _regionalCode;
}
