import "package:sealed_countries/src/helpers/extensions/country_submodels/lat_lng_extension.dart";
import "package:sealed_countries/src/model/country/submodels/lat_lng.dart";
import "package:sealed_currencies/sealed_currencies.dart";
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
          expect(
            array.first,
            equals(LatLng(value.latitude, value.longitude)),
          );
          expect(
            value,
            equals(LatLng(array.first.latitude, array.first.longitude)),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(LatLng(value.latitude, value.longitude));
          expect(array.length, 2);
        });
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(LatLngExtension.fromMap));
      });
    });
