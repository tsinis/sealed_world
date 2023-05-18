import "package:sealed_countries/src/helpers/extensions/world_country/date_time_extension.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("DateTimeExtension", () {
      const timezoneAdd = "UTC+01:00";
      const timezoneSubtract = "UTC-13:45";

      group("tzDuration", () {
        test(
          "with $timezoneAdd",
          () => expect(
            DateTimeExtension.tzDuration(timezoneAdd),
            const Duration(hours: 1),
          ),
        );

        test(
          "with $timezoneSubtract",
          () => expect(
            DateTimeExtension.tzDuration(timezoneSubtract),
            const Duration(hours: 13, minutes: 45),
          ),
        );
      });

      group("toAdd", () {
        test(
          "with $timezoneAdd",
          () => expect(DateTimeExtension.toAdd(timezoneAdd), isTrue),
        );

        test(
          "with $timezoneSubtract",
          () => expect(DateTimeExtension.toAdd(timezoneSubtract), isFalse),
        );
      });

      test("tzUtcDurations", () {
        for (final element in WorldCountry.list) {
          expect(element.tzUtcDurations.length, element.timezones.length);
        }
      });
    });
