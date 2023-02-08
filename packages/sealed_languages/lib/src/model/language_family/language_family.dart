import "../../data/natural_language_families.dart";

part "submodels/natural_language_family.dart";
part "submodels/natural_language_family.g.dart";

sealed class LanguageFamily {
  const LanguageFamily({required this.name});

  final String name;

  @override
  String toString() => "LanguageFamily(name: $name)";
}
