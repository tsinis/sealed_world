import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/locale_extension.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("LocaleExtension", () {
  const usa = CountryUsa();
  const english = LangEng();
  const latin = ScriptLatn();
  final usEnglishLocale = Locale.fromSubtags(
    languageCode: english.codeShort,
    scriptCode: latin.code,
    countryCode: usa.codeShort,
  );

  group("maybeLanguage", () {
    test(
      "should return null if $Locale is null",
      () => expect(null.maybeLanguage, isNull),
    );

    test(
      "should return null if languageCode length smaller than 2",
      () => expect(const Locale("1").maybeLanguage, isNull),
    );

    test(
      "should return null if languageCode is not a valid language code",
      () => expect(const Locale("01").maybeLanguage, isNull),
    );

    test(
      "should return $NaturalLanguage if languageCode is a valid code",
      () => expect(usEnglishLocale.maybeLanguage, english),
    );

    test(
      """should return $NaturalLanguage if languageCode a valid 3 letter code""",
      () => expect(
        Locale("${usEnglishLocale.languageCode}G").maybeLanguage,
        english,
      ),
    );
  });

  group("maybeCountry", () {
    final validLangCode = usEnglishLocale.languageCode;

    test(
      "should return null if $Locale is null",
      () => expect(null.maybeCountry, isNull),
    );

    test(
      "should return null if countryCode is null",
      () => expect(Locale(validLangCode).maybeCountry, isNull),
    );

    test(
      "should return null if countryCode length smaller than 2",
      () => expect(Locale(validLangCode, "1").maybeCountry, isNull),
    );

    test(
      "should return null if countryCode is not a valid country code",
      () => expect(Locale(validLangCode, "01").maybeCountry, isNull),
    );

    test(
      "should return $WorldCountry if countryCode a valid country code",
      () => expect(usEnglishLocale.maybeCountry, usa),
    );

    test(
      "should return $NaturalLanguage if countryCode a valid 3 letter code",
      () => expect(
        Locale(
          usEnglishLocale.languageCode,
          "${usEnglishLocale.countryCode}A",
        ).maybeCountry,
        usa,
      ),
    );
  });

  group("maybeScript", () {
    test(
      "should return null if $Locale is null",
      () => expect(null.maybeScript, isNull),
    );

    test(
      "should return null if languageCode length smaller than 2",
      () => expect(const Locale("1").maybeScript, isNull),
    );

    test(
      "should return null if languageCode is not a valid language code",
      () => expect(const Locale("01").maybeScript, isNull),
    );

    test(
      "should return $Script if scriptCode is a valid code",
      () => expect(usEnglishLocale.maybeScript, latin),
    );
  });

  group("maybeToTypedLocale", () {
    test(
      "should return null if $Locale is null",
      () => expect(null.maybeToTypedLocale(), isNull),
    );

    test(
      "should return null if languageCode length smaller than 2",
      () => expect(const Locale("1").maybeToTypedLocale(), isNull),
    );

    test(
      "should return null if languageCode is not a valid language code",
      () => expect(const Locale("01").maybeToTypedLocale(), isNull),
    );

    test(
      "should not return null if fallbackLanguage is provided",
      () => expect(
        const Locale("01").maybeToTypedLocale(english),
        const TypedLocale(english),
      ),
    );

    test(
      "should return $TypedLocale if languageCode is a valid code",
      () => expect(
        usEnglishLocale.maybeToTypedLocale(),
        const TypedLocale(english, country: usa, script: latin),
      ),
    );
  });
});
