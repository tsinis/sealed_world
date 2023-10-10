import "../../data/scripts.data.dart";
import "../../helpers/script/script_json.dart";
import "../../interfaces/iso_standardized.dart";
import "../../interfaces/json_encodable.dart";
import "../../interfaces/named.dart";

part "submodels/script.dart";
part "submodels/script.g.dart";

sealed class WritingSystem implements Named {
  const WritingSystem({required this.name})
      : assert(name.length > 0, "`name` should not be empty!");

  @override
  final String name;

  @override
  String toString() => '$WritingSystem(name: "$name")';
}
