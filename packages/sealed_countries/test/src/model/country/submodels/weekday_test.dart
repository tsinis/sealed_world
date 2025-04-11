import "package:sealed_countries/src/model/country/submodels/weekday.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("$Weekday", () {
  test("toJson", () {
    for (final value in Weekday.values) {
      final json = value.toJson();
      expect(value, json.parse(Weekday.fromMap));
    }
  });
});
