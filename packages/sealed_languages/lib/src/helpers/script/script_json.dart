import "../../model/script/submodels/script.dart";
import "../../typedefs/typedefs.dart";
import "script_copy_with.dart";

/// Extension on [Script] that provides methods for converting
/// [Script] objects to and from JSON maps.
extension ScriptJson on Script {
  /// {@macro from_map_method}
  static Script fromMap(JsonMap map) =>
      ScriptCustom(code: map["code"].toString()).copyWith(
        name: map["name"]?.toString(),
        codeNumeric: map["codeNumeric"]?.toString(),
        date: map["date"]?.toString(),
        pva: map["pva"]?.toString(),
      );

  /// {@macro to_map_method}
  Map<String, String> toMap() => {
    "code": code,
    "codeNumeric": codeNumeric,
    "date": date,
    "name": name,
    "pva": ?pva,
  };
}
