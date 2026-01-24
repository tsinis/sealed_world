import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/iso/iso_maps.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$IsoMaps", () {
  group("toString", () {
    group("with short: true (default)", () {
      test("should return short format with empty maps", () {
        const maps = IsoMaps();

        final result = maps.toString();

        expect(result, contains("IsoMaps("));
        expect(result, contains("countryTranslations: 0"));
        expect(result, contains("currencyTranslations: 0"));
        expect(result, contains("languageTranslations: 0"));
        expect(result, contains("countryFlags: 0"));
        expect(result, contains("currencyFlags: 0"));
        expect(result, contains("languageFlags: 0"));
      });

      test("should display counts with populated maps", () {
        final firstCountry = WorldCountry.list.first;
        final flag = smallSimplifiedFlagsMap[firstCountry]!;

        final maps = IsoMaps(
          countryTranslations: {
            WorldCountry.list.first: "Country 1",
            WorldCountry.list.elementAt(1): "Country 2",
            WorldCountry.list.elementAt(2): "Country 3",
          },
          currencyTranslations: {
            FiatCurrency.list.first: "Currency 1",
            FiatCurrency.list.elementAt(1): "Currency 2",
          },
          languageTranslations: {NaturalLanguage.list.first: "Language 1"},
          countryFlags: {WorldCountry.list.first: flag},
          currencyFlags: {
            FiatCurrency.list.first: flag,
            FiatCurrency.list.elementAt(1): flag,
          },
          languageFlags: {
            NaturalLanguage.list.first: flag,
            NaturalLanguage.list.elementAt(1): flag,
            NaturalLanguage.list.elementAt(2): flag,
          },
        );

        final result = maps.toString();

        expect(result, contains("countryTranslations: 3"));
        expect(result, contains("currencyTranslations: 2"));
        expect(result, contains("languageTranslations: 1"));
        expect(result, contains("countryFlags: 1"));
        expect(result, contains("currencyFlags: 2"));
        expect(result, contains("languageFlags: 3"));
      });
    });

    group("with short: false", () {
      test("should return detailed format with empty maps", () {
        const maps = IsoMaps();

        final result = maps.toString(short: false);

        expect(result, contains("IsoMaps(\n"));
        expect(result, contains("countryTranslations: {}"));
        expect(result, contains("currencyTranslations: {}"));
        expect(result, contains("languageTranslations: {}"));
        expect(result, contains("countryFlags: {}"));
        expect(result, contains("currencyFlags: {}"));
        expect(result, contains("languageFlags: {}"));
      });

      test("should display translation details", () {
        final country = WorldCountry.list.first;
        final currency = FiatCurrency.list.first;
        final language = NaturalLanguage.list.first;

        final maps = IsoMaps(
          countryTranslations: {country: "United States"},
          currencyTranslations: {currency: "US Dollar"},
          languageTranslations: {language: "English"},
        );

        final result = maps.toString(short: false);

        expect(result, contains("countryTranslations: {"));
        expect(result, contains("United States"));
        expect(result, contains("currencyTranslations: {"));
        expect(result, contains("US Dollar"));
        expect(result, contains("languageTranslations: {"));
        expect(result, contains("English"));
      });

      test("should display flag mappings", () {
        final firstCountry = WorldCountry.list.first;
        final secondCountry = WorldCountry.list.elementAt(1);
        final firstFlag = smallSimplifiedFlagsMap[firstCountry]!;
        final secondFlag = smallSimplifiedFlagsMap[secondCountry]!;

        final maps = IsoMaps(
          countryFlags: {firstCountry: firstFlag, secondCountry: secondFlag},
          currencyFlags: {FiatCurrency.list.first: firstFlag},
          languageFlags: {NaturalLanguage.list.first: secondFlag},
        );

        final result = maps.toString(short: false);

        expect(result, contains("countryFlags: {"));
        expect(result, contains("currencyFlags: {"));
        expect(result, contains("languageFlags: {"));
      });

      test("should format with multiple translations", () {
        final maps = IsoMaps(
          countryTranslations: {
            WorldCountry.list.first: "First",
            WorldCountry.list.elementAt(1): "Second",
            WorldCountry.list.elementAt(2): "Third",
          },
        );

        final result = maps.toString(short: false);

        expect(result, contains("countryTranslations: {"));
        expect(result, contains("First"));
        expect(result, contains("Second"));
        expect(result, contains("Third"));
      });

      test("should include all fields in detailed output", () {
        const maps = IsoMaps();

        final result = maps.toString(short: false);

        // Verify the structure contains all required fields.
        expect(result, contains("countryTranslations:"));
        expect(result, contains("currencyTranslations:"));
        expect(result, contains("languageTranslations:"));
        expect(result, contains("countryFlags:"));
        expect(result, contains("currencyFlags:"));
        expect(result, contains("languageFlags:"));
      });

      test("should format with mixed populated and empty maps", () {
        final firstCountry = WorldCountry.list.first;
        final countryFlag = smallSimplifiedFlagsMap[firstCountry]!;

        final maps = IsoMaps(
          countryTranslations: {WorldCountry.list.first: "Country"},
          languageTranslations: {NaturalLanguage.list.first: "Language"},
          countryFlags: {firstCountry: countryFlag},
        );

        final result = maps.toString(short: false);

        expect(result, contains("countryTranslations: {"));
        expect(result, contains("Country"));
        expect(result, contains("currencyTranslations: {}"));
        expect(result, contains("languageTranslations: {"));
        expect(result, contains("Language"));
        expect(result, contains("countryFlags: {"));
        expect(result, contains("currencyFlags: {}"));
        expect(result, contains("languageFlags: {}"));
      });
    });
  });
});
