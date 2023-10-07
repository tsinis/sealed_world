import "package:sealed_countries/src/helpers/extensions/country_submodels/car_extension.dart";
import "package:sealed_countries/src/model/country/submodels/car.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("CarExtension", () {
      const value = Car();

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(sign: TestData.string);
          expect(copy.sign, TestData.string);
          expect(copy.isRightSide, value.isRightSide);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.sign, isNull);
          expect(copy.isRightSide, value.isRightSide);
        });
      });
    });
