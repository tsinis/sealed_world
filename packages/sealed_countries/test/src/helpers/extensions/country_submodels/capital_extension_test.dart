import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_extension.dart";
import "package:sealed_countries/src/model/country/submodels/capital.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("CapitalExtension", () {
      test(
        "officialName",
        () => expect(
          const Capital(" ", deJure: TestData.string).officialName,
          TestData.string,
        ),
      );

      test(
        "name",
        () => expect(const Capital(TestData.string).name, TestData.string),
      );
    });
