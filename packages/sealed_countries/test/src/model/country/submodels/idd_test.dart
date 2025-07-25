import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/idd_extension.dart";
import "package:sealed_countries/src/model/country/submodels/idd.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Idd", () {
  const value = Idd(root: TestData.integer, suffixes: [TestData.integer]);

  group("equality", () {
    const other = Idd(root: TestData.integer + 1, suffixes: [TestData.integer]);
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
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Idd(root: value.root, suffixes: value.suffixes));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => Idd(root: value.root, suffixes: value.suffixes),
      shouldThrow: false,
    );

    assertTest(
      "empty suffixes",
      () => Idd(root: value.root, suffixes: const []),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      IddExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
