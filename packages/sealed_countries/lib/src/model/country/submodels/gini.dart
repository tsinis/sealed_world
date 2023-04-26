// Reference: https://wikipedia.org/wiki/Gini_coefficient.
final class Gini {
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

  static const minYear = 1990;
  static const minCoefficient = 0.0;
  static const maxCoefficient = 100.0;

  final int year;
  final double coefficient;

  @override
  String toString() => "Gini(year: $year, coefficient: $coefficient)";

  @override
  bool operator ==(covariant Gini other) {
    if (identical(this, other)) return true;

    return other.year == year && other.coefficient == coefficient;
  }

  @override
  int get hashCode => year.hashCode ^ coefficient.hashCode;
}
