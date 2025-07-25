import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/postal_code_extension.dart";
import "package:sealed_countries/src/model/country/submodels/postal_code.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$PostalCode", () {
  const value = PostalCode();
  test("toString", () {
    expect(value.toString(), contains(value.format));
    expect(value.toString(), contains(value.regExpPattern));
  });

  group("equality", () {
    const other = PostalCode(format: TestData.string);
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(value, equals(PostalCode(format: array.first.format)));
      expect(array.first, equals(PostalCode(format: value.format)));
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(PostalCode(format: value.format));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => PostalCode(format: value.format),
      shouldThrow: false,
    );

    assertTest("empty format", () => PostalCode(format: TestData.emptyString));

    assertTest(
      "empty regExpPattern",
      () => PostalCode(regExpPattern: TestData.emptyString),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      PostalCodeExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
