import "../../data/natural_language_families.dart";
import "../../data/natural_languages.dart";
import "../language_family/language_family.dart";

part "submodels/natural_language.dart";
part "submodels/programming_language.dart";

sealed class Language {
  const Language({required this.name});

  final String name;

  @override
  String toString() => "Language(name: $name)";
}
