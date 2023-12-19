import "package:sealed_languages/src/helpers/extensions/translated_name_extension.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

void main() => group("TranslatedNameExtension", () {
      const string = "1";
      final value = TranslatedName(
        NaturalLanguage.list.last,
        name: string,
        fullName: string,
      );

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(
            language: NaturalLanguage.list.first,
            script: Script.list.first,
          );
          expect(copy.language, NaturalLanguage.list.first);
          expect(value.language, NaturalLanguage.list.last);
          expect(copy.name, value.name);
          expect(copy.fullName, value.fullName);
          expect(copy.countryCode, value.countryCode);
          expect(copy.script, Script.list.first);
          expect(value.script, isNull);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.language, value.language);
          expect(copy.name, value.name);
          expect(copy.fullName, value.fullName);
          expect(copy.countryCode, value.countryCode);
          expect(copy.script, value.script);
        });
      });

      test("common", () => expect(value.common, value.name));
    });
