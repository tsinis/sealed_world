import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/helpers/utils/locale_parser.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:test/test.dart";

void main() => group("$LocaleParser", () {
      const language = LangEng();
      const script = ScriptLatn();
      const countryCode = "US";
      const locale = BasicLocale(language);

      late LocaleParser parser; // ignore: avoid-late-keyword, it's just a test.

      setUp(
        () => parser =
            const LocaleParser(languages: [language], scripts: [script]),
      );

      group(
        "constructor",
        () => test(
          "creates instance with null parameters",
          () => expect(const LocaleParser(), isNotNull),
        ),
      );

      group("parse", () {
        test("null input", () => expect(parser.parse(null), isNull));

        test("empty string", () => expect(parser.parse(""), isNull));

        test("whitespace", () => expect(parser.parse(" "), isNull));

        group("valid formats", () {
          test("parses language only", () {
            final result = parser.parse("en");

            expect(result?.toString(), locale.toString());
            expect(result?.language, equals(language));
            expect(result?.script, isNull);
            expect(result?.countryCode, isNull);
          });

          test("parses language with country", () {
            final result = parser.parse("en_US");

            expect(
              result?.toString(),
              locale.copyWith(countryCode: countryCode).toString(),
            );
            expect(result?.language, equals(language));
            expect(result?.language, equals(language));
            expect(result?.script, isNull);
            expect(result?.countryCode, equals(countryCode));
          });

          test("parses language with script", () {
            final result = parser.parse("en_Latn");

            expect(
              result?.toString(),
              locale.copyWith(script: script).toString(),
            );
            expect(result?.language, equals(language));
            expect(result?.script, equals(script));
            expect(result?.countryCode, isNull);
          });

          test("parses full format", () {
            final result = parser.parse("en_Latn_US");

            expect(
              result?.toString(),
              locale
                  .copyWith(script: script, countryCode: countryCode)
                  .toString(),
            );
            expect(result?.language, equals(language));
            expect(result?.script, equals(script));
            expect(result?.countryCode, equals(countryCode));
          });
        });

        group("case sensitivity", () {
          test(
            "uppercase language",
            () => expect(parser.parse("EN")?.language, equals(language)),
          );

          test(
            "mixed case country",
            () =>
                expect(parser.parse("en_uS")?.countryCode, equals(countryCode)),
          );

          test(
            "mixed case script",
            () => expect(parser.parse("en_lAtN")?.script, equals(script)),
          );
        });

        group("separators", () {
          test(
            "underscore separator",
            () => expect(parser.parse("en_US"), isNotNull),
          );

          test(
            "hyphen separator",
            () => expect(parser.parse("en-US"), isNotNull),
          );

          test(
            "space separator",
            () => expect(parser.parse("en US "), isNotNull),
          );

          test(
            "multiple separators",
            () => expect(parser.parse("en__US"), isNotNull),
          );
        });

        group("invalid formats", () {
          test(
            "rejects invalid language length",
            () => expect(parser.parse("eng"), isNull),
          );

          test(
            "rejects invalid country length",
            () => expect(parser.parse("en_USA"), isNull),
          );

          test(
            "rejects invalid script length",
            () => expect(parser.parse("en_Latin"), isNull),
          );

          test(
            "rejects invalid characters",
            () => expect(parser.parse("en_123"), isNull),
          );

          test(
            "rejects wrong order",
            () => expect(parser.parse("US_en"), isNull),
          );
        });
      });
    });
