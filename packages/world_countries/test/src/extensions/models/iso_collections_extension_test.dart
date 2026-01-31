import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/models/iso_collections_extension.dart";
import "package:world_countries/src/model/iso/iso_collections.dart";
import "package:world_countries/src/model/typedefs.dart";
import "package:world_flags/world_flags.dart";

void main() => group("IsoCollectionsExtension", () {
  final firstCountry = WorldCountry.list.first;
  final secondCountry = WorldCountry.list.elementAt(1);
  final firstCurrency = FiatCurrency.list.first;
  final secondCurrency = FiatCurrency.list.elementAt(1);
  final firstLanguage = NaturalLanguage.list.first;
  final secondLanguage = NaturalLanguage.list.elementAt(1);

  group("anyCountriesToCache", () {
    test("should return countriesForFlagsCache when it's not empty", () {
      final collections = IsoCollections.selective(
        countriesForFlagsCache: [firstCountry],
        countriesForTranslationCache: [secondCountry],
      );

      final result = collections.anyCountriesToCache;

      expect(result, {firstCountry});
      expect(result, isNot(contains(secondCountry)));
    });

    test(
      """should return countriesForTranslationCache when countriesForFlagsCache is empty""",
      () {
        final collections = IsoCollections.selective(
          countriesForTranslationCache: [firstCountry, secondCountry],
        );

        final result = collections.anyCountriesToCache;

        expect(result, {firstCountry, secondCountry});
      },
    );

    test("should return empty set when both caches are empty", () {
      const collections = IsoCollections.selective();
      final result = collections.anyCountriesToCache;
      expect(result, isEmpty);
    });

    test("should return a Set (not List)", () {
      final collections = IsoCollections.selective(
        countriesForTranslationCache: [firstCountry],
      );
      final result = collections.anyCountriesToCache;

      expect(result, isA<Set<WorldCountry>>());
    });
  });

  group("anyCurrenciesToCache", () {
    test("should return currenciesForFlagsCache when it's not empty", () {
      final collections = IsoCollections.selective(
        currenciesForFlagsCache: [firstCurrency],
        currenciesForTranslationCache: [secondCurrency],
      );
      final result = collections.anyCurrenciesToCache;
      expect(result.single, firstCurrency);
    });

    test(
      """should return currenciesForTranslationCache when currenciesForFlagsCache is empty""",
      () {
        final collections = IsoCollections.selective(
          currenciesForTranslationCache: [firstCurrency, secondCurrency],
        );
        final result = collections.anyCurrenciesToCache;

        expect(result, {firstCurrency, secondCurrency});
      },
    );

    test("should return empty set when both caches are empty", () {
      const collections = IsoCollections.selective();
      final result = collections.anyCurrenciesToCache;

      expect(result, isEmpty);
    });

    test("should return a Set (not List)", () {
      final collections = IsoCollections.selective(
        currenciesForTranslationCache: [firstCurrency],
      );
      final result = collections.anyCurrenciesToCache;

      expect(result, isA<Set<FiatCurrency>>());
    });
  });

  group("anyLanguagesToCache", () {
    test("should return languagesForFlagsCache when it's not empty", () {
      final collections = IsoCollections.selective(
        languagesForFlagsCache: [firstLanguage],
        languagesForTranslationCache: [secondLanguage],
      );
      final result = collections.anyLanguagesToCache;
      expect(result.single, firstLanguage);
    });

    test(
      """should return languagesForTranslationCache when languagesForFlagsCache is empty""",
      () {
        final collections = IsoCollections.selective(
          languagesForTranslationCache: [firstLanguage, secondLanguage],
        );
        final result = collections.anyLanguagesToCache;

        expect(result, {firstLanguage, secondLanguage});
      },
    );

    test("should return empty set when both caches are empty", () {
      const collections = IsoCollections.selective();
      final result = collections.anyLanguagesToCache;

      expect(result, isEmpty);
    });

    test("should return a Set (not List)", () {
      final collections = IsoCollections.selective(
        languagesForTranslationCache: [firstLanguage],
      );
      final result = collections.anyLanguagesToCache;

      expect(result, isA<Set<NaturalLanguage>>());
    });
  });

  group("copyWith", () {
    IsoCollections originalCollections = const IsoCollections.selective();

    setUp(
      () => originalCollections = IsoCollections.selective(
        countriesForTranslationCache: [firstCountry],
        currenciesForTranslationCache: [firstCurrency],
        languagesForTranslationCache: [firstLanguage],
        currencyFlagsMap: {
          firstCurrency: [firstCountry],
        },
        languagesFlagsMap: {
          firstLanguage: [firstCountry],
        },
        countriesForFlagsCache: [firstCountry],
        currenciesForFlagsCache: [firstCurrency],
        languagesForFlagsCache: [firstLanguage],
        localeMapResolution: IsoCollections.defaultLocaleMapResolution,
      ),
    );

    test("should override countriesForTranslationCache when provided", () {
      final result = originalCollections.copyWith(
        countriesForTranslationCache: [secondCountry],
      );

      expect(result.countriesForTranslationCache, [secondCountry]);
    });

    test("should override currenciesForTranslationCache when provided", () {
      final result = originalCollections.copyWith(
        currenciesForTranslationCache: [secondCurrency],
      );

      expect(result.currenciesForTranslationCache, [secondCurrency]);
    });

    test("should override languagesForTranslationCache when provided", () {
      final result = originalCollections.copyWith(
        languagesForTranslationCache: [secondLanguage],
      );

      expect(result.languagesForTranslationCache, [secondLanguage]);
    });

    test("should override currencyFlagsMap when provided", () {
      final newMap = {
        secondCurrency: <WorldCountry>[secondCountry],
      };
      final result = originalCollections.copyWith(currencyFlagsMap: newMap);

      expect(result.currencyFlagsMap, newMap);
    });

    test("should override languagesFlagsMap when provided", () {
      final newMap = {
        secondLanguage: <WorldCountry>[secondCountry],
      };
      final result = originalCollections.copyWith(languagesFlagsMap: newMap);

      expect(result.languagesFlagsMap, newMap);
    });

    test("should override countriesForFlagsCache when provided", () {
      final result = originalCollections.copyWith(
        countriesForFlagsCache: [secondCountry],
      );

      expect(result.countriesForFlagsCache, [secondCountry]);
    });

    test("should override currenciesForFlagsCache when provided", () {
      final result = originalCollections.copyWith(
        currenciesForFlagsCache: [secondCurrency],
      );

      expect(result.currenciesForFlagsCache, [secondCurrency]);
    });

    test("should override languagesForFlagsCache when provided", () {
      final result = originalCollections.copyWith(
        languagesForFlagsCache: [secondLanguage],
      );

      expect(result.languagesForFlagsCache, [secondLanguage]);
    });

    test("should override localeMapResolution when provided", () {
      const newResolution = <LocaleEntry>[];
      final result = originalCollections.copyWith(
        localeMapResolution: newResolution,
      );

      expect(result.localeMapResolution, newResolution);
    });

    test("should preserve all fields when no overrides are provided", () {
      final result = originalCollections.copyWith();

      expect(
        result.countriesForTranslationCache,
        originalCollections.countriesForTranslationCache,
      );
      expect(
        result.currenciesForTranslationCache,
        originalCollections.currenciesForTranslationCache,
      );
      expect(
        result.languagesForTranslationCache,
        originalCollections.languagesForTranslationCache,
      );
      expect(result.currencyFlagsMap, originalCollections.currencyFlagsMap);
      expect(result.languagesFlagsMap, originalCollections.languagesFlagsMap);
      expect(
        result.countriesForFlagsCache,
        originalCollections.countriesForFlagsCache,
      );
      expect(
        result.currenciesForFlagsCache,
        originalCollections.currenciesForFlagsCache,
      );
      expect(
        result.languagesForFlagsCache,
        originalCollections.languagesForFlagsCache,
      );
      expect(
        result.localeMapResolution,
        originalCollections.localeMapResolution,
      );
    });

    test("should override multiple fields simultaneously", () {
      final result = originalCollections.copyWith(
        countriesForTranslationCache: [secondCountry],
        currenciesForTranslationCache: [secondCurrency],
        languagesForTranslationCache: [secondLanguage],
      );

      expect(result.countriesForTranslationCache, [secondCountry]);
      expect(result.currenciesForTranslationCache, [secondCurrency]);
      expect(result.languagesForTranslationCache, [secondLanguage]);
      expect(result.currencyFlagsMap, originalCollections.currencyFlagsMap);
      expect(result.languagesFlagsMap, originalCollections.languagesFlagsMap);
    });
  });
});
