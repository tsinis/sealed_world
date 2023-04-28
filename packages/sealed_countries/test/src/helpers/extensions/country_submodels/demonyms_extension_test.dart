import "package:sealed_countries/src/helpers/extensions/country_submodels/demonyms_extension.dart";
import "package:sealed_countries/src/model/country/submodels/demonyms.dart";
import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("DemonymsExtension", () {
      const demonyms = Demonyms(
        language: LangEng(),
        female: TestData.string,
        male: TestData.string,
      );

      test("areSame", () {
        expect(demonyms.areSame, isTrue);

        expect(
          Demonyms(
            language: demonyms.language,
            female: demonyms.female,
            male: demonyms.male * 2,
          ).areSame,
          isFalse,
        );
      });
    });
