import "../../data/scripts.data.dart";
import "../../helpers/script/script_json.dart";
import "../../interfaces/iso_standardized.dart";
import "../../interfaces/json_encodable.dart";
import "../../interfaces/named.dart";

part "submodels/script.dart";
part "submodels/script.g.dart";

/// A sealed class that represents a writing system.
///
/// A writing system is a set of symbols used to represent the sounds of a
/// language. Examples of writing systems include the Latin alphabet, the
/// Cyrillic alphabet, the Chinese script, etc.
sealed class WritingSystem implements Named<String> {
  /// Creates a new instance of [WritingSystem] with the specified name.
  ///
  /// The [name] parameter is a non-empty string that represents the name of
  /// the writing system.
  const WritingSystem({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  @override
  final String name;

  @override
  String toString() => '$WritingSystem(name: "$name")';
}
