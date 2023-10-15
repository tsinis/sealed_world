import "package:sealed_countries/src/helpers/extensions/translated_name_extension.dart";
import "package:sealed_countries/src/model/translated_name.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../test_data.dart";

void main() => group("TranslatedNameExtension", () {
      const value = TranslatedName(
        LangEng(),
        name: TestData.string,
        fullName: TestData.string,
      );

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
