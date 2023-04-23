final class Gini {
  const Gini({required this.year, required this.value});

  final int year;
  final double value;

  @override
  String toString() => "Gini(year: $year, value: $value)";

  @override
  bool operator ==(covariant Gini other) {
    if (identical(this, other)) return true;

    return other.year == year && other.value == value;
  }

  @override
  int get hashCode => year.hashCode ^ value.hashCode;
}
