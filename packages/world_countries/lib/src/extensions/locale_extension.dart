import "dart:ui";

import "package:sealed_countries/sealed_countries.dart";

extension LocaleExtension on Locale? {
  NaturalLanguage? get maybeLanguage => _maybeFromCode<NaturalLanguage>(
        this?.languageCode.toUpperCase(),
        onThree: NaturalLanguage.maybeFromValue,
        onTwo: (codeShort) => NaturalLanguage.maybeFromValue(
          codeShort,
          where: (language) => language.codeShort,
        ),
      );

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
