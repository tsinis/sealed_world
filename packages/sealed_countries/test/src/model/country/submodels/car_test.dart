import "dart:convert";

import "package:sealed_countries/src/helpers/extensions/country_submodels/car_extension.dart";
import "package:sealed_countries/src/model/country/submodels/car.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Car", () {
  const value = Car();

  group("equality", () {
    const other = Car(sign: TestData.string);
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(
        value,
        equals(Car(sign: value.sign, isRightSide: array.first.isRightSide)),
      );
      expect(
        array.first,
        equals(Car(sign: value.sign, isRightSide: value.isRightSide)),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Car(sign: value.sign, isRightSide: value.isRightSide));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    test(
      "not",
      () => expect(
        () => Car(sign: value.sign, isRightSide: value.isRightSide),
        returnsNormally,
      ),
    );

    test(
      "empty sign",
      () => expect(
        () => Car(sign: TestData.emptyString),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      CarExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
