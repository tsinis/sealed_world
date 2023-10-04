import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_extension.dart";
import "package:sealed_countries/src/model/country/submodels/capital.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("CapitalExtension", () {
      const value = Capital(
        TestData.string,
        deJure: TestData.string,
        third: TestData.string,
      );

      test(
        "officialName",
        () => expect(
          const Capital(" ", deJure: TestData.string).officialName,
          TestData.string,
        ),
      );

      test("name", () => expect(value.name, TestData.string));

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(deFacto: "newDeFacto");
          expect(copy.deFacto, "newDeFacto");
          expect(copy.deJure, TestData.string);
          expect(copy.third, TestData.string);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.deFacto, TestData.string);
          expect(copy.deJure, TestData.string);
          expect(copy.third, TestData.string);
        });
      });
    });
