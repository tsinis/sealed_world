// ignore_for_file: avoid-non-ascii-symbols

import "package:l10n_countries/l10n_countries.dart" show CountriesLocaleMapper;
import "package:l10n_countries/src/data/af_countries_l10n.data.dart";
import "package:l10n_countries/src/iso_locale_mapper.dart";
import "package:test/test.dart";

void main() => group("$CountriesLocaleMapper", () {
  // ignore: avoid-late-keyword, it's a test.
  late CountriesLocaleMapper mapper;

  setUp(() => mapper = CountriesLocaleMapper());

  group("constructor", () {
    test(
      "creates instance with default data",
      () => expect(mapper.map.length, 193),
    );

    test("allows adding custom translations", () {
      final customMapper = CountriesLocaleMapper(
        other: {"custom": AfCountriesL10N()},
      );
      expect(customMapper.map.length, 194);
      expect(customMapper.map["custom"], isNotNull);
    });
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
      final result = mapper.localize(const {
        "USA",
        "RUS",
        "DEU",
      }, mainLocale: "bs");
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
