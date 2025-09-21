// ignore_for_file: avoid-explicit-type-declaration, it's a test.

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/core/maybe_num_extension.dart";

void main() => group("MaybeNumExtension", () {
  group("isZero", () {
    test("returns false for null", () {
      const num? value = null;
      expect(value.isZero, isFalse);
    });

    test("returns true for int zero", () {
      const int value = 0;
      expect(value.isZero, isTrue);
    });

    test("returns true for double 0.0", () {
      const double value = 0;
      expect(value.isZero, isTrue);
    });

    test("returns true for double -0.0", () {
      const double value = -0; // IEEE representation compares equal to 0.0.
      expect(value.isZero, isTrue);
    });

    test("returns false for positive non-zero value", () {
      const int value = 5;
      expect(value.isZero, isFalse);
    });

    test("returns false for negative non-zero value", () {
      const double value = -3.14;
      expect(value.isZero, isFalse);
    });
  });
});
