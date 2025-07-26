import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/gini_extension.dart";
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
        equals(Gini(year: value.year, coefficient: array.first.coefficient)),
      );
      expect(
        array.first,
        equals(Gini(year: array.first.year, coefficient: value.coefficient)),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Gini(year: value.year, coefficient: value.coefficient));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => Gini(year: value.year, coefficient: value.coefficient),
      shouldThrow: false,
    );

    assertTest(
      "wrong year",
      () => Gini(
        year: Gini.minYear - TestData.integer,
        coefficient: value.coefficient,
      ),
    );

    assertTest(
      "wrong coefficient (too low)",
      () => Gini(
        year: value.year,
        coefficient: Gini.minCoefficient - TestData.float,
      ),
    );

    assertTest(
      "wrong coefficient (too high)",
      () => Gini(
        year: value.year,
        coefficient: Gini.maxCoefficient + TestData.float,
      ),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      GiniExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
