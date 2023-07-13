import "dart:ui";

import "package:sealed_countries/sealed_countries.dart";

/// Extension on [WorldCountry] to convert it to a [Locale].
extension WorldCountryExtension on WorldCountry {
  /// Converts [WorldCountry] to a [Locale].
  ///
  /// The optional [languageCode] parameter specifies the language code for the
  /// locale. If not provided, it defaults to "und" (undefined). The optional
  /// [language] parameter specifies a [NaturalLanguage] object representing the
  /// language of the locale - if provided, it is used instead of languageCode.
  /// The optional [scriptCode] parameter specifies the script code for the
  /// locale. Returns a [Locale] object representing the world country with the
  /// specified language, script, and country codes.
  ///
  /// Example:
  /// ```dart
  /// final country = WorldCountry.unitedStates;
  /// final locale = country.toLocale(languageCode: 'en');
  /// print(locale); // Prints: en_US
  /// ```
  Locale toLocale({
    String languageCode = "und",
    NaturalLanguage? language,
    String? scriptCode,
  }) =>
      Locale.fromSubtags(
        languageCode: language?.codeShort.toLowerCase() ?? languageCode,
        scriptCode: scriptCode,
        countryCode: codeShort,
      );
}
