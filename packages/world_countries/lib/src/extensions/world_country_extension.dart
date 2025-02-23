import "dart:ui" show Locale;

import "package:world_flags/world_flags.dart";

import "../models/locale/typed_locale.dart";

/// Extension on [WorldCountry] to convert it to a [Locale] classes.
extension WorldCountryExtension on WorldCountry {
  /// Converts [WorldCountry] to a [Locale].
  ///
  /// The optional [languageCode] parameter specifies the language code for the
  /// locale. The optional [language] parameter specifies a [NaturalLanguage]
  /// object representing the language of the locale. If both not provided
  /// method will pick the first language in the languages list. The optional
  /// [scriptCode] parameter specifies the script code for the locale. Returns a
  /// [Locale] object representing the world country with the specified
  /// language, script, and country codes.
  ///
  /// Example:
  /// ```dart
  /// const country = CountryUsa();
  /// final locale = country.toLocale(languageCode: 'sk');
  /// print(locale.languageCode); // Prints: sk
  /// print(locale.countryCode); // Prints: US
  /// ```
  Locale toLocale({
    NaturalLanguage? language,
    String? languageCode,
    String? scriptCode,
  }) => Locale.fromSubtags(
    languageCode:
        language?.codeShort.toLowerCase() ??
        languageCode ??
        languages.first.codeShort.toLowerCase(),
    scriptCode: scriptCode,
    countryCode: codeShort,
  );

  /// Converts [WorldCountry] to a [TypedLocale].
  ///
  /// The optional [language] parameter specifies a [NaturalLanguage] object
  /// representing the language of the locale - if not provided method will pick
  /// first language in the languages list. The optional [script] parameter
  /// specifies the [Script] object for the locale, otherwise it will use the
  /// first script from the first language in the languages list.
  ///
  /// Example:
  /// ```dart
  /// const country = CountryUsa();
  /// final locale = country.toTypedLocale(language: LangRus());
  /// print(locale.languageCode); // Prints: ru
  /// print(locale.countryCode); // Prints: US
  /// ```
  TypedLocale toTypedLocale({NaturalLanguage? language, Script? script}) =>
      TypedLocale(
        language ?? languages.first,
        country: this,
        script:
            script ?? (language ?? languages.firstOrNull)?.scripts.firstOrNull,
      );

  /// Converts [WorldCountry] to a [TypedLocale].
  ///
  /// The optional [language] parameter specifies a [NaturalLanguage] object
  /// representing the language of the locale - if not provided method will pick
  /// first language in the languages list. The optional [script] parameter
  /// specifies the [Script] object for the locale, otherwise it will use the
  /// first script from the first language in the languages list.
  ///
  /// Example:
  /// ```dart
  /// const country = CountryUsa();
  /// final locale = country.toIsoLocale(language: LangRus());
  /// print(locale.languageCode); // Prints: ru
  /// print(locale.countryCode); // Prints: US
  /// ```
  @Deprecated("Renamed to `toTypedLocale`.")
  TypedLocale toIsoLocale({NaturalLanguage? language, Script? script}) =>
      toTypedLocale(language: language, script: script);
}
