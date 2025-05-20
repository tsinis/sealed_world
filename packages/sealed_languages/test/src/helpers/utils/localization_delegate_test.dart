import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/helpers/utils/localization_delegate.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

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
        () => expect(parser.parseLocale("eng"), isNull),
      );

      test(
        "rejects invalid country length",
        () => expect(parser.parseLocale("en_USA"), isNull),
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
  });
});
