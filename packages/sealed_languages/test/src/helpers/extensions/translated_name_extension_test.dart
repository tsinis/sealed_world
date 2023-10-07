import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/extensions/translated_name_extension.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

void main() => group("TranslatedNameExtension", () {
      const string = "1";
      const value = TranslatedName(LangEng(), name: string, fullName: string);

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(language: const LangSlv());
          expect(copy.language, const LangSlv());
          expect(copy.name, value.name);
          expect(copy.fullName, value.fullName);
          expect(copy.countryCode, value.countryCode);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.language, value.language);
          expect(copy.name, value.name);
          expect(copy.fullName, value.fullName);
          expect(copy.countryCode, value.countryCode);
        });
      });
    });
