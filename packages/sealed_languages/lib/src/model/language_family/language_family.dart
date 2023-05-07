import "../../data/natural_language_families.data.dart";

part "submodels/natural_language_family.dart";
part "submodels/natural_language_family.g.dart";

sealed class LanguageFamily {
  const LanguageFamily({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  final String name;

  @override
  String toString() => "LanguageFamily(name: $name)";
}
