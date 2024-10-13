import "../../model/script/writing_system.dart";
import "../../typedefs/typedefs.dart";

/// Extension on [Script] that provides methods for converting
/// [Script] objects to and from JSON maps.
extension ScriptJson on Script {
  /// {@macro from_json_method}
  static Script fromMap(JsonMap map) => Script(
        name: map["name"].toString(),
        code: map["code"].toString(),
        codeNumeric: map["codeNumeric"].toString(),
        date: map["date"].toString(),
        pva: map["pva"]?.toString(),
      );

  /// {@macro from_map_method}
  JsonObjectMap toMap() => {
        "code": code,
        "codeNumeric": codeNumeric,
        "date": date,
        "name": name,
        "pva": pva,
      };
}
