import "dart:ui";

import "package:world_flags/world_flags.dart";

import "../models/locale/typed_locale.dart";

/// Extension on [Locale] that provides utility methods for retrieving language
/// and country information from a [Locale] object.
extension LocaleExtension on Locale? {
  /// Converts the [Locale] to a [TypedLocale], if possible.
  ///
  /// The [maybeToTypedLocale] method takes an optional [fallbackLanguage]
  /// parameter of type [NaturalLanguage?]. If [fallbackLanguage] is provided,
  /// it is used as the language for the [TypedLocale] if the [Locale] is
  /// `null`.
  ///
  /// If the [Locale] is not `null`, the [maybeToTypedLocale] method returns a
  /// [TypedLocale] instance with the following properties:
  /// - `language`: The [NaturalLanguage] corresponding to the [Locale].
  /// - `country`: The country code of the [Locale].
  /// - `script`: The script code of the [Locale], if available.
  ///
  /// If the [Locale] is `null`, the [maybeToTypedLocale] method returns
  /// `null`.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final locale = Locale('en', 'US');
  /// // typedLocale is equal to: TypedLocale(LangEng(), country: CountryUsa()).
  /// final typedLocale = locale.maybeToTypedLocale();
  /// ```
  TypedLocale? maybeToTypedLocale([NaturalLanguage? fallbackLanguage]) {
    final language = maybeLanguage ?? fallbackLanguage;
    final country = WorldCountry.maybeFromCodeShort(this?.countryCode);

    // ignore: avoid-negated-conditions, due to line length.
    return language != null
        ? TypedLocale(
            language,
            regionalCode: country == null ? this?.countryCode : null,
            country: country,
            script: maybeScript,
          )
        : null;
  }

  /// Determines the script of the [Locale] instance (if has a valid
  /// ISO 15924 [scriptCode]).
  ///
  /// This method will return a [Script] instance if the [scriptCode] contains
  /// a valid script code. Otherwise, it will return `null`.
  Script? get maybeScript => Script.maybeFromAnyCode(this?.scriptCode);

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
  NaturalLanguage? get maybeLanguage =>
      NaturalLanguage.maybeFromAnyCode(this?.languageCode);

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
  WorldCountry? get maybeCountry =>
      WorldCountry.maybeFromAnyCode(this?.countryCode);
}
