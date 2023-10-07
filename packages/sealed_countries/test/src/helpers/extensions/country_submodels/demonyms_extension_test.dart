import "package:sealed_countries/src/helpers/extensions/country_submodels/demonyms_extension.dart";
import "package:sealed_countries/src/model/country/submodels/demonyms.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("DemonymsExtension", () {
      const value = Demonyms(
        language: LangEng(),
        female: TestData.string,
        male: TestData.string,
      );

      test("areSame", () {
        expect(value.areSame, isTrue);

        expect(
          Demonyms(
            language: value.language,
            female: value.female,
            male: value.male * 2,
          ).areSame,
          isFalse,
        );
      });

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(language: const LangRus());

          expect(copy.language, const LangRus());
          expect(copy.female, value.female);
          expect(copy.male, value.male);
        });

        test("with null values", () {
          final copy = value.copyWith();

          expect(copy.language, value.language);
          expect(copy.female, value.female);
          expect(copy.male, value.male);
        });
      });
    });
