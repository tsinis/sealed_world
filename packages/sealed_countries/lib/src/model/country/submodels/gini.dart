import "dart:convert";

import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/gini_extension.dart";

/// A class that represents a Gini coefficient.
///
/// The `Gini` class is a simple value object that represents a Gini
/// coefficient. It consists of an `int` value that represents the year of the
/// Gini coefficient, and a `double` value that represents the value of the Gini
/// coefficient. The `year` field must be greater than 1990, and the
/// `coefficient` field must be between 0.0 and 100.0 (inclusive).
/// Reference - https://wikipedia.org/wiki/Gini_coefficient.
///
/// Example usage:
///
/// ```dart
/// final gini = Gini(year: 2020, coefficient: 32.0);
/// print(gini.year); // Prints: 2020
/// print(gini.coefficient); // Prints: 32.0
/// ```
final class Gini implements JsonEncodable<Gini> {
  /// Creates a new `Gini` object with the given year and coefficient.
  ///
  /// The `year` parameter must be greater than 1990, and the `coefficient`
  /// parameter must be between 0.0 and 100.0 (inclusive).
  const Gini({required this.year, required this.coefficient})
      : assert(year > minYear, "`year` should be greater than $minYear!"),
        assert(
          coefficient < maxCoefficient,
          "`coefficient` should be less than $maxCoefficient!",
        ),
        assert(
          coefficient > minCoefficient,
          "`coefficient` should be greater than $minCoefficient!",
        );

  /// The minimum year that can be used as the `year` parameter when creating a
  /// `Gini` object.
  static const minYear = 1990;

  /// The minimum value that can be used as the `coefficient` parameter when
  /// creating a `Gini` object.
  static const minCoefficient = 0.0;

  /// The maximum value that can be used as the `coefficient` parameter when
  /// creating a `Gini` object.
  static const maxCoefficient = 100.0;

  /// The year of this Gini coefficient.
  final int year;

  /// The value of this Gini coefficient.
  final double coefficient;

  @override
  String toString() => "$Gini(year: $year, coefficient: $coefficient)";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant Gini other) {
    if (identical(this, other)) return true;

    return other.year == year && other.coefficient == coefficient;
  }

  @override
  int get hashCode => year.hashCode ^ coefficient.hashCode;
}
