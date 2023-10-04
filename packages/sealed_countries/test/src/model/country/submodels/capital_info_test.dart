import "package:sealed_countries/src/helpers/extensions/country_submodels/capital_info_extension.dart";
import "package:sealed_countries/src/model/country/submodels/capital.dart";
import "package:sealed_countries/src/model/country/submodels/capital_info.dart";
import "package:sealed_countries/src/model/country/submodels/lat_lng.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$CapitalInfo", () {
      const value = CapitalInfo(
        capital: Capital(TestData.string),
        latLng: LatLng(TestData.float, TestData.float),
      );

      group("equality", () {
        const other = CapitalInfo(
          capital: Capital("${TestData.float}"),
          latLng: LatLng(TestData.float, TestData.float),
        );
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(
            array.first,
            equals(
              CapitalInfo(capital: value.capital, latLng: value.latLng),
            ),
          );
          expect(
            value,
            equals(
              CapitalInfo(
                capital: array.first.capital,
                latLng: array.first.latLng,
              ),
            ),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(CapitalInfo(capital: value.capital, latLng: value.latLng));
          expect(array.length, 2);
        });
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(CapitalInfoExtension.fromMap));
      });
    });
