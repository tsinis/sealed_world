import "dart:ui" show Locale, PlatformDispatcher;

import "package:meta/meta.dart" show useResult;
import "package:world_flags/world_flags.dart";

/// An extension on [PlatformDispatcher] that provides convenient methods for
/// accessing locale-based data using the `sealed_world` package.
///
/// This extension simplifies the process of retrieving typed information like
/// [WorldCountry], [NaturalLanguage], and [Script] directly from the platform's
/// locale settings.
extension PlatformDispatcherExtension on PlatformDispatcher {
  /// Returns the first [WorldCountry] from the user's list of preferred
  /// locales.
  ///
  /// It iterates through the [locales] list and attempts to parse a
  /// [WorldCountry] from the `countryCode` of each [Locale]. The first valid
  /// country found is returned.
  ///
  /// Returns `null` if no valid country code is found in any of the locales.
  ///
  /// ```dart
  /// final country = PlatformDispatcher.instance.firstCountryOrNull;
  /// print(country?.code); // Prints country code, e.g., "USA".
  /// ```
  @useResult
  WorldCountry? get firstCountryOrNull => _firstWhereCode(
    WorldCountry.maybeFromAnyCode,
    codeFromLocale: (locale) => locale.countryCode,
  );

  /// Returns the first [NaturalLanguage] from the user's list of preferred
  /// locales.
  ///
  /// It iterates through the [locales] list and attempts to parse a
  /// [NaturalLanguage] from the `languageCode` of each [Locale]. The first
  /// valid language found is returned.
  ///
  /// Returns `null` if no valid language code is found in any of the locales.
  ///
  /// ```dart
  /// final language = PlatformDispatcher.instance.firstLanguageOrNull;
  /// print(language?.code); // Prints language code, e.g., "ENG".
  /// ```
  @useResult
  NaturalLanguage? get firstLanguageOrNull => _firstWhereCode(
    NaturalLanguage.maybeFromAnyCode,
    codeFromLocale: (locale) => locale.languageCode,
  );

  /// Returns the first [Script] from the user's list of preferred locales.
  ///
  /// It iterates through the [locales] list and attempts to parse a [Script]
  /// from the `scriptCode` of each [Locale]. The first valid script found is
  /// returned.
  ///
  /// Returns `null` if no valid script code is found in any of the locales.
  ///
  /// ```dart
  /// final script = PlatformDispatcher.instance.firstScriptOrNull;
  /// print(script?.code); // Prints script code, e.g., "Latn".
  /// ```
  @useResult
  Script? get firstScriptOrNull => _firstWhereCode(
    Script.maybeFromCode,
    codeFromLocale: (locale) => locale.scriptCode,
    codeLength: Script.codeLength,
  );

  /// Converts the primary [Locale] into a [BasicTypedLocale].
  ///
  /// This getter provides a typed representation of the platform's main
  /// [locale]. It requires a valid `languageCode` to return a non-null value.
  /// The `country` and `script` are optional.
  ///
  /// Returns `null` if the `languageCode` of the primary `locale` cannot be
  /// parsed into a [NaturalLanguage].
  ///
  /// ```dart
  /// final typedLocale = PlatformDispatcher.instance.maybeLocale;
  /// if (typedLocale == null) return;
  /// print(typedLocale.language.internationalName);
  /// print(typedLocale.country?.code);
  /// ```
  @useResult
  BasicTypedLocale? get maybeLocale {
    final language = NaturalLanguage.maybeFromAnyCode(locale.languageCode);
    if (language == null) return null;

    final country = WorldCountry.maybeFromAnyCode(locale.countryCode);
    final script = Script.maybeFromCode(locale.scriptCode);

    return BasicTypedLocale(language, country: country, script: script);
  }

  /// A generic helper to find the first valid [IsoStandardized] value from the
  /// platform locales.
  T? _firstWhereCode<T extends IsoStandardized>(
    T? Function(String? code) fromCode, {
    required String? Function(Locale locale) codeFromLocale,
    int? codeLength,
  }) {
    for (final locale in locales) {
      final code = codeFromLocale(locale) ?? "";
      if (code.isEmpty) continue;

      final length = code.length;
      if (codeLength != null) {
        if (length != codeLength) continue;
      } else if (length < IsoStandardized.codeShortLength ||
          length > IsoStandardized.codeLength) {
        continue;
      }

      final value = fromCode(code);
      if (value != null) return value;
    }

    return null;
  }
}
