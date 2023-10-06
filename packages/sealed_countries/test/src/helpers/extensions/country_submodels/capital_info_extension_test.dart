import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_extension.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_info_extension.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/lat_lng_extension.dart";
import "package:sealed_countries/src/model/country/submodels/capital.dart";
import "package:sealed_countries/src/model/country/submodels/capital_info.dart";
import "package:sealed_countries/src/model/country/submodels/lat_lng.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("CapitalInfoExtension", () {
      const value = CapitalInfo(
        capital: Capital("Moscow"),
        latLng: LatLng(55.75, 37.61),
      );

      group("copyWith", () {
        test("with non-null values", () {
          final newCapital = value.capital.copyWith(deFacto: TestData.string);
          final newLatLng = value.latLng.copyWith(latitude: TestData.float);
          final copy = value.copyWith(
            capital: newCapital,
            latLng: newLatLng,
          );

          expect(copy.capital, newCapital);
          expect(copy.latLng, newLatLng);
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.capital, value.capital);
          expect(copy.latLng, value.latLng);
        });
      });
    });
