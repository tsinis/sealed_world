import "dart:ui";

import "package:world_flags/world_flags.dart";

/// Extension on [NaturalLanguage] to convert it to a [Locale].
extension NaturalLanguageExtension on NaturalLanguage {
  /// Converts [NaturalLanguage] to a [Locale].
  ///
  /// The optional [countryCode] parameter specifies the country code for the
  /// locale. The optional [scriptCode] parameter specifies the script code for
  /// the locale. Method returns a [Locale] object representing the natural
  /// language with the specified country and script codes.
  ///
  /// Example:
  /// ```dart
  /// const language = LangEng();
  /// final locale = language.toLocale(countryCode: 'US');
  /// print(locale); // Prints: en_US
  /// ```
  Locale toLocale({String? countryCode, String? scriptCode}) =>
      Locale.fromSubtags(
        languageCode: codeShort.toLowerCase(),
        scriptCode: scriptCode,
        countryCode: countryCode,
      ); // TODO? Add toLocale with typed params?
}
