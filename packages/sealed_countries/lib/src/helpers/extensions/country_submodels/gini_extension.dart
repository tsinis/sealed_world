import "../../../model/country/submodels/gini.dart";

/// A class extension that adds utility methods to the `Gini` class.
extension GiniExtension on Gini {
  /// Converts the `year` field of this `Gini` object to a `DateTime` object.
  ///
  /// Returns a `DateTime` object that represents the date and time
  /// corresponding to the start of the year in which this `Gini` object was
  /// recorded.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final gini = Gini(year: 2020, coefficient: 32.0);
  /// final dateTime = gini.dateTime;
  /// print(dateTime); // Prints: "2020-01-01 00:00:00.000"
  /// ```
  DateTime get dateTime => DateTime(year);
}
