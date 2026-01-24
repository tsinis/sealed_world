import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/iso/iso_collections.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$IsoCollections", () {
  group("toString", () {
    group("with short: true (default)", () {
      test("should return short format with default constructor", () {
        const collections = IsoCollections();

        final result = collections.toString();

        expect(result, contains("IsoCollections("));
        expect(result, contains("countries: ${WorldCountry.list.length}"));
        expect(result, contains("currencies: ${FiatCurrency.list.length}"));
        expect(result, contains("languages: ${NaturalLanguage.list.length}"));
        expect(result, contains("currencyFlags: 0"));
        expect(result, contains("languageFlags: 0"));
        expect(result, contains("countryFlagsCache: 0"));
        expect(result, contains("currencyFlagsCache: 0"));
        expect(result, contains("languageFlagsCache: 0"));
        expect(
          result,
          contains(
            """localeMapResolution: ${IsoCollections.defaultLocaleMapResolution.length}""",
          ),
        );
      });

      test("should return short format with selective constructor", () {
        const collections = IsoCollections.selective();

        final result = collections.toString();

        expect(result, contains("IsoCollections("));
        expect(result, contains("countries: 0"));
        expect(result, contains("currencies: 0"));
        expect(result, contains("languages: 0"));
        expect(result, contains("currencyFlags: 0"));
        expect(result, contains("languageFlags: 0"));
        expect(result, contains("countryFlagsCache: 0"));
        expect(result, contains("currencyFlagsCache: 0"));
        expect(result, contains("languageFlagsCache: 0"));
        expect(result, contains("localeMapResolution: 0"));
      });

      test("should display counts with custom collections", () {
        final collections = IsoCollections(
          countriesForTranslationCache: WorldCountry.list.take(5),
          currenciesForTranslationCache: FiatCurrency.list.take(3),
          languagesForTranslationCache: NaturalLanguage.list.take(2),
          currencyFlagsMap: {
            FiatCurrency.list.first: [WorldCountry.list.first],
          },
          languagesFlagsMap: {
            NaturalLanguage.list.first: [WorldCountry.list.first],
            NaturalLanguage.list.elementAt(1): [WorldCountry.list.elementAt(1)],
          },
          countriesForFlagsCache: WorldCountry.list.take(1),
          currenciesForFlagsCache: FiatCurrency.list.take(2),
          languagesForFlagsCache: NaturalLanguage.list.take(3),
        );

        final result = collections.toString();

        expect(result, contains("countries: 5"));
        expect(result, contains("currencies: 3"));
        expect(result, contains("languages: 2"));
        expect(result, contains("currencyFlags: 1"));
        expect(result, contains("languageFlags: 2"));
        expect(result, contains("countryFlagsCache: 1"));
        expect(result, contains("currencyFlagsCache: 2"));
        expect(result, contains("languageFlagsCache: 3"));
      });
    });

    group("with short: false", () {
      test("should return detailed format with selective constructor", () {
        const collections = IsoCollections.selective();

        final result = collections.toString(short: false);

        expect(result, contains("IsoCollections(\n"));
        expect(result, contains("countries: []"));
        expect(result, contains("currencies: []"));
        expect(result, contains("languages: []"));
        expect(result, contains("currencyFlags: {}"));
        expect(result, contains("languageFlags: {}"));
        expect(result, contains("countryFlagsCache: []"));
        expect(result, contains("currencyFlagsCache: []"));
        expect(result, contains("languageFlagsCache: []"));
        expect(result, contains("localeMapResolution: []"));
      });

      test("should display ISO codes in detailed format", () {
        final firstCountry = WorldCountry.list.first;
        final secondCountry = WorldCountry.list.elementAt(1);
        final firstCurrency = FiatCurrency.list.first;
        final firstLanguage = NaturalLanguage.list.first;

        final collections = IsoCollections(
          countriesForTranslationCache: [firstCountry, secondCountry],
          currenciesForTranslationCache: [firstCurrency],
          languagesForTranslationCache: [firstLanguage],
        );

        final result = collections.toString(short: false);

        expect(result, contains(firstCountry.code));
        expect(result, contains(secondCountry.code));
        expect(result, contains(firstCurrency.code));
        expect(result, contains(firstLanguage.code));
      });

      test("should display currency flags mapping", () {
        final currency = FiatCurrency.list.first;
        final firstCountry = WorldCountry.list.first;
        final secondCountry = WorldCountry.list.elementAt(1);

        final collections = IsoCollections.selective(
          currencyFlagsMap: {
            currency: [firstCountry, secondCountry],
          },
        );

        final result = collections.toString(short: false);

        expect(result, contains("currencyFlags: {"));
        expect(result, contains(currency.code));
        expect(result, contains(firstCountry.code));
        expect(result, contains(secondCountry.code));
      });

      test("should display language flags mapping", () {
        final firstLanguage = NaturalLanguage.list.first;
        final secondLanguage = NaturalLanguage.list.elementAt(1);
        final firstCountry = WorldCountry.list.first;

        final collections = IsoCollections.selective(
          languagesFlagsMap: {
            firstLanguage: [firstCountry],
            secondLanguage: [firstCountry],
          },
        );

        final result = collections.toString(short: false);

        expect(result, contains("languageFlags: {"));
        expect(result, contains(firstLanguage.code));
        expect(result, contains(secondLanguage.code));
        expect(result, contains(firstCountry.code));
      });

      test("should display flags cache details", () {
        final firstCountry = WorldCountry.list.first;
        final firstCurrency = FiatCurrency.list.first;
        final firstLanguage = NaturalLanguage.list.first;

        final collections = IsoCollections.selective(
          countriesForFlagsCache: [firstCountry],
          currenciesForFlagsCache: [firstCurrency],
          languagesForFlagsCache: [firstLanguage],
        );

        final result = collections.toString(short: false);

        expect(result, contains("countryFlagsCache: [${firstCountry.code}]"));
        expect(result, contains("currencyFlagsCache: [${firstCurrency.code}]"));
        expect(result, contains("languageFlagsCache: [${firstLanguage.code}]"));
      });

      test("should display locale map resolution", () {
        const collections = IsoCollections();

        final result = collections.toString(short: false);

        expect(result, contains("localeMapResolution: ["));
        expect(result, contains("fil"));
        expect(
          result,
          contains("gsw"),
          reason: "Should contain the default locale mappings",
        );
      });

      test("should format with multiple items in detailed format", () {
        final collections = IsoCollections(
          countriesForTranslationCache: WorldCountry.list.take(3),
          currenciesForTranslationCache: FiatCurrency.list.take(2),
          languagesForTranslationCache: NaturalLanguage.list.take(4),
        );

        final result = collections.toString(short: false);

        expect(result, contains("IsoCollections(\n"));
        expect(result, contains("countries: ["));
        expect(result, contains("currencies: ["));
        expect(result, contains("languages: ["));
        expect(
          result,
          contains(", "),
          reason: "Verify commas are present for multiple items",
        );
      });

      test("should handle null localeMapResolution", () {
        const collections = IsoCollections.selective(localeMapResolution: null);

        final result = collections.toString(short: false);

        expect(result, contains("localeMapResolution: []"));
      });
    });
  });
});
