import "package:flutter/foundation.dart" show immutable;
import "package:sealed_countries/sealed_countries.dart";

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
