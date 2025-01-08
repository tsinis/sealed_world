// ignore: lines_longer_than_80_chars, we are re-using Locale implementations.
// ignore_for_file: prefer-overriding-parent-equality, avoid-nullable-parameters-with-default-values, avoid-suspicious-super-overrides

import "dart:ui" show Locale;

import "package:flutter/foundation.dart" show immutable, required;
import "package:world_flags/world_flags.dart";

import "../../extensions/typed_locale_extension.dart";

/// A class representing a typed locale with optional country and script.
/// However it's usually better to use the `IsoLocale` class instead of
/// this one, in most cases, because ot generic nature of country argument.
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
/// const typedLocale = TypedLocale<String>(
///   LangEng(),
///   country: 'US',
///   script: ScriptLatn(),
/// );
/// ```
@immutable
base class TypedLocale<CountryType extends Object> extends Locale
    implements BasicLocale {
  /// Creates an instance of [TypedLocale].
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  const TypedLocale(
    this.language, {
    this.country,
    this.script,
    this.countryTranslations = const {},
    this.currencyTranslations = const {},
    this.languageTranslations = const {},
  }) : super(" ", " ");

  /// Creates an instance of [TypedLocale] from subtags.
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  TypedLocale.fromSubtags({
    required this.language,
    this.country,
    this.script,
    this.countryTranslations = const {},
    this.currencyTranslations = const {},
    this.languageTranslations = const {},
  }) : super.fromSubtags(
          languageCode: language.codeShort.toLowerCase(),
          scriptCode: script?.code,
          countryCode: country?.toUpperCaseIsoCode(),
        );

  /// Creates an instance of [TypedLocale] with implicit translations cache
  /// creation.
  ///
  /// The [language] parameter is required. The [country] and [script]
  /// parameters are optional.
  ///
  /// {@macro typed_locale_with_translations_cache}
  ///
  factory TypedLocale.withTranslationsCache(
    NaturalLanguage language, {
    CountryType? country,
    Script? script,
    Iterable<NaturalLanguage>? languages = NaturalLanguage.list,
    Iterable<FiatCurrency>? currencies = FiatCurrency.list,
    Iterable<WorldCountry>? countries = WorldCountry.list,
  }) =>
      TypedLocale(language, country: country, script: script)
          .copyWithTranslationsCache(
        languages: languages,
        currencies: currencies,
        countries: countries,
      );

  @override
  final NaturalLanguage language;

  /// The optional country information of generic type `CountryType`.
  final CountryType? country;

  @override
  final Script? script;

  /// Common country names translations for the current locale.
  final Map<WorldCountry, String> countryTranslations;

  /// Common currency names translations for the current locale.
  final Map<FiatCurrency, String> currencyTranslations;

  /// Common language names translations for the current locale.
  final Map<NaturalLanguage, String> languageTranslations;

  @override
  @required
  String? get countryCode => country?.toUpperCaseIsoCode();

  @override
  String get languageCode => language.codeShort.toLowerCase();

  @override
  String? get scriptCode => script?.code;

  /// Returns a copy of the [TypedLocale] object with the specified properties.
  /// {@macro copy_with_method}
  @required
  // ignore: long-parameter-list, class has 6 properties.
  TypedLocale<CountryType> copyWith({
    NaturalLanguage? language,
    CountryType? country,
    Script? script,
    Map<WorldCountry, String>? countryTranslations,
    Map<FiatCurrency, String>? currencyTranslations,
    Map<NaturalLanguage, String>? languageTranslations,
  }) =>
      TypedLocale<CountryType>(
        language ?? this.language,
        country: country ?? this.country,
        script: script ?? this.script,
        countryTranslations: countryTranslations ?? this.countryTranslations,
        currencyTranslations: currencyTranslations ?? this.currencyTranslations,
        languageTranslations: languageTranslations ?? this.languageTranslations,
      );

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) =>
      asBasicLocale.toJson(codec: codec);

  // TODO! Provide String toLanguageTag() => toUnicodeLocaleId('-'); override.
}
