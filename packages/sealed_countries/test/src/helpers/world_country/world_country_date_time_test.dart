import "package:sealed_countries/src/helpers/world_country/world_country_date_time.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryDateTime", () {
  const timezoneAdd = "UTC+01:00";
  const timezoneSubtract = "UTC-13:45";
  const utc = WorldCountryDateTime.utcString;

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

    test(
      "with $utc",
      () => expect(WorldCountryDateTime.tzDuration(utc), Duration.zero),
    );

    test(
      "with invalid timezone",
      () => expect(WorldCountryDateTime.tzDuration("UTC+1"), isNull),
    );

    for (final malformed in const [
      "GMT+01:00",
      "UTC+-1:-5",
      "UTC+01x00",
      "UTC 01:00",
      "UTC+99:00",
      "UTC+01:60",
      " UTC+01:00",
    ]) {
      test(
        "with malformed $malformed",
        () => expect(WorldCountryDateTime.tzDuration(malformed), isNull),
      );
    }
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

    test("with $utc", () => expect(WorldCountryDateTime.toAdd(utc), isTrue));

    test(
      "without sign",
      () => expect(WorldCountryDateTime.toAdd("GMT"), isNull),
    );
  });

  group("tzUtcDurations", () {
    test("bundled countries", () {
      for (final element in WorldCountry.list) {
        expect(element.tzUtcDurations.length, element.timezones.length);
      }
    });

    test("skips invalid timezones", () {
      const country = CountryCustom(
        code: "ZZZ",
        timezones: [timezoneAdd, "UTC+1", timezoneSubtract],
      );

      expect(country.tzUtcDurations, [
        (duration: const Duration(hours: 1), toAdd: true),
        (duration: const Duration(hours: 13, minutes: 45), toAdd: false),
      ]);
    });

    test("keeps a bare $utc as a zero offset", () {
      const country = CountryCustom(code: "ZZZ", timezones: [utc, timezoneAdd]);

      expect(country.tzUtcDurations, [
        (duration: Duration.zero, toAdd: true),
        (duration: const Duration(hours: 1), toAdd: true),
      ]);
    });
  });
});
