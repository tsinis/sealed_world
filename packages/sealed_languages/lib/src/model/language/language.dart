import "dart:convert";

import "../../data/natural_language_families.data.dart";
import "../../data/natural_languages.data.dart";
import "../../helpers/extensions/json_natural_language.dart";
import "../../interfaces/iso_standardized.dart";
import "../../interfaces/json_encodable.dart";
import "../language_family/language_family.dart";

part "submodels/natural_language.dart";
part "submodels/natural_language.g.dart";
part "submodels/programming_language.dart";

/// A sealed class that represents a language.
///
/// A language is a system of communication consisting of sounds, words, and
/// grammar that is used by a group of people to communicate with each other.
sealed class Language {
  /// Creates a new instance of the [Language] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the language.
  const Language({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  /// The name of the language.
  final String name;

  /// Returns a string representation of this [Language] object.
  @override
  String toString() => "Language(name: $name)";
}
