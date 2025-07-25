import "dart:convert";

import "package:sealed_countries/src/helpers/extensions/country_submodels/lat_lng_extension.dart";
import "package:sealed_countries/src/model/country/submodels/lat_lng.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$LatLng", () {
  const value = LatLng(TestData.float, TestData.float);

  group("equality", () {
    const other = LatLng(TestData.float * 2, TestData.float);
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(array.first, equals(LatLng(value.latitude, value.longitude)));
      expect(
        value,
        equals(LatLng(array.first.latitude, array.first.longitude)),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(
        LatLng.named(latitude: value.latitude, longitude: value.longitude),
      );
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      LatLngExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
