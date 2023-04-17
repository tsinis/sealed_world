import "package:sealed_countries/src/helpers/extensions/world_country/geo_extension.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("GeoExtension", () {
      group("borders", () {
        test(
          "with null bordersCodes",
          () => expect(
            WorldCountry.list.firstWhere((c) => c.borders == null).borders,
            isNull,
          ),
        );

        test(
          "with non-null bordersCodes",
          () => expect(
            WorldCountry.list.firstWhere((c) => c.borders != null).borders,
            isNotEmpty,
          ),
        );
      });
    });
