import "package:sealed_countries/src/helpers/extensions/country_submodels/idd_extension.dart";
import "package:sealed_countries/src/model/country/submodels/idd.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Idd", () {
      const value = Idd(root: TestData.integer, suffixes: [TestData.integer]);

      group("equality", () {
        const other =
            Idd(root: TestData.integer + 1, suffixes: [TestData.integer]);
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            value,
            equals(Idd(root: array.first.root, suffixes: value.suffixes)),
          );
          expect(
            array.first,
            equals(Idd(root: value.root, suffixes: array.first.suffixes)),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(Idd(root: value.root, suffixes: value.suffixes));
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => Idd(root: value.root, suffixes: value.suffixes),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty suffixes",
          () => expect(
            () => Idd(root: value.root, suffixes: const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(IddExtension.fromMap));
      });
    });
