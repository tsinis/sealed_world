import "dart:convert";

import "package:sealed_countries/src/model/country/submodels/weekday.dart";
import "package:test/test.dart";

void main() => group("$Weekday", () {
  test("toJson", () {
    for (final value in Weekday.values) {
      final json = value.toJson();
      expect(
        value,
        // ignore: avoid-type-casts, it's a test.
        Weekday.fromMap(jsonDecode(json) as Map<String, Object?>),
      );
    }
  });
});
