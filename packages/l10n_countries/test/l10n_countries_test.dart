// ignore_for_file: avoid-non-ascii-symbols

import "package:l10n_countries/l10n_countries.dart" show CountriesLocaleMapper;
import "package:l10n_countries/src/data/af_countries_l10n.data.dart";
import "package:l10n_countries/src/iso_locale_mapper.dart";
import "package:test/test.dart";

void main() => group("$CountriesLocaleMapper", () {
  CountriesLocaleMapper mapper = CountriesLocaleMapper();

  setUp(() => mapper = CountriesLocaleMapper()); // Fresh instance each time.

  group("constructor", () {
    test(
      "has 193 default available locales",
      () => expect(mapper.availableLocales.length, 193),
    );

    test(
      "starts with empty map (lazy)",
      () => expect(mapper.map.length, isZero, reason: "lazy instantiation"),
    );

    test("allows adding custom translations", () {
      final customMapper = CountriesLocaleMapper(
        other: {"custom": AfCountriesL10N()},
      );
      expect(customMapper.availableLocales.length, 194, reason: "one more");
      expect(customMapper.map["custom"], isNotNull, reason: "custom is eager");
      expect(customMapper.map.length, 1, reason: "only custom is materialized");
    });
  });

  group("lazy instantiation", () {
    test("materializes only requested locales", () {
      mapper.localize({"MKD"}, mainLocale: "en");
      expect(mapper.map.length, isZero, reason: "cleared after use");
    });

    test(
      "localize works with available locale",
      () => expect(mapper.localize({"BRA"}, mainLocale: "fr"), isNotEmpty),
    );
  });

  group("localize", () {
    test(
      "returns empty map for empty input",
      () => expect(mapper.localize(const {}), isEmpty),
    );

    test("localizes single code with main locale", () {
      final result = mapper.localize(const {"USA"}, mainLocale: "bs");
      expect(result.values.single, "Sjedinjene Države");
    });

    test("uses fallback locale when main locale missing", () {
      final result = mapper.localize(
        const {"USA"},
        mainLocale: "00",
        fallbackLocale: "bs",
      );
      expect(result.values.single, "Sjedinjene Države");
    });

    test("uses language fallback when specific locale not found", () {
      final result = mapper.localize(const {"USA"}, mainLocale: "bs_Latn");
      expect(result.values.single, "Sjedinjene Države");
    });

    test("handles multiple ISO codes", () {
      const codes = {"USA", "RUS", "DEU"};
      final result = mapper.localize(codes, mainLocale: "bs");
      expect(result.values, const ["Sjedinjene Države", "Rusija", "Njemačka"]);
    });

    test("handles non-existent ISO codes gracefully", () {
      final result = mapper.localize(const {"XYZ", "ABC"}, mainLocale: "en");
      expect(result, isEmpty);
    });

    test("cleans up internal maps after use", () {
      final result = mapper.localize(const {"USA"}, mainLocale: "en");
      expect(mapper.map, isEmpty);
      expect(result, isNotEmpty);
    });

    test("throws assertion error when reused after localize", () {
      mapper.localize(const {"USA"}, mainLocale: "en");
      expect(
        () => mapper.localize(const {"RUS"}, mainLocale: "en"),
        throwsA(isA<AssertionError>()),
        reason: "mapper cannot be reused after consumption",
      );
    });
  });

  group("language fallback extraction", () {
    test("falls back to two-letter language subtag", () {
      final custom = CountriesLocaleMapper(
        other: {
          "en": IsoLocaleMapper(other: {"USA": "States"}),
        },
      );

      final result = custom.localize(const {"USA"}, mainLocale: "en_US");

      expect(result[(isoCode: "USA", locale: "en")], "States");
    });

    test("falls back to three-letter language subtag", () {
      final custom = CountriesLocaleMapper(
        other: {
          "fil": IsoLocaleMapper(other: {"USA": "Mga Nagkakaisang Estado"}),
        },
      );

      final result = custom.localize(const {"USA"}, mainLocale: "fil_PH");
      expect(
        result[(isoCode: "USA", locale: "fil")],
        "Mga Nagkakaisang Estado",
      );
    });

    test("falls back to five-letter language subtag", () {
      final custom = CountriesLocaleMapper(
        other: {
          "alphae": IsoLocaleMapper(other: {"USA": "Alphae States"}),
        },
      );

      final result = custom.localize(const {"USA"}, mainLocale: "alphae_LATN");
      expect(result[(isoCode: "USA", locale: "alphae")], "Alphae States");
    });

    test("keeps original locale when language subtag is invalid", () {
      final custom = CountriesLocaleMapper(
        other: {
          "und": IsoLocaleMapper(other: {"USA": "Unknown"}),
        },
      );

      final invalidFallback = custom.localize(
        const {"USA"},
        mainLocale: "123_locale", // Dart 3.8 formatting.
      );
      expect(invalidFallback, isEmpty);

      final valid = custom.localize(const {"USA"}, mainLocale: "und");
      expect(valid[(isoCode: "USA", locale: "und")], "Unknown");
    });
  });

  group("$IsoLocaleMapper functionality", () {
    test("returns full map when keys are null", () {
      final customMapper = CountriesLocaleMapper(
        other: {
          "mock": IsoLocaleMapper(
            other: const {
              "DEU": "Germany",
              "USA": "United States",
              "USA+": "United States of America",
            },
          ),
        },
      );

      final result = customMapper.map["mock"]?.extract(null);

      expect(result?.length, 3);
      expect(result?["USA"], "United States");
      expect(result?["USA+"], "United States of America");
      expect(result?["DEU"], "Germany");
    });

    test("handles alternative translations", () {
      final customMapper = CountriesLocaleMapper(
        other: {
          "mock": IsoLocaleMapper(
            other: {"USA": "United States", "USA+": "United States of America"},
          ),
        },
      );

      final result = customMapper.localize(
        const {"USA"},
        mainLocale: "mock",
        altSymbol: "+",
      );

      expect(result.length, 2);
      expect(
        result.entries.where((e) => e.key.isoCode == "USA").single.value,
        "United States",
      );
      expect(
        result.entries.where((e) => e.key.isoCode == "USA+").single.value,
        "United States of America",
      );
    });

    test("handles alternative translations with multiple locales", () {
      final customMapper = CountriesLocaleMapper(
        other: {
          "de": IsoLocaleMapper(
            other: {"USA": "USA", "USA+": "Vereinigte Staaten"},
          ),
          "en": IsoLocaleMapper(other: {"USA": "US", "USA+": "United States"}),
        },
      );

      final result = customMapper.localize(
        const {"USA"},
        mainLocale: "en",
        fallbackLocale: "de",
        altSymbol: "+",
      );

      expect(result.length, 4);

      expect(result[(isoCode: "USA", locale: "en")], "US");
      expect(result[(isoCode: "USA+", locale: "en")], "United States");
      expect(result[(isoCode: "USA", locale: "de")], "USA");
      expect(result[(isoCode: "USA+", locale: "de")], "Vereinigte Staaten");
    });
  });

  group("formatter", () {
    test("applies formatter to all translations", () {
      final result = mapper.localize(
        const {"USA", "RUS"},
        mainLocale: "en",
        formatter: (_, l10n) => l10n.toUpperCase(),
      );
      expect(result[(isoCode: "USA", locale: "en")], "UNITED STATES");
      expect(result[(isoCode: "RUS", locale: "en")], "RUSSIA");
    });

    test("formatter can use locale and iso code for custom logic", () {
      final result = mapper.localize(
        const {"USA", "RUS"},
        mainLocale: "fr",
        formatter: (iso, l10n) => iso.locale == "fr" ? "[$l10n]" : l10n,
      );
      expect(result[(isoCode: "USA", locale: "fr")], startsWith("["));
      expect(result[(isoCode: "RUS", locale: "fr")], startsWith("["));
    });

    test("formatter can selectively format based on iso code", () {
      final result = mapper.localize(
        const {"USA", "RUS"},
        mainLocale: "en",
        formatter: (iso, l10n) =>
            iso.isoCode.startsWith("US") ? l10n.toLowerCase() : l10n,
      );
      expect(result[(isoCode: "USA", locale: "en")], "united states");
      expect(result[(isoCode: "RUS", locale: "en")], "Russia");
    });

    test("formatter is not applied if not provided", () {
      final result = mapper.localize(const {"USA"}, mainLocale: "en");
      expect(result[(isoCode: "USA", locale: "en")], "United States");
    });
  });

  group("symbol constant", () {
    test(
      "has correct default value",
      () => expect(CountriesLocaleMapper.symbol, "+"),
    );
  });

  group("multiple locales with fallback", () {
    test("handles both main and fallback locales correctly", () {
      final result = mapper.localize(
        const {"RUS"},
        mainLocale: "sk",
        fallbackLocale: "cs",
      );

      expect(result.length, 4);
      expect(result.entries.last.key.locale, "cs");
      expect(result.entries.first.key.locale, "sk");
      expect(result.entries.first.value, "Rusko");
      expect(result.entries.last.value, "Ruská federace");
      expect(
        result.entries.first.key.isoCode + CountriesLocaleMapper.symbol,
        result.entries.last.key.isoCode,
      );
    });
  });
});
