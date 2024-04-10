import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/helpers/extensions/sealed_world_json_string_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("$BasicLocale", () {
      const string = "01";
      final value = BasicLocale(
        NaturalLanguage.list.first,
        countryCode: string,
        script: Script.list.last,
      );

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => BasicLocale(
              NaturalLanguage.list.first,
              countryCode: string,
              script: Script.list.last,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "countryCode length",
          () => expect(
            () => BasicLocale(NaturalLanguage.list.last, countryCode: "1"),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      test("toJson", () {
        final json = value.toJson();
        final parsed = json.parse(BasicLocaleExtension.fromMap);
        expect(value.countryCode, parsed.countryCode);
        expect(value.language, parsed.language);
        expect(value.script, parsed.script);
      });
    });
