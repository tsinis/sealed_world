part "subregion.dart";

sealed class Region {
  const Region({required this.name});

  final String name;

  @override
  String toString() => "Region(name: $name)";
}
