import "package:sealed_countries/sealed_countries.dart";

import "../models/locale/typed_locale.dart";

extension LocaleTranslatedExtension<T extends TranslatedName> on Translated<T> {
  T? maybeTranslate(TypedLocale? locale, {bool useLanguageFallback = true}) {
    final language = locale?.language;

    return language != null
        ? maybeTranslation(
            language,
            countryCode: locale?.countryCode,
            script: locale?.script,
            useLanguageFallback: useLanguageFallback,
          )
        : null;
  }

  T translate(TypedLocale locale, {NaturalLanguage orElse = const LangEng()}) =>
      translation(
        locale.language,
        countryCode: locale.countryCode,
        script: locale.script,
        orElse: orElse,
      );
}
