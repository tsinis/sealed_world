import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/widgets/country/country_tile.dart";

void main() => group("$CountryTile", () {
      test(
        "constructor",
        () => expect(
          CountryTile(WorldCountry.list.first).autofocus,
          isNotNull,
        ),
      );
    });
