import "../../data/natural_language_families.data.dart";
import "../../interfaces/named.dart";

part "submodels/natural_language_family.dart";
part "submodels/natural_language_family.g.dart";

/// A sealed class that represents a family of related languages.
///
/// A language family is a group of languages that have a common ancestor or are
/// related in some other way.
sealed class LanguageFamily implements Named<String> {
  /// Creates a new instance of the [LanguageFamily] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the language family.
  const LanguageFamily({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  /// The name of the language family.
  @override
  final String name;

  /// Returns a string representation of this [LanguageFamily] object.
  @override
  String toString({bool short = true}) => 'LanguageFamily(name: "$name")';
}
