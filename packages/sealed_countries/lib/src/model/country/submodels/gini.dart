class Gini {
  const Gini({required this.year, required this.value});

  final int year;
  final double value;

  DateTime get dateTime => DateTime(year);

  @override
  String toString() => "Gini(value: $value, year: $year)";
}
