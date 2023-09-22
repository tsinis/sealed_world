import "../../interfaces/json_encodable.dart";
import "../../model/language/language.dart";
import "../../model/language_family/language_family.dart";
import "../../typedefs/typedefs.dart";

extension NaturalLanguageJson on NaturalLanguage {
  static NaturalLanguage fromMap(JsonMap map) => NaturalLanguage(
        name: map["name"] as String,
        codeShort: map["codeShort"] as String,
        namesNative:
            map["namesNative"].toString().split(JsonEncodable.separator),
        code: map["code"] as String,
        bibliographicCode: map["bibliographicCode"] as String?,
        family: NaturalLanguageFamily.fromName(map["family"].toString()),
        isRightToLeft: map["isRightToLeft"] as bool,
      );

  Map<String, Object?> toMap() => {
        "name": name,
        "code": code,
        "codeShort": codeShort,
        "namesNative": namesNative.join(JsonEncodable.separator),
        "bibliographicCode": bibliographicCode,
        "family": family.name,
        "isRightToLeft": isRightToLeft,
      };
}
