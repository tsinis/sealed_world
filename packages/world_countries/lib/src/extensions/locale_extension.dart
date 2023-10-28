import "dart:ui";

import "package:sealed_countries/sealed_countries.dart";

import "../models/locale/typed_locale.dart";

/// Extension on [Locale] that provides utility methods for retrieving language
/// and country information from a [Locale] object.
extension LocaleExtension on Locale? {
  TypedLocale<String>? maybeToTypedLocale([NaturalLanguage? fallbackLanguage]) {
    final language = maybeLanguage ?? fallbackLanguage;

    return language != null
        ? TypedLocale(language, country: this?.countryCode, script: maybeScript)
        : null;
  }

  /// Retrieves the associated [NaturalLanguage] from the [Locale] object.
  ///
  /// Returns `null` if the [Locale] object is `null`, the language code length
  /// is smaller than 2, or the language code is not a valid language code.
  ///
  /// Example:
  ///
  /// ```dart
  /// const englishLocale = Locale('en');
  /// final language = englishLocale.maybeLanguage;
  /// print(language); // Prints: Language(name: English) (LangEng)
  /// ```
  NaturalLanguage? get maybeLanguage => _maybeFromCode<NaturalLanguage>(
        this?.languageCode.toUpperCase(),
        onThree: NaturalLanguage.maybeFromValue,
        onTwo: (codeShort) => NaturalLanguage.maybeFromValue(
          codeShort,
          where: (language) => language.codeShort,
        ),
      );

  Script? get maybeScript {
    final scriptCode = this?.scriptCode?.toUpperCase().trim() ?? "";

    return scriptCode.isNotEmpty
        ? Script.maybeFromValue(scriptCode, where: (s) => s.code.toUpperCase())
        : null;
  }

  /// Retrieves the associated [WorldCountry] from the [Locale] object.
  ///
  /// Returns `null` if the [Locale] object is `null`, the country code is
  /// `null`, the country code length is smaller than 2, or the country code is
  /// not a valid country code.
  ///
  /// Example:
  ///
  /// ```dart
  /// final usEnglishLocale = Locale('en', 'US');
  /// final country = usEnglishLocale.maybeCountry;
  /// print(country); // Prints: Country(name: United States) (CountryUsa)
  /// ```
  WorldCountry? get maybeCountry => _maybeFromCode<WorldCountry>(
        this?.countryCode?.toUpperCase(),
        onThree: WorldCountry.maybeFromValue,
        onTwo: (codeShort) => WorldCountry.maybeFromValue(
          codeShort,
          where: (country) => country.codeShort,
        ),
      );

  T? _maybeFromCode<T extends Object>(
    String? code, {
    required T? Function(String codeShort) onTwo,
    required T? Function(String code) onThree,
  }) {
    if (code == null) return null;

    return switch (code.length) {
      2 => onTwo(code),
      // ignore: avoid-substring, no emojis here.
      >= 3 => onThree(code.substring(0, 3)),
      _ => null,
    };
  }
}
