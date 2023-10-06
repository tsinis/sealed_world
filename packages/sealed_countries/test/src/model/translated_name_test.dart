import "package:sealed_countries/src/helpers/extensions/translated_name_extension.dart";
import "package:sealed_countries/src/model/translated_name.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../test_data.dart";

void main() => group("$TranslatedName", () {
      const value = TranslatedName(
        LangEng(),
        name: TestData.string,
        fullName: TestData.string,
      );

      group("equality", () {
        const other = TranslatedName(
          LangFra(),
          name: TestData.string,
          fullName: TestData.string,
          countryCode: TestData.string,
        );
        final third = value.copyWith(countryCode: TestData.string);
        final array = {value, other, third};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            value,
            equals(
              TranslatedName(
                array.first.language,
                name: value.name,
                fullName: value.fullName,
              ),
            ),
          );
          expect(
            array.first,
            equals(
              TranslatedName(
                value.language,
                name: value.name,
                fullName: value.fullName,
              ),
            ),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(
            TranslatedName(
              value.language,
              name: value.name,
              fullName: value.fullName,
            ),
          );
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => TranslatedName(
              value.language,
              name: value.name,
              fullName: value.fullName,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty official",
          () {
            expect(
              () => TranslatedName(
                const LangEng(),
                name: value.name,
                fullName: TestData.emptyString,
              ),
              throwsA(isA<AssertionError>()),
            );
            expect(
              () => TranslatedName(
                value.language,
                name: value.name,
                fullName: TestData.emptyString,
              ),
              throwsA(isA<AssertionError>()),
            );
          },
        );

        test(
          "empty common",
          () {
            expect(
              () => TranslatedName(
                const LangEng(),
                name: TestData.emptyString,
                fullName: value.fullName,
              ),
              throwsA(isA<AssertionError>()),
            );

            expect(
              () => TranslatedName(
                value.language,
                name: TestData.emptyString,
                fullName: value.fullName,
              ),
              throwsA(isA<AssertionError>()),
            );
          },
        );
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(TranslatedNameExtension.fromMap));
      });
    });
