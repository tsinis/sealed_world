import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/helpers/utils/localization_delegate.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/core/locale_mapping_options.dart"
    show LocaleMappingOptions;
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:sealed_languages/src/model/script/submodels/script.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

// ignore: avoid-high-cyclomatic-complexity, it's a test...
void main() => group("$LocalizationDelegate", () {
  const language = LangEng();
  const script = ScriptLatn();
  const countryCode = "US";
  const locale = BasicLocale(language);
  const parser = LocalizationDelegate(languages: [language], scripts: [script]);

  group(
    "constructor",
    () => test(
      "creates instance with null parameters",
      // ignore: avoid-misused-test-matchers, just to trigger the test.
      () => expect(const LocalizationDelegate(), isNotNull),
    ),
  );

  test(
    "toTranslation",
    () => expect(
      parser.toTranslation(locale, countryCode, null),
      const TranslatedName(language, name: countryCode),
    ),
  );

  test("copyWith", () {
    LocalizationDelegate copy = parser.copyWith(
      languages: const [],
      scripts: const [],
    );
    expect(copy.languages, isEmpty);
    expect(copy.scripts, isEmpty);
    expect(copy, isNot(parser));
    copy = parser.copyWith();
    expect(copy.languages, isNotEmpty);
    expect(copy.scripts, isNotEmpty);
  });

  group("translatedNames", () {
    test("returns empty list with empty items", () {
      final result = parser.translatedNames(const []);

      expect(result, isEmpty);
      expect(result, isA<List<TranslatedName>>());
    });

    test("returns empty list when no mapper provided", () {
      const noMapperParser = LocalizationDelegate();
      const testLanguages = [LangEng(), LangDeu()];
      final result = noMapperParser.translatedNames(testLanguages);

      expect(result, isEmpty);
    });

    test("returns unmodifiable list", () {
      final result = parser.translatedNames(const [LangEng()]);

      expect(
        () => result.add(const TranslatedName(LangEng(), name: "test")),
        throwsUnsupportedError,
      );
    });

    test("filters out null values from mapping", () {
      final customParser = LocalizationDelegate(
        languages: const [LangEng(), LangDeu()],
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "en"): "English",
              (isoCode: "ENG+", locale: "en"): "English (full)",
            },
      );

      final result = customParser.translatedNames(const [LangEng(), LangDeu()]);
      expect(result.single.name, "English");
    });

    test("includes full names when localizeFullNames is true", () {
      final customParser = LocalizationDelegate(
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "en"): "English",
              (isoCode: "ENG+", locale: "en"): "English Language",
            },
      );

      final result = customParser.translatedNames(
        const [LangEng()],
        options: const LocaleMappingOptions(), // Dart 3.8 formatting.
      );

      expect(result.single.name, "English");
      expect(result.single.fullName, "English Language");
    });

    test("excludes full names when localizeFullNames is false", () {
      final customParser = LocalizationDelegate(
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {(isoCode: "ENG", locale: "en"): "English"},
      );

      final result = customParser.translatedNames(
        const [LangEng()],
        options: const LocaleMappingOptions(
          localizeFullNames: false, // Dart 3.8 formatting.
        ),
      );

      expect(result.single.name, "English");
      expect(result.single.fullName, isNull);
    });

    test("handles multiple locales", () {
      final customParser = LocalizationDelegate(
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "en"): "English",
              (isoCode: "ENG", locale: "de"): "Englisch",
              (isoCode: "ENG", locale: "fr"): "Anglais",
            },
      );

      final result = customParser.translatedNames(const [LangEng()]);

      expect(result, hasLength(3));
      expect(
        result.map((e) => e.name),
        containsAll(const ["English", "Englisch", "Anglais"]),
      );
    });

    test("handles multiple items", () {
      final customParser = LocalizationDelegate(
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "en"): "English",
              (isoCode: "DEU", locale: "en"): "German",
            },
      );

      final result = customParser.translatedNames(const [LangEng(), LangDeu()]);

      expect(result, hasLength(2));
      expect(result.map((e) => e.name), containsAll(["English", "German"]));
    });

    test("respects custom altSymbol", () {
      final customParser = LocalizationDelegate(
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "en"): "English",
              (isoCode: "ENG*", locale: "en"): "English Language",
            },
      );

      final result = customParser.translatedNames(
        const [LangEng()],
        options: const LocaleMappingOptions(altSymbol: "*"), // Dart 3.8 format.
      );

      expect(result.single.name, "English");
      expect(result.single.fullName, "English Language");
    });

    test("parses locale correctly", () {
      final customParser = LocalizationDelegate(
        languages: const [LangEng()],
        scripts: const [ScriptLatn()],
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "en_Latn_US"): "English (US)",
            },
      );

      final result = customParser.translatedNames(const [LangEng()]);

      expect(result.single.language, const LangEng());
      expect(result.single.script, const ScriptLatn());
      expect(result.single.countryCode, "US");
    });

    test("ignores entries with invalid locale", () {
      final customParser = LocalizationDelegate(
        languages: const [LangEng()],
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) => const {
              (isoCode: "ENG", locale: "invalid_locale_format"): "English",
              (isoCode: "ENG", locale: "en"): "English (valid)",
            },
      );

      final result = customParser.translatedNames(const [LangEng()]);
      expect(result.single.name, "English (valid)");
    });

    test("passes options to mapper function", () {
      String capturedMainLocale = "";
      String capturedFallbackLocale = "";
      bool capturedUseLanguageFallback = true;

      final customParser = LocalizationDelegate(
        mapper: () =>
            (
              isoCodes, {
              useLanguageFallback = true,
              altSymbol,
              mainLocale,
              fallbackLocale,
              formatter,
            }) {
              capturedMainLocale = mainLocale ?? "";
              capturedFallbackLocale = fallbackLocale ?? "";
              capturedUseLanguageFallback = useLanguageFallback;

              return const {(isoCode: "ENG", locale: "en"): "English"};
            },
      );

      customParser.translatedNames(
        const [LangEng()],
        options: LocaleMappingOptions(
          mainLocale: locale,
          fallbackLocale: const BasicLocale(LangDeu()),
          useLanguageFallback: false,
        ),
      );

      expect(capturedUseLanguageFallback, isFalse);
      expect(capturedMainLocale, locale.toUnicodeLocaleId());
      expect(
        capturedFallbackLocale,
        const BasicLocale(LangDeu()).toUnicodeLocaleId(),
      );
    });
  });

  group("parseLocale", () {
    test("null input", () => expect(parser.parseLocale(null), isNull));

    test("empty string", () => expect(parser.parseLocale(""), isNull));

    test("whitespace", () => expect(parser.parseLocale(" "), isNull));

    group("valid formats", () {
      test("parses language only", () {
        final result = parser.parseLocale("en");

        expect(result?.toString(), locale.toString());
        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, isNull);
      });

      test("parses three-letter language", () {
        final result = parser.parseLocale("eng");

        expect(result?.toString(), locale.toString());
        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, isNull);
      });

      test("parses language with country", () {
        final result = parser.parseLocale("en_US");

        expect(
          result?.toString(),
          locale.copyWith(countryCode: countryCode).toString(),
        );
        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, equals(countryCode));
      });

      test("parses language with alpha-3 country", () {
        final result = parser.parseLocale("en_USA");

        expect(
          result?.toString(),
          locale.copyWith(countryCode: "USA").toString(),
        );
        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, equals("USA"));
      });

      test("parses language with script", () {
        final result = parser.parseLocale("en_Latn");

        expect(result?.toString(), locale.copyWith(script: script).toString());
        expect(result?.language, equals(language));
        expect(result?.script, equals(script));
        expect(result?.countryCode, isNull);
      });

      test("parses full format", () {
        final result = parser.parseLocale("en_Latn_US");

        expect(
          result?.toString(),
          locale.copyWith(script: script, countryCode: countryCode).toString(),
        );
        expect(result?.language, equals(language));
        expect(result?.script, equals(script));
        expect(result?.countryCode, equals(countryCode));
      });
    });

    group("case sensitivity", () {
      test(
        "uppercase language",
        () => expect(parser.parseLocale("EN")?.language, equals(language)),
      );

      test(
        "mixed case country",
        () => expect(
          parser.parseLocale("en_uS")?.countryCode,
          equals(countryCode),
        ),
      );

      test(
        "mixed case script",
        () => expect(parser.parseLocale("en_lAtN")?.script, equals(script)),
      );
    });

    group("separators", () {
      test(
        "underscore separator",
        () => expect(parser.parseLocale("en_US"), isNotNull),
      );

      test(
        "hyphen separator",
        () => expect(parser.parseLocale("en-US"), isNotNull),
      );

      test(
        "space separator",
        () => expect(parser.parseLocale("en US"), isNotNull),
      );

      test(
        "multiple separators",
        () => expect(parser.parseLocale("en__US"), isNotNull),
      );
    });

    group("invalid formats", () {
      test(
        "rejects invalid language length",
        () => expect(parser.parseLocale("engl"), isNull),
      );

      test(
        "rejects invalid country length",
        () => expect(parser.parseLocale("en_U"), isNull),
      );

      test(
        "rejects invalid script length",
        () => expect(parser.parseLocale("en_Latin"), isNull),
      );

      test(
        "rejects invalid characters",
        () => expect(parser.parseLocale("en_123"), isNull),
      );

      test(
        "rejects wrong order",
        () => expect(parser.parseLocale("US_en"), isNull),
      );
    });

    group("edge cases", () {
      test("parses BasicLocale input", () {
        const localeInput = BasicLocale(language, countryCode: "gb");
        final result = parser.parseLocale(localeInput);

        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, equals("GB"));
      });

      test("handles messy separators and casing", () {
        final result = parser.parseLocale("  en - LATN__ usa ");

        expect(result?.language, equals(language));
        expect(result?.script, equals(script));
        expect(result?.countryCode, equals("USA"));
      });

      test("returns null for language outside whitelist", () {
        expect(parser.parseLocale("de"), isNull);
      });

      test("omits scripts that are not whitelisted", () {
        final result = parser.parseLocale("en_Cyrl_ru");

        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, equals("RU"));
      });

      test("parses iso-3 language with script and alpha-3 country", () {
        final extendedParser = LocalizationDelegate(
          languages: const [LangEng(), LangDeu()],
          scripts: const [ScriptLatn(), ScriptCyrl()],
        );
        final result = extendedParser.parseLocale("deu-Cyrl-DEU");

        expect(result?.language, equals(const LangDeu()));
        expect(result?.script, equals(const ScriptCyrl()));
        expect(result?.countryCode, equals("DEU"));
      });
    });
  });
});
