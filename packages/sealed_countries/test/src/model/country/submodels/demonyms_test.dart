import "package:sealed_countries/src/model/country/submodels/demonyms.dart";
import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Demonyms", () {
      const value = Demonyms(
        language: LangEng(),
        female: TestData.string,
        male: TestData.string,
      );

      group("equality", () {
        const other = Demonyms(
          language: LangFra(),
          female: TestData.string,
          male: TestData.string,
        );
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            value,
            equals(
              Demonyms(
                language: array.first.language,
                female: value.female,
                male: value.male,
              ),
            ),
          );
          expect(
            array.first,
            equals(
              Demonyms(
                language: value.language,
                female: value.female,
                male: value.male,
              ),
            ),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(
            Demonyms(
              language: value.language,
              female: value.female,
              male: value.male,
            ),
          );
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => Demonyms(
              language: value.language,
              female: value.female,
              male: value.male,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty female",
          () => expect(
            () => Demonyms(
              language: value.language,
              female: TestData.emptyString,
              male: value.male,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty male",
          () => expect(
            () => Demonyms(
              language: value.language,
              female: value.female,
              male: TestData.emptyString,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
