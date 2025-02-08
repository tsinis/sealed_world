// ignore_for_file: avoid-type-casts

import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/gini.dart";

/// Provides extension methods for [Gini] class.
/// {@macro submodels_class_extension}
extension GiniExtension on Gini {
  /// Converts the [year] field of this [Gini] object to a [DateTime] object.
  ///
  /// Returns a [DateTime] object that represents the date and time
  /// corresponding to the start of the year in which this [Gini] object was
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

  /// {@macro copy_with_method}
  Gini copyWith({int? year, double? coefficient}) => Gini(
        year: year ?? this.year,
        coefficient: coefficient ?? this.coefficient,
      );

  /// {@macro to_map_method}
  Map<String, num> toMap() => {"coefficient": coefficient, "year": year};

  /// {@macro from_map_method}
  static Gini fromMap(JsonMap map) => Gini(
        year: map["year"] as int,
        coefficient: map["coefficient"] as double,
      );
}
