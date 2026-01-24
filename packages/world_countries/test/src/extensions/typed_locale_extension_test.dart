import "dart:ui" show Locale;

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/world_countries.dart";

Comparator<MapEntry<IsoTranslated, String>> _reverseSorterFactory(
  BasicTypedLocale _,
) =>
    (first, second) => second.value.compareTo(first.value);

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

  group("l10nSorter", () {
    const testCountries = [WorldCountry.usa(), WorldCountry.gbr()];

    test("should use custom sorter for sync cache", () {
      final defaultCopy = locale.copyWithTranslationsCache(
        countries: testCountries,
      );
      final customCopy = locale.copyWithTranslationsCache(
        countries: testCountries,
        l10nSorter: _reverseSorterFactory,
      );

      final defaultOrder = defaultCopy.countryTranslations.values.toList();
      final customOrder = customCopy.countryTranslations.values.toList();

      // Default: alphabetical (United Kingdom, United States).
      expect(defaultOrder.first, contains("United Kingdom"));
      // Custom reverse: (United States, United Kingdom).
      expect(customOrder.first, contains("United States"));
    });

    test("should use custom sorter for async cache", () async {
      final defaultCopy = await locale.copyWithTranslationsCacheAsync(
        countries: testCountries,
      );
      final customCopy = await locale.copyWithTranslationsCacheAsync(
        countries: testCountries,
        l10nSorter: _reverseSorterFactory,
      );

      final defaultOrder = defaultCopy.countryTranslations.values.toList();
      final customOrder = customCopy.countryTranslations.values.toList();

      // Default: alphabetical (United Kingdom, United States).
      expect(defaultOrder.first, contains("United Kingdom"));
      // Custom reverse: (United States, United Kingdom).
      expect(customOrder.first, contains("United States"));
    });

    test("should pass locale to factory once", () {
      BasicTypedLocale? capturedLocale;
      final copy = locale.copyWithTranslationsCache(
        countries: testCountries,
        // ignore: prefer-extracting-function-callbacks, just a test.
        l10nSorter: (loc) {
          capturedLocale = loc;

          return (first, second) => first.value.compareTo(second.value);
        },
      );

      expect(copy.countryTranslations, isNotEmpty);
      expect(
        capturedLocale,
        equals(locale),
        reason: "Factory is called once with the locale.",
      );
    });
  });
});
