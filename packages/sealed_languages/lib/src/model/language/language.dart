import "package:l10n_languages/l10n_languages.dart";

import "../../collections/natural_language_collections.dart";
import "../../data/natural_language_families.data.dart";
import "../../data/natural_languages.data.dart";
import "../../data/scripts.data.dart";
import "../../helpers/extensions/iso_standardized_string_extension.dart";
import "../../helpers/extensions/sealed_world_iterable_extension.dart";
import "../../helpers/extensions/sealed_world_object_extension.dart";
import "../../helpers/extensions/upper_case_iso_map_extension.dart";
import "../../helpers/natural_language/natural_language_json.dart";
import "../../helpers/utils/localization_delegate.dart";
import "../../interfaces/iso_standardized.dart";
import "../../interfaces/json_encodable.dart";
import "../../interfaces/named.dart";
import "../../interfaces/translated.dart";
import "../core/basic_locale.dart";
import "../core/upper_case_iso_map.dart";
import "../language_family/language_family.dart";
import "../script/writing_system.dart";
import "../translated_name.dart";

part "submodels/natural_language.dart";
part "submodels/natural_language.g.dart";
part "submodels/programming_language.dart";

/// A sealed class that represents a language.
///
/// A language is a system of communication consisting of sounds, words, and
/// grammar that is used by a group of people to communicate with each other.
sealed class Language implements Named<String> {
  /// Creates a new instance of the [Language] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the language.
  const Language({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  /// The name of the language.
  @override
  final String name;

  /// Returns a string representation of this [Language] object.
  @override
  String toString({bool short = true}) => 'Language(name: "$name")';
}
