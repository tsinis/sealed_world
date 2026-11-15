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
  /// If the timezone string contains the `plus` character, or is the
  /// [utcString] itself (a zero offset), returns `true`. If the timezone
  /// string contains the `minus` character, returns `false`. Otherwise,
  /// returns `null`.
  static bool? toAdd(String timezone) {
    if (timezone == utcString || timezone.contains(plus)) return true;
    if (timezone.contains(minus)) return false;

    return null;
  }

  /// Returns a [Duration] object representing the offset from UTC indicated by
  /// the given timezone string.
  ///
  /// If the timezone string is the [utcString] itself, returns a zero
  /// [Duration]. If it has the `UTC±hh:mm` format (e.g. `UTC+05:30`, with
  /// hours from `00` to `23` and minutes from `00` to `59`), returns the
  /// (always positive) offset from UTC, use [toAdd] for its direction.
  /// Otherwise, returns `null`.
  static Duration? tzDuration(String timezone) {
    if (timezone == utcString) return Duration.zero;
    final match = _offsetPattern.firstMatch(timezone);
    if (match == null) return null;
    final hours = int.parse(match.group(1) ?? "");
    final minutes = int.parse(match.group(2) ?? "");

    return Duration(hours: hours, minutes: minutes);
  }

  static final _offsetPattern = RegExp(r"^UTC[+-]([01]\d|2[0-3]):([0-5]\d)$");

  /// Returns an unmodifiable list of [UtcDurationDifference] objects
  /// representing the time differences between Coordinated Universal Time (UTC)
  /// and the time zones in the [timezones] list of the [WorldCountry] object.
  ///
  /// For each timezone in the [timezones] list, extracts the duration offset
  /// from UTC and whether the offset is to be added to UTC or subtracted from
  /// it. Returns an unmodifiable list of [UtcDurationDifference] objects, each
  /// of which contains the duration offset and a boolean indicating whether it
  /// is to be added to or subtracted from UTC. If the [timezones] list is
  /// empty, returns an empty list. Invalid timezones are skipped, so the
  /// durations of all valid timezones are returned. In that case the result is
  /// shorter than [timezones] and its indices no longer match it, so use
  /// [tzDuration] and [toAdd] on each timezone when you need to know which
  /// timezone an offset belongs to.
  List<UtcDurationDifference> get tzUtcDurations {
    final elements = List<UtcDurationDifference>.empty(growable: true);

    for (final timezone in timezones) {
      final duration = tzDuration(timezone);
      final toAddDuration = toAdd(timezone);
      if (duration == null || toAddDuration == null) continue;
      elements.add((duration: duration, toAdd: toAddDuration));
    }

    return List<UtcDurationDifference>.unmodifiable(elements);
  }
}
