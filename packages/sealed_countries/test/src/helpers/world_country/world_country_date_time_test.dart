import "package:sealed_countries/src/helpers/world_country/world_country_date_time.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryDateTime", () {
      const timezoneAdd = "UTC+01:00";
      const timezoneSubtract = "UTC-13:45";

      group("tzDuration", () {
        test(
          "with $timezoneAdd",
          () => expect(
            WorldCountryDateTime.tzDuration(timezoneAdd),
            const Duration(hours: 1),
          ),
        );

        test(
          "with $timezoneSubtract",
          () => expect(
            WorldCountryDateTime.tzDuration(timezoneSubtract),
            const Duration(hours: 13, minutes: 45),
          ),
        );
      });

      group("toAdd", () {
        test(
          "with $timezoneAdd",
          () => expect(WorldCountryDateTime.toAdd(timezoneAdd), isTrue),
        );

        test(
          "with $timezoneSubtract",
          () => expect(WorldCountryDateTime.toAdd(timezoneSubtract), isFalse),
        );
      });

      test("tzUtcDurations", () {
        for (final element in WorldCountry.list) {
          expect(element.tzUtcDurations.length, element.timezones.length);
        }
      });
    });
