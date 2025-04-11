import "package:sealed_countries/src/helpers/extensions/country_submodels/maps_extension.dart";
import "package:sealed_countries/src/model/country/submodels/maps.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("MapsExtension", () {
  const value = Maps(
    googleMaps: TestData.string,
    openStreetMaps: TestData.string,
  );

  test("with non-null values", () {
    final copy = value.copyWith(googleMaps: "$Maps");
    expect(copy.googleMaps, "$Maps");
    expect(copy.openStreetMaps, value.openStreetMaps);
  });

  test("with null values", () {
    final copy = value.copyWith();
    expect(copy.googleMaps, value.googleMaps);
    expect(copy.openStreetMaps, value.openStreetMaps);
  });
});
