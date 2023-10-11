import "../../model/script/writing_system.dart";
import "../../typedefs/typedefs.dart";

/// Extension on [Script] that provides methods for converting
/// [Script] objects to and from JSON maps.
extension ScriptJson on Script {
  /// {@macro from_json_method}
  static Script fromMap(JsonMap map) => Script(
        name: map["name"] as String,
        code: map["code"] as String,
        codeNumeric: map["codeNumeric"] as String,
        date: map["date"] as String,
        pva: map["pva"] as String?,
      );

  /// {@macro from_map_method}
  JsonObjectMap toMap() => {
        "name": name,
        "code": code,
        "codeNumeric": codeNumeric,
        "date": date,
        "pva": pva,
      };
}
