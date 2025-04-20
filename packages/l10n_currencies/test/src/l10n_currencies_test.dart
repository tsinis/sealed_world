// ignore_for_file: avoid-non-ascii-symbols

import "package:l10n_currencies/l10n_currencies.dart"
    show CurrenciesLocaleMapper;
import "package:l10n_currencies/src/data/af_currencies_l10n.data.dart";
import "package:l10n_currencies/src/iso_locale_mapper.dart";
import "package:test/test.dart";

void main() => group("$CurrenciesLocaleMapper", () {
      // ignore: avoid-late-keyword, it's a test.
      late CurrenciesLocaleMapper mapper;

      setUp(() => mapper = CurrenciesLocaleMapper());

      group("constructor", () {
        test(
          "creates instance with default data",
          () => expect(mapper.map.length, 161),
        );

        test("allows adding custom translations", () {
          final customMapper = CurrenciesLocaleMapper(
            other: {"custom": AfCurrenciesL10N()},
          );
          expect(customMapper.map.length, 162);
          expect(customMapper.map["custom"], isNotNull);
        });
      });

      group("localize", () {
        test(
          "returns empty map for empty input",
          () => expect(mapper.localize({}), isEmpty),
        );

        test("localizes single code with main locale", () {
          final result = mapper.localize({"USD"}, mainLocale: "cs");
          expect(result.values.single, "americký dolar");
        });

        test("uses fallback locale when main locale missing", () {
          final result = mapper.localize(
            {"USD"},
            mainLocale: "00",
            fallbackLocale: "de",
          );
          expect(result.values.single, "US-Dollar");
        });

        test("uses language fallback when specific locale not found", () {
          final result = mapper.localize({"USD"}, mainLocale: "en_US");
          expect(result.values.single, "US Dollar");
        });

        test("handles multiple ISO codes", () {
          final result = mapper.localize(
            {"USD", "RUB", "EUR"},
            mainLocale: "sk",
          );
          expect(result.length, greaterThanOrEqualTo(3));
          expect(
            result.values,
            containsAll(["americký dolár", "ruský rubeľ", "euro"]),
          );
        });

        test("handles non-existent ISO codes gracefully", () {
          final result = mapper.localize({"XYZ", "ABC"}, mainLocale: "en");
          expect(result, isEmpty);
        });

        test("cleans up internal maps after use", () {
          final result = mapper.localize({"USD"}, mainLocale: "en");
          expect(mapper.map, isEmpty);
          expect(result, isNotEmpty);
        });
      });

      group("$IsoLocaleMapper functionality", () {
        test("returns full map when keys are null", () {
          final customMapper = CurrenciesLocaleMapper(
            other: {
              "mock": IsoLocaleMapper(
                other: {"EUR": "Euro", "USD": "Dollar", "USD+": "US Dollar"},
              ),
            },
          );

          final result = customMapper.map["mock"]?.extract(null);

          expect(result?.length, 3);
          expect(result?["USD"], "Dollar");
          expect(result?["USD+"], "US Dollar");
          expect(result?["EUR"], "Euro");
        });

        test("handles alternative translations", () {
          final customMapper = CurrenciesLocaleMapper(
            other: {
              "mock": IsoLocaleMapper(
                other: {"USD": "Dollar", "USD+": "US Dollar"},
              ),
            },
          );

          final result = customMapper.localize(
            {"USD"},
            mainLocale: "mock",
            altSymbol: "+",
          );

          expect(result.length, 2);
          expect(
            result.entries.where((e) => e.key.isoCode == "USD").single.value,
            "Dollar",
          );
          expect(
            result.entries.where((e) => e.key.isoCode == "USD+").single.value,
            "US Dollar",
          );
        });

        test("handles alternative translations with multiple locales", () {
          final customMapper = CurrenciesLocaleMapper(
            other: {
              "de": IsoLocaleMapper(
                other: {"USD": "Dollar", "USD+": "US-Dollar"},
              ),
              "en": IsoLocaleMapper(
                other: {"USD": "Dollar", "USD+": "US Dollar"},
              ),
            },
          );

          final result = customMapper.localize(
            {"USD"},
            mainLocale: "en",
            fallbackLocale: "de",
            altSymbol: "+",
          );

          expect(result.length, 4);

          expect(result[(isoCode: "USD", locale: "en")], "Dollar");
          expect(result[(isoCode: "USD+", locale: "en")], "US Dollar");
          expect(result[(isoCode: "USD", locale: "de")], "Dollar");
          expect(result[(isoCode: "USD+", locale: "de")], "US-Dollar");
        });
      });

      group("symbol constant", () {
        test(
          "has correct default value",
          () => expect(CurrenciesLocaleMapper.symbol, "+"),
        );
      });

      group("multiple locales with fallback", () {
        test("handles both main and fallback locales correctly", () {
          final result = mapper
              .localize(const {"BGN"}, mainLocale: "sk", fallbackLocale: "cs");

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
