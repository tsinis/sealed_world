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
    test(
      "creates instance with default data",
      () => expect(mapper.map.length, 157),
    );

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
      () => expect(mapper.localize(const {}), isEmpty),
    );

    test("localizes single code with main locale", () {
      final result = mapper.localize(const {"ENG"}, mainLocale: "cs");
      expect(result.values.single, "Angličtina");
    });

    test("uses fallback locale when main locale missing", () {
      final result = mapper.localize(
        const {"ENG"},
        mainLocale: "00",
        fallbackLocale: "de",
      );
      expect(result.values.single, "Englisch");
    });

    test("uses language fallback when specific locale not found", () {
      final result = mapper.localize(const {"ENG"}, mainLocale: "en_US");
      expect(result.values.single, "English");
    });

    test("handles multiple ISO codes", () {
      const codes = {"ENG", "RUS", "DEU"};
      final result = mapper.localize(codes, mainLocale: "sk");
      expect(result.length, greaterThanOrEqualTo(3));
      expect(result.values, containsAll(["Angličtina", "Ruština", "Nemčina"]));
    });

    test("handles non-existent ISO codes gracefully", () {
      final result = mapper.localize(const {"NO", "EXIST"}, mainLocale: "en");
      expect(result, isEmpty);
    });

    test("cleans up internal maps after use", () {
      final result = mapper.localize(const {"ENG"}, mainLocale: "en");
      expect(mapper.map, isEmpty);
      expect(result, isNotEmpty);
    });
  });

  group("language fallback extraction", () {
    test("falls back to two-letter language subtag", () {
      final custom = LanguagesLocaleMapper(
        other: {
          "en": IsoLocaleMapper(other: {"ENG": "English"}),
        },
      );

      final result = custom.localize(const {"ENG"}, mainLocale: "en_US");
      expect(result[(isoCode: "ENG", locale: "en")], "English");
    });

    test("falls back to three-letter language subtag", () {
      final custom = LanguagesLocaleMapper(
        other: {
          "fil": IsoLocaleMapper(other: {"ENG": "Ingles"}),
        },
      );

      final result = custom.localize(const {"ENG"}, mainLocale: "fil_PH");
      expect(result[(isoCode: "ENG", locale: "fil")], "Ingles");
    });

    test("falls back to five-letter language subtag", () {
      final custom = LanguagesLocaleMapper(
        other: {
          "alphae": IsoLocaleMapper(other: {"ENG": "Alphaen"}),
        },
      );

      final result = custom.localize(const {"ENG"}, mainLocale: "alphae_LATN");
      expect(result[(isoCode: "ENG", locale: "alphae")], "Alphaen");
    });

    test("keeps original locale when language subtag is invalid", () {
      final custom = LanguagesLocaleMapper(
        other: {
          "und": IsoLocaleMapper(other: {"ENG": "Unknown"}),
        },
      );

      final nonValid = custom.localize(const {"ENG"}, mainLocale: "123_locale");
      expect(nonValid, isEmpty);

      final valid = custom.localize(const {"ENG"}, mainLocale: "und");
      expect(valid[(isoCode: "ENG", locale: "und")], "Unknown");
    });
  });

  group("formatter", () {
    test("applies formatter to all translations", () {
      final result = mapper.localize(
        const {"ENG", "RUS"},
        mainLocale: "en",
        formatter: (_, l10n) => l10n.toUpperCase(),
      );
      expect(result[(isoCode: "ENG", locale: "en")], "ENGLISH");
      expect(result[(isoCode: "RUS", locale: "en")], "RUSSIAN");
    });

    test("formatter can use locale and iso code for custom logic", () {
      final result = mapper.localize(
        const {"ENG", "RUS"},
        mainLocale: "fr",
        formatter: (iso, l10n) => iso.locale == "fr" ? "[$l10n]" : l10n,
      );
      expect(result[(isoCode: "ENG", locale: "fr")], startsWith("["));
      expect(result[(isoCode: "RUS", locale: "fr")], startsWith("["));
    });

    test("formatter can selectively format based on iso code", () {
      final result = mapper.localize(
        const {"ENG", "RUS"},
        mainLocale: "en",
        formatter: (iso, l10n) =>
            iso.isoCode.startsWith("EN") ? l10n.toLowerCase() : l10n,
      );
      expect(result[(isoCode: "ENG", locale: "en")], "english");
      expect(result[(isoCode: "RUS", locale: "en")], "Russian");
    });

    test("formatter is not applied if not provided", () {
      final result = mapper.localize(const {"ENG"}, mainLocale: "en");
      expect(result[(isoCode: "ENG", locale: "en")], "English");
    });
  });

  group("$IsoLocaleMapper functionality", () {
    test("returns full map when keys are null", () {
      final customMapper = LanguagesLocaleMapper(
        other: {
          "mock": IsoLocaleMapper(
            other: const {
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
        const {"ENG"},
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
        const {"ENG"},
        mainLocale: "en",
        fallbackLocale: "de",
        altSymbol: "+",
      );

      expect(result.length, 4);

      expect(result[(isoCode: "ENG", locale: "en")], "English");
      expect(result[(isoCode: "ENG+", locale: "en")], "English Language");
      expect(result[(isoCode: "ENG", locale: "de")], "Englisch");
      expect(result[(isoCode: "ENG+", locale: "de")], "Englische Sprache");
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
      final result = mapper.localize(
        const {"ENG"},
        mainLocale: "sk",
        fallbackLocale: "cs",
      );

      expect(result.length, 2);
      expect(result.entries.last.key.locale, "cs");
      expect(result.entries.first.key.locale, "sk");
      expect(result.entries.first.value, result.entries.last.value);
      expect(result.entries.first.key.isoCode, result.entries.last.key.isoCode);
    });
  });
});
