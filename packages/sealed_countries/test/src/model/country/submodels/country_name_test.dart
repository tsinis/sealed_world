import "package:sealed_countries/src/helpers/extensions/country_submodels/country_name_extension.dart";
import "package:sealed_countries/src/model/country/submodels/country_name.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$CountryName", () {
      // ignore: deprecated_member_use_from_same_package, for tests.
      const value = CountryName.international(
        common: TestData.string,
        official: TestData.string,
      );

      group("equality", () {
        const other = CountryName(
          language: LangFra(),
          official: TestData.string,
          common: TestData.string,
        );
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            value,
            equals(
              CountryName(
                language: array.first.language,
                official: value.official,
                common: value.common,
              ),
            ),
          );
          expect(
            array.first,
            equals(
              CountryName(
                language: value.language,
                official: value.official,
                common: value.common,
              ),
            ),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(
            CountryName(
              language: value.language,
              official: value.official,
              common: value.common,
            ),
          );
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => CountryName(
              language: value.language,
              official: value.official,
              common: value.common,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty official",
          () {
            expect(
              () => CountryName(
                language: const LangEng(),
                official: TestData.emptyString,
                common: value.common,
              ),
              throwsA(isA<AssertionError>()),
            );
            expect(
              () => CountryName(
                language: value.language,
                official: TestData.emptyString,
                common: value.common,
              ),
              throwsA(isA<AssertionError>()),
            );
          },
        );

        test(
          "empty common",
          () {
            expect(
              () => CountryName(
                language: const LangEng(),
                official: value.official,
                common: TestData.emptyString,
              ),
              throwsA(isA<AssertionError>()),
            );

            expect(
              () => CountryName(
                language: value.language,
                official: value.official,
                common: TestData.emptyString,
              ),
              throwsA(isA<AssertionError>()),
            );
          },
        );
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(CountryNameExtension.fromMap));
      });
    });
