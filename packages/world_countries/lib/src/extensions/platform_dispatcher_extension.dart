import "dart:ui" show Locale, PlatformDispatcher;

import "package:world_flags/world_flags.dart";

extension PlatformDispatcherExtension on PlatformDispatcher {
  WorldCountry? get firstCountryOrNull => _firstWhereCode(
    WorldCountry.maybeFromCodeShort,
    codeFromLocale: (locale) => locale.countryCode,
  );

  NaturalLanguage? get firstLanguageOrNull => _firstWhereCode(
    NaturalLanguage.maybeFromCodeShort,
    codeFromLocale: (locale) => locale.languageCode,
  );

  Script? get firstScriptOrNull => _firstWhereCode(
    Script.maybeFromCode,
    codeFromLocale: (locale) => locale.scriptCode,
    codeLength: Script.codeLength,
  );

  BasicTypedLocale? get maybeLocale {
    final language = NaturalLanguage.maybeFromCodeShort(locale.languageCode);
    if (language == null) return null;

    final country = WorldCountry.maybeFromCodeShort(locale.countryCode);
    final script = Script.maybeFromCode(locale.scriptCode);

    return BasicTypedLocale(language, country: country, script: script);
  }

  T? _firstWhereCode<T extends IsoStandardized>(
    T? Function(String? code) fromCode, {
    required String? Function(Locale locale) codeFromLocale,
    int codeLength = IsoStandardized.codeShortLength,
  }) {
    for (final locale in locales) {
      final code = codeFromLocale(locale);
      if (code?.length != codeLength) continue;

      final value = fromCode(code);
      if (value != null) return value;
    }

    return null;
  }
}
