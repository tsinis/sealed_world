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
        test("creates instance with default data", () {
          expect(mapper, isNotNull);
          expect(mapper.map.length, 194);
        });

        test("allows adding custom translations", () {
          final customMapper = CountriesLocaleMapper(
            other: {"custom": AfCountriesL10N()},
          );
          expect(customMapper.map.length, 195);
          expect(customMapper.map["custom"], isNotNull);
        });
      });

      group("localize", () {
        test(
          "returns empty map for empty input",
          () => expect(mapper.localize({}), isEmpty),
        );

        test("localizes single code with main locale", () {
          final result = mapper.localize({"USA"}, mainLocale: "bs");
          expect(result.values.single, "Sjedinjene Države");
        });

        test("uses fallback locale when main locale missing", () {
          final result = mapper.localize(
            {"USA"},
            mainLocale: "00",
            fallbackLocale: "bs",
          );
          expect(result.values.single, "Sjedinjene Države");
        });

        test("uses language fallback when specific locale not found", () {
          final result = mapper.localize({"USA"}, mainLocale: "bs_Latn");
          expect(result.values.single, "Sjedinjene Države");
        });

        test("handles multiple ISO codes", () {
          final result =
              mapper.localize({"USA", "RUS", "DEU"}, mainLocale: "bs");
          expect(
            result.values,
            const ["Sjedinjene Države", "Rusija", "Njemačka"],
          );
        });

        test("handles non-existent ISO codes gracefully", () {
          final result = mapper.localize({"XYZ", "ABC"}, mainLocale: "en");
          expect(result, isEmpty);
        });

        test("cleans up internal maps after use", () {
          final result = mapper.localize({"USA"}, mainLocale: "en");
          expect(mapper.map, isEmpty);
          expect(result, isNotEmpty);
        });
      });

      group("$IsoLocaleMapper functionality", () {
        test("returns full map when keys are null", () {
          final customMapper = CountriesLocaleMapper(
            other: {
              "mock": IsoLocaleMapper(
                other: {
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
                other: {
                  "USA": "United States",
                  "USA+": "United States of America",
                },
              ),
            },
          );

          final result = customMapper.localize(
            {"USA"},
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
              "en": IsoLocaleMapper(
                other: {"USA": "US", "USA+": "United States"},
              ),
            },
          );

          final result = customMapper.localize(
            {"USA"},
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

      group("symbol constant", () {
        test(
          "has correct default value",
          () => expect(CountriesLocaleMapper.symbol, "+"),
        );
      });

      group("multiple locales with fallback", () {
        test("handles both main and fallback locales correctly", () {
          final result = mapper
              .localize(const {"RUS"}, mainLocale: "sk", fallbackLocale: "cs");

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
