// ignore_for_file: avoid-substring, no emojis here.
import "../../../model/country/submodels/weekday.dart";

extension WeekdayExtension on Weekday {
  String get labelShort => label.substring(0, 3);
}
