import "../../model/script/writing_system.dart";
import "../../typedefs/typedefs.dart";

extension ScriptJson on Script {
  static Script fromMap(JsonMap map) => Script(
        name: map["name"] as String,
        code: map["code"] as String,
        codeNumeric: map["codeNumeric"] as String,
        date: map["date"] as String,
        pva: map["pva"] as String?,
      );

  JsonObjectMap toMap() => {
        "name": name,
        "code": code,
        "codeNumeric": codeNumeric,
        "date": date,
        "pva": pva,
      };
}
