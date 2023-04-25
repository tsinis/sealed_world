import "package:sealed_countries/src/model/country/submodels/maps.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Maps", () {
      const value =
          Maps(googleMaps: TestData.string, openStreetMaps: TestData.string);
      test(
        "googleMapsUrl",
        () => expect(
          value.googleMapsUrl,
          Maps.googleMapsPrefix + TestData.string,
        ),
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
          googleMaps: "${TestData.string} ",
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
          expect(array.length == 2, isTrue);
          array.addAll(List.of(array));
          expect(array.length == 2, isTrue);
          array.add(
            Maps(
              googleMaps: value.googleMaps,
              openStreetMaps: value.openStreetMaps,
            ),
          );
          expect(array.length == 2, isTrue);
        });
      });

      group("asserts", () {
        test("not", () {
          expect(
            () => Maps(
              googleMaps: value.googleMaps,
              openStreetMaps: value.openStreetMaps,
            ),
            isNot(throwsA(isA<AssertionError>())),
          );
        });

        test("empty format", () {
          expect(
            () => Maps(
              googleMaps: TestData.emptyString,
              openStreetMaps: value.openStreetMaps,
            ),
            throwsA(isA<AssertionError>()),
          );
        });

        test("empty regExpPattern", () {
          expect(
            () => Maps(
              googleMaps: value.googleMaps,
              openStreetMaps: TestData.emptyString,
            ),
            throwsA(isA<AssertionError>()),
          );
        });
      });
    });
