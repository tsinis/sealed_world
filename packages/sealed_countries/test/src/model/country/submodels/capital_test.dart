import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_extension.dart";
import "package:sealed_countries/src/model/country/submodels/capital.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Capital", () {
  const value = Capital(TestData.string);

  group("equality", () {
    const other = Capital("${TestData.float}");
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(value, equals(Capital(value.deFacto)));
      expect(array.first, equals(Capital(array.first.deFacto)));
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Capital(value.deFacto));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => Capital(
        value.deFacto,
        deJure: TestData.string,
        third: TestData.string,
      ),
      shouldThrow: false,
    );

    assertTest("name length", () => Capital(TestData.emptyString));

    assertTest(
      "deJure length",
      () => Capital(value.deFacto, deJure: TestData.emptyString),
    );

    assertTest(
      "third length",
      () => Capital(value.deFacto, third: TestData.emptyString),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      CapitalExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
