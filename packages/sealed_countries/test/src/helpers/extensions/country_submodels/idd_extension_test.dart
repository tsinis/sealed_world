import "package:sealed_countries/src/helpers/extensions/country_submodels/idd_extension.dart";
import "package:sealed_countries/src/model/country/submodels/idd.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("IddExtension", () {
      const idd = Idd(root: TestData.integer, suffixes: [TestData.integer]);
      const multipleSuffixes = Idd(
        root: TestData.integer,
        suffixes: [TestData.integer, TestData.integer],
      );

      test("hasSingleSuffix", () {
        expect(idd.hasSingleSuffix, isTrue);
        expect(multipleSuffixes.hasSingleSuffix, isFalse);
      });

      test("phoneCode", () {
        expect(
          idd.phoneCode(leading: TestData.emptyString),
          idd.root.toString() * 2,
        );
        expect(
          multipleSuffixes.phoneCode(leading: TestData.emptyString),
          idd.root.toString(),
        );
      });
    });
