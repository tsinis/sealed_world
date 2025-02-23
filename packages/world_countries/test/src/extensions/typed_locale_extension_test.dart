import "dart:ui" show Locale;

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/world_countries.dart";

void main() => group("TypedLocaleExtension", () {
  const locale = TypedLocale(LangEng());
  const languages = NaturalLanguage.list;
  const currencies = FiatCurrency.list;
  const countries = WorldCountry.list;

  group("getters", () {
    test("asBasicLocale returns correct $BasicLocale instance", () {
      final basicLocale = locale.asBasicLocale;

      expect(basicLocale, isA<BasicLocale>());
      expect(basicLocale.language, equals(locale.language));
      expect(basicLocale.countryCode, equals(locale.countryCode));
      expect(basicLocale.script, equals(locale.script));
    });

    test("asBasicTypedLocale returns correct $BasicTypedLocale instance", () {
      final basicTypedLocale = locale.asBasicTypedLocale;

      expect(basicTypedLocale, isA<BasicTypedLocale>());
      expect(basicTypedLocale.language, equals(locale.language));
      expect(basicTypedLocale.country, equals(locale.country));
      expect(basicTypedLocale.script, equals(locale.script));
      expect(basicTypedLocale.countryCode, isNull);
    });

    test("asLocale returns correct SDK Locale instance", () {
      final sdkLocale = locale.asLocale;

      expect(sdkLocale, isA<Locale>());
      expect(sdkLocale.languageCode, equals(locale.languageCode));
      expect(sdkLocale.countryCode, equals(locale.countryCode));
      expect(sdkLocale.scriptCode, equals(locale.script?.code));
    });
  });

  group("copyWithTranslationsCache", () {
    assertTest(
      "should throw assert when no iterable specified",
      () => locale.copyWithTranslationsCache(),
    );

    test("should only create languages cache", () {
      final copy = locale.copyWithTranslationsCache(languages: languages);
      expect(copy.languageTranslations, isNotEmpty);
      expect(copy.currencyTranslations, isEmpty);
      expect(copy.countryTranslations, isEmpty);
    });

    test("should only create currencies cache", () {
      final copy = locale.copyWithTranslationsCache(currencies: currencies);
      expect(copy.languageTranslations, isEmpty);
      expect(copy.currencyTranslations, isNotEmpty);
      expect(copy.countryTranslations, isEmpty);
    });

    test("should only create countries cache", () {
      final copy = locale.copyWithTranslationsCache(countries: countries);
      expect(copy.languageTranslations, isEmpty);
      expect(copy.currencyTranslations, isEmpty);
      expect(copy.countryTranslations, isNotEmpty);
    });

    test("should create translation cache for everything", () {
      final copy = locale.copyWithTranslationsCache(
        languages: languages,
        currencies: currencies,
        countries: countries,
      );
      expect(copy.languageTranslations, isNotEmpty);
      expect(copy.currencyTranslations, isNotEmpty);
      expect(copy.countryTranslations, isNotEmpty);
    });
  });

  group("copyWithTranslationsCacheAsync", () {
    assertTest(
      "should throw assert when no iterable specified",
      () async => locale.copyWithTranslationsCacheAsync(),
    );

    test("should only create languages cache", () async {
      final copy = await locale.copyWithTranslationsCacheAsync(
        languages: languages,
      );
      expect(copy.languageTranslations, isNotEmpty);
      expect(copy.currencyTranslations, isEmpty);
      expect(copy.countryTranslations, isEmpty);
    });

    test("should only create currencies cache", () async {
      final copy = await locale.copyWithTranslationsCacheAsync(
        currencies: currencies,
      );
      expect(copy.languageTranslations, isEmpty);
      expect(copy.currencyTranslations, isNotEmpty);
      expect(copy.countryTranslations, isEmpty);
    });

    test("should only create countries cache", () async {
      final copy = await locale.copyWithTranslationsCacheAsync(
        countries: countries,
      );
      expect(copy.languageTranslations, isEmpty);
      expect(copy.currencyTranslations, isEmpty);
      expect(copy.countryTranslations, isNotEmpty);
    });

    test("should create translation cache for everything", () async {
      final copy = await locale.copyWithTranslationsCacheAsync(
        languages: languages,
        currencies: currencies,
        countries: countries,
      );
      expect(copy.languageTranslations, isNotEmpty);
      expect(copy.currencyTranslations, isNotEmpty);
      expect(copy.countryTranslations, isNotEmpty);
    });
  });
});
