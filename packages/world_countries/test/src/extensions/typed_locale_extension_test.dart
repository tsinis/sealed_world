import "package:flutter_test/flutter_test.dart";
import "package:world_countries/world_countries.dart";

void main() => group("TypedLocaleExtension", () {
      const locale = IsoLocale(LangEng());
      const languages = NaturalLanguage.list;
      const currencies = FiatCurrency.list;
      const countries = WorldCountry.list;

      group("copyWithTranslationsCache", () {
        test(
          "should throw assert when no iterable specified",
          () => expect(
            () => locale.copyWithTranslationsCache(),
            throwsA(isA<AssertionError>()),
          ),
        );

        test("should only create languages cache", () {
          final copy = locale.copyWithTranslationsCache(
            languages: languages,
          );
          expect(copy.languageTranslations, isNotEmpty);
          expect(copy.currencyTranslations, isEmpty);
          expect(copy.countryTranslations, isEmpty);
        });

        test("should only create currencies cache", () {
          final copy = locale.copyWithTranslationsCache(
            currencies: currencies,
          );
          expect(copy.languageTranslations, isEmpty);
          expect(copy.currencyTranslations, isNotEmpty);
          expect(copy.countryTranslations, isEmpty);
        });

        test("should only create countries cache", () {
          final copy = locale.copyWithTranslationsCache(
            countries: countries,
          );
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
        test(
          "should throw assert when no iterable specified",
          () async => expect(
            () async => locale.copyWithTranslationsCacheAsync(),
            throwsA(isA<AssertionError>()),
          ),
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
