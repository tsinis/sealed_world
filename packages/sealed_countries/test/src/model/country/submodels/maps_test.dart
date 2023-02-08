import "package:sealed_countries/src/model/country/submodels/maps.dart";
import "package:test/test.dart";

void main() => group("$Maps", () {
      const data = "data";
      const maps = Maps(googleMaps: data, openStreetMaps: data);
      test(
        "googleMapsUrl",
        () => expect(maps.googleMapsUrl, Maps.googleMapsPrefix + data),
      );

      test(
        "openStreetMapsUrl",
        () => expect(maps.openStreetMapsUrl, Maps.openStreetMapsPrefix + data),
      );
    });
