import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_extension.dart";
import "package:sealed_countries/src/model/country/submodels/capital.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Capital", () {
      const value = Capital(TestData.string);

      group("equality", () {
        const other = Capital("${TestData.float}");
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(value, equals(Capital(value.deFacto)));
          expect(array.first, equals(Capital(array.first.deFacto)));
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(Capital(value.deFacto));
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => Capital(
              value.deFacto,
              deJure: TestData.string,
              third: TestData.string,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "name length",
          () => expect(
            () => Capital(TestData.emptyString),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "deJure length",
          () => expect(
            () => Capital(value.deFacto, deJure: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "third length",
          () => expect(
            () => Capital(value.deFacto, third: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(CapitalExtension.fromMap));
      });
    });
