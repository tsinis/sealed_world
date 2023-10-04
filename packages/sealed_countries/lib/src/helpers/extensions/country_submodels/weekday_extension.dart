import "../../../model/country/submodels/weekday.dart";

/// A class extension that adds utility methods to the `Weekday` enum.
extension WeekdayExtension on Weekday {
  /// Returns the first three characters of the label for this `Weekday` object.
  ///
  /// Returns a `String` object that represents the first three characters of
  /// the label for this `Weekday` object.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// const monday = Weekday.monday;
  /// final labelShort = monday.labelShort;
  /// print(labelShort); // Output: "Mon"
  /// ```
  // ignore: avoid-substring, no emojis here.
  String get labelShort => label.substring(0, 3);
}
