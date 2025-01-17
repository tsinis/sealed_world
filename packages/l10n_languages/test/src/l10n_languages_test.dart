// ignore_for_file: avoid-non-ascii-symbols

import "package:l10n_languages/l10n_languages.dart" show LanguagesLocaleMapper;
import "package:l10n_languages/src/data/af_languages_l10n.data.dart";
import "package:l10n_languages/src/iso_locale_mapper.dart";
import "package:test/test.dart";

void main() => group("$LanguagesLocaleMapper", () {
      // ignore: avoid-late-keyword, it's a test.
      late LanguagesLocaleMapper mapper;

      setUp(() => mapper = LanguagesLocaleMapper());

      group("constructor", () {
        test("creates instance with default data", () {
          expect(mapper, isNotNull);
          expect(mapper.map.length, 157);
        });

        test("allows adding custom translations", () {
          final customMapper = LanguagesLocaleMapper(
            other: {"custom": AfLanguagesL10N()},
          );
          expect(customMapper.map.length, 158);
          expect(customMapper.map["custom"], isNotNull);
        });
      });

      group("localize", () {
        test(
          "returns empty map for empty input",
          () => expect(mapper.localize({}), isEmpty),
        );

        test("localizes single code with main locale", () {
          final result = mapper.localize({"ENG"}, mainLocale: "cs");
          expect(result.values.single, "angličtina");
        });

        test("uses fallback locale when main locale missing", () {
          final result = mapper.localize(
            {"ENG"},
            mainLocale: "00",
            fallbackLocale: "de",
          );
          expect(result.values.single, "Englisch");
        });

        test("uses language fallback when specific locale not found", () {
          final result = mapper.localize({"ENG"}, mainLocale: "en_US");
          expect(result.values.single, "English");
        });

        test("handles multiple ISO codes", () {
          final result = mapper.localize(
            {"ENG", "RUS", "DEU"},
            mainLocale: "sk",
          );
          expect(result.length, greaterThanOrEqualTo(3));
          expect(
            result.values,
            containsAll(["angličtina", "ruština", "nemčina"]),
          );
        });

        test("handles non-existent ISO codes gracefully", () {
          final result = mapper.localize(
            {"NON", "EXISTENT"},
            mainLocale: "en",
          );
          expect(result, isEmpty);
        });

        test("cleans up internal maps after use", () {
          final result = mapper.localize({"ENG"}, mainLocale: "en");
          expect(mapper.map, isEmpty);
          expect(result, isNotEmpty);
        });
      });

      group("$IsoLocaleMapper functionality", () {
        test("returns full map when keys are null", () {
          final customMapper = LanguagesLocaleMapper(
            other: {
              "mock": IsoLocaleMapper(
                other: {
                  "DEU": "German",
                  "ENG": "English",
                  "ENG+": "English Language",
                },
              ),
            },
          );

          final result = customMapper.map["mock"]?.extract(null);

          expect(result?.length, 3);
          expect(result?["ENG"], "English");
          expect(result?["ENG+"], "English Language");
          expect(result?["DEU"], "German");
        });

        test("handles alternative translations", () {
          final customMapper = LanguagesLocaleMapper(
            other: {
              "mock": IsoLocaleMapper(
                other: {"ENG": "English", "ENG+": "English Language"},
              ),
            },
          );

          final result = customMapper.localize(
            {"ENG"},
            mainLocale: "mock",
            altSymbol: "+",
          );

          expect(result.length, 2);
          expect(
            result.entries.where((e) => e.key.isoCode == "ENG").single.value,
            "English",
          );
          expect(
            result.entries.where((e) => e.key.isoCode == "ENG+").single.value,
            "English Language",
          );
        });

        test("handles alternative translations with multiple locales", () {
          final customMapper = LanguagesLocaleMapper(
            other: {
              "de": IsoLocaleMapper(
                other: {"ENG": "Englisch", "ENG+": "Englische Sprache"},
              ),
              "en": IsoLocaleMapper(
                other: {"ENG": "English", "ENG+": "English Language"},
              ),
            },
          );

          final result = customMapper.localize(
            {"ENG"},
            mainLocale: "en",
            fallbackLocale: "de",
            altSymbol: "+",
          );

          expect(result.length, 4);

          expect(result[(isoCode: "ENG", locale: "en")], "English");
          expect(result[(isoCode: "ENG+", locale: "en")], "English Language");
          expect(result[(isoCode: "ENG", locale: "de")], "Englisch");
          expect(
            result[(isoCode: "ENG+", locale: "de")],
            "Englische Sprache",
          );
        });
      });

      group("symbol constant", () {
        test(
          "has correct default value",
          () => expect(LanguagesLocaleMapper.symbol, "+"),
        );
      });

      group("multiple locales with fallback", () {
        test("handles both main and fallback locales correctly", () {
          final result = mapper
              .localize(const {"ENG"}, mainLocale: "sk", fallbackLocale: "cs");

          expect(result.length, 2);
          expect(result.entries.last.key.locale, "cs");
          expect(result.entries.first.key.locale, "sk");
          expect(result.entries.first.value, result.entries.last.value);
          expect(
            result.entries.first.key.isoCode,
            result.entries.last.key.isoCode,
          );
        });
      });
    });
