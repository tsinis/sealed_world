// ignore_for_file: avoid-nullable-parameters-with-default-values

import "package:flutter/foundation.dart" show immutable;
import "package:world_flags/world_flags.dart";

import "../../extensions/typed_locale_extension.dart";
import "typed_locale.dart";

/// A class representing an ISO locale with optional country and script.
///
/// The [IsoLocale] class extends the [TypedLocale] class and adds additional
/// strongly typed property for country It provides a way to associate
/// a specific language with optional country and script information.
///
/// The [IsoLocale] class has the following properties:
/// - `language`: The language of the locale.
/// - `country`: The optional country information of type [WorldCountry].
/// - `script`: The optional script information.
///
/// Example usage:
///
/// ```dart
/// const isoLocale = IsoLocale(
///   LangEng(),
///   country: CountryUsa(),
///   script: ScriptLatn(),
/// );
/// ```
@immutable
final class IsoLocale extends TypedLocale<WorldCountry> {
  /// Creates an instance of [IsoLocale].
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  const IsoLocale(
    super.language, {
    super.country,
    super.script,
    super.countryTranslations,
    super.currencyTranslations,
    super.languageTranslations,
  });

  /// Creates an instance of [IsoLocale] from subtags.
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  IsoLocale.fromSubtags({
    required super.language,
    super.country,
    super.script,
    super.countryTranslations,
    super.currencyTranslations,
    super.languageTranslations,
  }) : super.fromSubtags();

  /// Creates an instance of [IsoLocale] with implicit translations cache
  /// creation.
  ///
  /// The [language] parameter is required. The [country] and [script]
  /// parameters are optional.
  ///
  /// {@macro typed_locale_with_translations_cache}
  ///
  factory IsoLocale.withTranslationsCache(
    NaturalLanguage language, {
    WorldCountry? country,
    Script? script,
    Iterable<NaturalLanguage>? languages = NaturalLanguage.list,
    Iterable<FiatCurrency>? currencies = FiatCurrency.list,
    Iterable<WorldCountry>? countries = WorldCountry.list,
  }) =>
      IsoLocale(language, country: country, script: script)
          .copyWithTranslationsCache(
        languages: languages,
        currencies: currencies,
        countries: countries,
      );

  @override
  IsoLocale copyWith({
    NaturalLanguage? language,
    WorldCountry? country,
    Script? script,
    Map<WorldCountry, String>? countryTranslations,
    Map<FiatCurrency, String>? currencyTranslations,
    Map<NaturalLanguage, String>? languageTranslations,
  }) =>
      IsoLocale(
        language ?? this.language,
        country: country ?? this.country,
        script: script ?? this.script,
        countryTranslations: countryTranslations ?? this.countryTranslations,
        currencyTranslations: currencyTranslations ?? this.currencyTranslations,
        languageTranslations: languageTranslations ?? this.languageTranslations,
      );

  @override
  String? get countryCode => country?.codeShort;
}
