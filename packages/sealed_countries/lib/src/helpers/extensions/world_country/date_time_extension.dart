// ignore_for_file: avoid-substring
import "../../../../sealed_countries.dart";

extension DateTimeExtension on WorldCountry {
  static const minus = "-";
  static const plus = "+";
  static const timezoneValueLength = 9;
  static const utcString = "UTC";

  static bool? toAdd(String timezone) {
    if (timezone.contains(plus)) return true;
    if (timezone.contains(minus)) return false;

    return null;
  }

  static Duration? tzDuration(String timezone) {
    if (timezone.length != timezoneValueLength) return null;
    final hour = timezone.substring(utcString.length + 1, utcString.length + 3);
    final min = timezone.substring(utcString.length + 4, timezoneValueLength);

    final hours = int.tryParse(hour);
    final minutes = int.tryParse(min);
    if (minutes == null || hours == null) return null;

    return Duration(hours: hours, minutes: minutes);
  }

  List<UtcDurationDifference> get tzUtcDurations {
    final elements = List<UtcDurationDifference>.empty(growable: true);
    for (final timezone in timezones) {
      final duration = tzDuration(timezone);
      final toAddDuration = toAdd(timezone);
      if (duration == null || toAddDuration == null) break;
      elements.add((duration: duration, toAdd: toAddDuration));
    }

    return List.unmodifiable(elements);
  }
}
