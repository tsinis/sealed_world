import "package:sealed_countries/src/model/country/submodels/car.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Car", () {
      const value = Car();

      group("equality", () {
        const other = Car(sign: TestData.string);
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            value,
            equals(Car(sign: value.sign, isRightSide: array.first.isRightSide)),
          );
          expect(
            array.first,
            equals(
              Car(sign: value.sign, isRightSide: value.isRightSide),
            ),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(Car(sign: value.sign, isRightSide: value.isRightSide));
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => Car(sign: value.sign, isRightSide: value.isRightSide),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty sign",
          () => expect(
            () => Car(sign: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
