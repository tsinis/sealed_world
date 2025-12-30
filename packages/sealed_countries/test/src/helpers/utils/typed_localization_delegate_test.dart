import "package:sealed_countries/src/helpers/utils/typed_localization_delegate.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

// ignore: avoid-high-cyclomatic-complexity, it's a test...
void main() => group("$TypedLocalizationDelegate", () {
  const language = LangEng();
  const countryCode = "US";
  const script = ScriptLatn();
  const country = CountryUsa();
  const locale = BasicLocale(language);
  const parser = TypedLocalizationDelegate(
    languages: [language],
    scripts: [script],
    countries: [country],
  );

  group(
    "constructor",
    () => test(
      "creates instance with null parameters",
      // ignore: avoid-misused-test-matchers, just to trigger the test.
      () => expect(const TypedLocalizationDelegate(), isNotNull),
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
    TypedLocalizationDelegate copy = parser.copyWith(
      languages: const [],
      scripts: const [],
      countries: const [],
    );
    expect(copy.countries, isEmpty);
    expect(copy.languages, isEmpty);
    expect(copy.scripts, isEmpty);
    expect(copy, isNot(parser));
    copy = parser.copyWith();
    expect(copy.countries, isNotEmpty);
    expect(copy.languages, isNotEmpty);
    expect(copy.scripts, isNotEmpty);
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
          locale.copyWith(countryCode: country.codeShort).toString(),
        );
        expect(result?.script, isNull);
        expect(result?.country, country);
        expect(result?.language, language);
        expect(result?.countryCode, country.codeShort);
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
        const localeInput = BasicLocale(language, countryCode: "us");
        final result = parser.parseLocale(localeInput);

        expect(result?.language, equals(language));
        expect(result?.country?.codeShort, equals(country.codeShort));
        expect(result?.countryCode, equals(country.codeShort));
      });

      test("retains regional code for unsupported countries", () {
        final result = parser.parseLocale("en_GB");

        expect(result?.country, isNull);
        expect(result?.countryCode, equals("GB"));
      });

      test("keeps alpha-3 regional code when country lookup missing", () {
        const fallbackParser = TypedLocalizationDelegate(
          languages: [LangEng()],
          countries: [CountryDeu()],
        );
        final result = fallbackParser.parseLocale("en_USA");

        expect(result?.country, isNull);
        expect(result?.countryCode, equals("USA"));
      });

      test("returns null for language outside whitelist", () {
        expect(parser.parseLocale("de"), isNull);
      });

      test("omits scripts that are not whitelisted", () {
        final result = parser.parseLocale("en_Cyrl_us");

        expect(result?.language, equals(language));
        expect(result?.script, isNull);
        expect(result?.countryCode, equals(countryCode));
      });

      test("parses iso-3 combinations with custom parser", () {
        final extendedParser = TypedLocalizationDelegate(
          countries: const [CountryUsa(), CountryDeu()],
          languages: const [LangEng(), LangDeu()],
          scripts: const [ScriptLatn(), ScriptCyrl()],
        );
        final result = extendedParser.parseLocale("deu-Cyrl-DE");

        expect(result?.language, equals(const LangDeu()));
        expect(result?.script, equals(const ScriptCyrl()));
        expect(result?.country?.codeShort, equals("DE"));
        expect(result?.countryCode, equals("DE"));
      });

      test("resolves alpha-3 countries when provided", () {
        final extendedParser = TypedLocalizationDelegate(
          countries: const [CountryUsa(), CountryDeu()],
          languages: const [LangEng(), LangDeu()],
        );
        final result = extendedParser.parseLocale("deu_deu");

        expect(result?.language, equals(const LangDeu()));
        expect(result?.country, const CountryDeu());
        expect(result?.countryCode, equals("DE"));
      });

      test("handles messy separators and casing", () {
        final result = parser.parseLocale("  en- LATN__ usa  ");

        expect(result?.language, equals(language));
        expect(result?.script, equals(script));
        expect(result?.countryCode, equals(country.codeShort));
        expect(result?.country?.codeShort, equals(country.codeShort));
      });
    });
  });
});
