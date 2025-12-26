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
      () => expect(mapper.localize(const {}), isEmpty),
    );

    test("localizes single code with main locale", () {
      final result = mapper.localize(const {"USD"}, mainLocale: "cs");
      expect(result.values.single, "Americký dolar");
    });

    test("uses fallback locale when main locale missing", () {
      final result = mapper.localize(
        const {"USD"},
        mainLocale: "00",
        fallbackLocale: "de",
      );
      expect(result.values.single, "US-Dollar");
    });

    test("uses language fallback when specific locale not found", () {
      final result = mapper.localize(const {"USD"}, mainLocale: "en_US");
      expect(result.values.single, "US Dollar");
    });

    test("handles multiple ISO codes", () {
      const codes = {"USD", "RUB", "EUR"};
      final result = mapper.localize(codes, mainLocale: "sk");
      expect(result.length, greaterThanOrEqualTo(3));
      expect(
        result.values,
        containsAll(["americký dolár", "ruský rubeľ", "euro"]),
      );
    });

    test("handles non-existent ISO codes gracefully", () {
      final result = mapper.localize(const {"XYZ", "ABC"}, mainLocale: "en");
      expect(result, isEmpty);
    });

    test("cleans up internal maps after use", () {
      final result = mapper.localize(const {"USD"}, mainLocale: "en");
      expect(mapper.map, isEmpty);
      expect(result, isNotEmpty);
    });
  });

  group("$IsoLocaleMapper functionality", () {
    test("returns full map when keys are null", () {
      final customMapper = CurrenciesLocaleMapper(
        other: {
          "mock": IsoLocaleMapper(
            other: const {"EUR": "Euro", "USD": "Dollar", "USD+": "US Dollar"},
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
        const {"USD"},
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
          "de": IsoLocaleMapper(other: {"USD": "Dollar", "USD+": "US-Dollar"}),
          "en": IsoLocaleMapper(other: {"USD": "Dollar", "USD+": "US Dollar"}),
        },
      );

      final result = customMapper.localize(
        const {"USD"},
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

  group("formatter", () {
    test("applies formatter to all translations", () {
      final result = mapper.localize(
        const {"USD", "RUB"},
        mainLocale: "en",
        formatter: (_, l10n) => l10n.toUpperCase(),
      );
      expect(result[(isoCode: "USD", locale: "en")], "US DOLLAR");
      expect(result[(isoCode: "RUB", locale: "en")], "RUSSIAN RUBLE");
    });

    test("formatter can use locale and iso code for custom logic", () {
      final result = mapper.localize(
        const {"USD", "RUB"},
        mainLocale: "fr",
        formatter: (iso, l10n) => iso.locale == "fr" ? "[$l10n]" : l10n,
      );
      expect(result[(isoCode: "USD", locale: "fr")], startsWith("["));
      expect(result[(isoCode: "RUB", locale: "fr")], startsWith("["));
    });

    test("formatter can selectively format based on iso code", () {
      final result = mapper.localize(
        const {"USD", "RUB"},
        mainLocale: "en",
        formatter: (iso, l10n) =>
            iso.isoCode.startsWith("US") ? l10n.toLowerCase() : l10n,
      );
      expect(result[(isoCode: "USD", locale: "en")], "us dollar");
      expect(result[(isoCode: "RUB", locale: "en")], "Russian Ruble");
    });

    test("formatter is not applied if not provided", () {
      final result = mapper.localize(const {"USD"}, mainLocale: "en");
      expect(result[(isoCode: "USD", locale: "en")], "US Dollar");
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
      final result = mapper.localize(
        const {"BGN"},
        mainLocale: "sk",
        fallbackLocale: "cs",
      );

      expect(result.length, 2);
      expect(result.entries.last.key.locale, "cs");
      expect(result.entries.first.key.locale, "sk");
      expect(
        result.entries.first.value,
        result.entries.last.value.toLowerCase(), // TODO! Fix in next parts.
      );
      expect(result.entries.first.key.isoCode, result.entries.last.key.isoCode);
    });
  });
});
