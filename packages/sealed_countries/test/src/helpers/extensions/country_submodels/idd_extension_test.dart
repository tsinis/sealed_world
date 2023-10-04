import "package:sealed_countries/src/helpers/extensions/country_submodels/idd_extension.dart";
import "package:sealed_countries/src/model/country/submodels/idd.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("IddExtension", () {
      const value = Idd(root: TestData.integer, suffixes: [TestData.integer]);
      const multipleSuffixes = Idd(
        root: TestData.integer,
        suffixes: [TestData.integer, TestData.integer],
      );

      test("hasSingleSuffix", () {
        expect(value.hasSingleSuffix, isTrue);
        expect(multipleSuffixes.hasSingleSuffix, isFalse);
      });

      test("phoneCode", () {
        expect(
          value.phoneCode(leading: TestData.emptyString),
          value.root.toString() * 2,
        );
        expect(
          multipleSuffixes.phoneCode(leading: TestData.emptyString),
          value.root.toString(),
        );
      });

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(root: 0);
          expect(copy.root, isZero);
          expect(copy.suffixes, value.suffixes);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.root, value.root);
          expect(copy.suffixes, value.suffixes);
        });
      });
    });
