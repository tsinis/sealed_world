import "../../data/natural_language_families.dart";
import "../../data/natural_languages.dart";
import "../language_family/language_family.dart";

part "submodels/natural_language.dart";
part "submodels/natural_language.g.dart";
part "submodels/programming_language.dart";

sealed class Language {
  const Language({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  final String name;

  @override
  String toString() => "Language(name: $name)";
}
