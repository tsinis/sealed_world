import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/flag_extension.dart";
import "package:world_flags/src/model/flag_properties.dart";

void main() => group("FlagExtension", () {
      group("flagProperties", () {
        for (final country in WorldCountry.list) {
          test(
            "${country.internationalName} has $FlagProperties",
            () => expect(country.flagProperties, isNotNull),
          );
        }
      });

      group("flagColors", () {
        for (final country in WorldCountry.list) {
          test(
            "${country.internationalName} has non empty flag colors",
            () => expect(country.flagColors, isNotEmpty),
          );
        }
      });

      group("flagStripeColors", () {
        for (final country in WorldCountry.list) {
          test(
            "${country.internationalName} has non empty flag stripe colors",
            () => expect(country.flagStripeColors, isNotEmpty),
          );
        }
      });

      group("flagElementsColors", () {
        for (final country in WorldCountry.list) {
          test(
            "${country.internationalName} has non empty flag elements colors",
            () {
              if (country.flagProperties?.elementsProperties?.isNotEmpty ??
                  false) {
                expect(country.flagElementsColors, isNotEmpty);
              }
            },
          );
        }
      });
    });
