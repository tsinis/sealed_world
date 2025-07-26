import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/maps_extension.dart";
import "package:sealed_countries/src/model/country/submodels/maps.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Maps", () {
  const value = Maps(
    googleMaps: TestData.string,
    openStreetMaps: TestData.string,
  );
  test(
    "googleMapsUrl",
    () => expect(value.googleMapsUrl, Maps.googleMapsPrefix + TestData.string),
  );

  test(
    "openStreetMapsUrl",
    () => expect(
      value.openStreetMapsUrl,
      Maps.openStreetMapsPrefix + TestData.string,
    ),
  );

  group("equality", () {
    const other = Maps(
      googleMaps: "${TestData.float}",
      openStreetMaps: TestData.string,
    );
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(
        value,
        equals(
          Maps(
            googleMaps: array.first.googleMaps,
            openStreetMaps: array.first.openStreetMaps,
          ),
        ),
      );
      expect(
        array.first,
        equals(
          Maps(
            googleMaps: value.googleMaps,
            openStreetMaps: value.openStreetMaps,
          ),
        ),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(
        Maps(
          googleMaps: value.googleMaps,
          openStreetMaps: value.openStreetMaps,
        ),
      );
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => Maps(
        googleMaps: value.googleMaps,
        openStreetMaps: value.openStreetMaps,
      ),
      shouldThrow: false,
    );

    assertTest(
      "empty format",
      () => Maps(
        googleMaps: TestData.emptyString,
        openStreetMaps: value.openStreetMaps,
      ),
    );

    assertTest(
      "empty regExpPattern",
      () => Maps(
        googleMaps: value.googleMaps,
        openStreetMaps: TestData.emptyString,
      ),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      MapsExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
