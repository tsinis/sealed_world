import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

void main() => group("BasicLocaleExtension", () {
      const value = BasicLocale(LangEng());
      const string = "01";

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(
            language: NaturalLanguage.list.first,
            countryCode: string,
            script: Script.list.last,
          );
          expect(copy.language, NaturalLanguage.list.first);
          expect(copy.countryCode, string);
          expect(copy.script, Script.list.last);
          expect(copy.language, isNot(value.language));
          expect(copy.countryCode, isNot(value.countryCode));
          expect(copy.script, isNot(value.script));
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.language, value.language);
          expect(copy.countryCode, value.countryCode);
          expect(copy.script, value.countryCode);
        });
      });

      test(
        "toTranslatedName",
        () => expect(
          value.toTranslatedName(string),
          TranslatedName(value.language, name: string),
        ),
      );
    });
