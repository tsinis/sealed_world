import "../../model/script/submodels/script.dart";
import "../../typedefs/typedefs.dart";
import "script_copy_with.dart";

/// Extension on [Script] that provides methods for converting
/// [Script] objects to and from JSON maps.
extension ScriptJson on Script {
  /// {@macro from_map_method}
  static Script fromMap(JsonMap map) {
    final code = map["code"]?.toString().trim() ?? "";
    final codeNumeric = map["codeNumeric"]?.toString().trim() ?? "";
    if (code.isEmpty && codeNumeric.isEmpty) {
      throw ArgumentError(
        "The `code` (or at least `codeNumeric`) must be provided!",
      );
    }

    return ScriptCustom(code: code, codeNumeric: codeNumeric).copyWith(
      name: map["name"]?.toString(),
      date: map["date"]?.toString(),
      pva: map["pva"]?.toString(),
    );
  }

  /// {@macro to_map_method}
  Map<String, String> toMap() => {
    "code": code,
    "codeNumeric": codeNumeric,
    "date": date,
    "name": name,
    "pva": ?pva,
  };
}
