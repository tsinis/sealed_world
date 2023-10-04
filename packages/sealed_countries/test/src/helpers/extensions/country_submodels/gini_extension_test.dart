import "package:sealed_countries/src/helpers/extensions/country_submodels/gini_extension.dart";
import "package:sealed_countries/src/model/country/submodels/gini.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("GiniExtension", () {
      const year = 2024;
      const value = Gini(year: year, coefficient: TestData.float);
      test("dateTime", () => expect(value.dateTime, DateTime(year)));

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(year: year - TestData.integer);
          expect(copy.year, year - TestData.integer);
          expect(copy.coefficient, value.coefficient);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.year, value.year);
          expect(copy.coefficient, value.coefficient);
        });
      });
    });
