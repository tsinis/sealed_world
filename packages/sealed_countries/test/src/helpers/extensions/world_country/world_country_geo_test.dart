import "package:sealed_countries/src/helpers/extensions/world_country/world_country_geo.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryGeo", () {
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

        test(
          "proper type",
          () => expect(
            WorldCountry.list.firstWhere((c) => c.borders != null).borders,
            everyElement(isA<WorldCountry>()),
          ),
        );
      });

      test(
        "areaImperial",
        () => expect(
          WorldCountry.list.first.areaImperial,
          WorldCountry.list.first.areaMetric *
              WorldCountryGeo.imperialAreaMultiplier,
        ),
      );
    });
