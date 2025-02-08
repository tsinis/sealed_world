// ignore_for_file: avoid-substring

import "../../model/country/country.dart";
import "../../model/typedefs/utc_duration_difference.dart";

/// Provides extension methods for working with time zones and [DateTime]
/// objects related to a [WorldCountry] object.
extension WorldCountryDateTime on WorldCountry {
  /// The string for a negative UTC offset from the timezone.
  static const minus = "-";

  /// The string for a positive UTC offset from the timezone.
  static const plus = "+";

  /// The length of the string value for a timezone offset.
  static const timezoneValueLength = 9;

  /// The string representation of Coordinated Universal Time (UTC).
  static const utcString = "UTC";

  /// Returns a boolean indicating whether the given timezone string indicates
  /// an offset to add to UTC.
  ///
  /// If the timezone string contains the `plus` character, returns `true`. If
  /// the timezone string contains the `minus` character, returns `false`.
  /// Otherwise, returns `null`.
  static bool? toAdd(String timezone) {
    if (timezone.contains(plus)) return true;
    if (timezone.contains(minus)) return false;

    return null;
  }

  /// Returns a [Duration] object representing the offset from UTC indicated by
  /// the given timezone string.
  ///
  /// If the length of the timezone string is not equal to
  /// [timezoneValueLength], returns `null`. Otherwise, extracts the hours and
  /// minutes values from the timezone string and returns a [Duration] object
  /// representing the offset from UTC. The hours and minutes values are parsed
  /// from the substring of the timezone string starting at the index of the
  /// [utcString] constant plus 1 and continuing for two characters (the hours
  /// value), and the substring starting at the index of the [utcString]
  /// constant plus 4 and continuing for two characters (the minutes value).
  static Duration? tzDuration(String timezone) {
    if (timezone.length != timezoneValueLength) return null;
    final hour = timezone.substring(utcString.length + 1, utcString.length + 3);
    final min = timezone.substring(utcString.length + 4, timezoneValueLength);

    final intHour = int.tryParse(hour);
    final minutes = int.tryParse(min);
    if (minutes == null || intHour == null) return null;

    return Duration(hours: intHour, minutes: minutes);
  }

  /// Returns an unmodifiable list of [UtcDurationDifference] objects
  /// representing the time differences between Coordinated Universal Time (UTC)
  /// and the time zones in the [timezones] list of the [WorldCountry] object.
  ///
  /// For each timezone in the [timezones] list, extracts the duration offset
  /// from UTC and whether the offset is to be added to UTC or subtracted from
  /// it. Returns an unmodifiable list of [UtcDurationDifference] objects, each
  /// of which contains the duration offset and a boolean indicating whether it
  /// is to be added to or subtracted from UTC. If the length of the [timezones]
  /// list is 0 or if any of the timezones are invalid, returns an empty list.
  List<UtcDurationDifference> get tzUtcDurations {
    final elements = List<UtcDurationDifference>.empty(growable: true);

    for (final timezone in timezones) {
      final duration = tzDuration(timezone);
      final toAddDuration = toAdd(timezone);
      if (duration == null || toAddDuration == null) break;
      elements.add((duration: duration, toAdd: toAddDuration));
    }

    return List<UtcDurationDifference>.unmodifiable(elements);
  }
}
