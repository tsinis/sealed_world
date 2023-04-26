import "package:sealed_countries/src/model/country/submodels/gini.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Gini", () {
      const value = Gini(
        year: Gini.minYear + TestData.integer,
        coefficient: TestData.float,
      );

      group("equality", () {
        const other = Gini(
          year: Gini.minYear + TestData.integer,
          coefficient: TestData.float + TestData.float,
        );
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            value,
            equals(
              Gini(year: value.year, coefficient: array.first.coefficient),
            ),
          );
          expect(
            array.first,
            equals(
              Gini(year: array.first.year, coefficient: value.coefficient),
            ),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(Gini(year: value.year, coefficient: value.coefficient));
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => Gini(year: value.year, coefficient: value.coefficient),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "wrong year",
          () => expect(
            () => Gini(
              year: Gini.minYear - TestData.integer,
              coefficient: value.coefficient,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "wrong coefficient (too low)",
          () => expect(
            () => Gini(
              year: value.year,
              coefficient: Gini.minCoefficient - TestData.float,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "wrong coefficient (too high)",
          () => expect(
            () => Gini(
              year: value.year,
              coefficient: Gini.maxCoefficient + TestData.float,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
