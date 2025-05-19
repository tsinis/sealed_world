// ignore_for_file: avoid-type-casts

import "../../interfaces/json_encodable.dart";
import "../../model/language/language.dart";
import "../../model/language_family/language_family.dart";
import "../../model/script/writing_system.dart";
import "../../typedefs/typedefs.dart";
import "../extensions/sealed_world_iterable_extension.dart";
import "../extensions/translated_name_extension.dart";

/// Extension on [NaturalLanguage] that provides methods for converting
/// [NaturalLanguage] objects to and from JSON maps.
extension NaturalLanguageJson on NaturalLanguage {
  /// Creates a new instance of [NaturalLanguage] from a JSON map.
  ///
  /// The [map] parameter is a JSON map that contains the properties of the
  /// [NaturalLanguage] object. The map must contain the following keys:
  ///
  /// - `"name"`: Required. A string that represents the name of the language.
  /// - `"code"`: Required. A string that represents the ISO 639-1 code of the
  ///   language.
  /// - `"codeShort"`: Required. A string that represents the short code of the
  ///   language.
  /// - `"namesNative"`: Required. A string that represents the native names
  ///    of the language, separated by the [JsonEncodable.separator] character.
  /// - `"family"`: A string that represents the name of the language family.
  /// - `"isRightToLeft"`: A boolean that indicates whether the language is
  ///   written from right to left.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jsonMap = {
  ///   "name": "American English",
  ///   "code": "ENG",
  ///   "codeShort": "EN",
  ///   "namesNative": ["American English"],
  ///   "isRightToLeft": false,
  ///   "scripts": ["Latn"],
  /// };
  ///
  /// final english = NaturalLanguageJson.fromMap(jsonMap);
  /// ```
  static NaturalLanguage fromMap(JsonMap map) => NaturalLanguage(
    name: map["name"].toString(),
    codeShort: map["codeShort"].toString(),
    namesNative: List<String>.unmodifiable(map["namesNative"] as List),
    code: map["code"].toString(),
    bibliographicCode: map["bibliographicCode"]?.toString(),
    family: NaturalLanguageFamily.fromName(map["family"].toString()),
    isRightToLeft: map["isRightToLeft"] as bool,
    scripts: (map["scripts"] as List<Object?>)
        .fromIsoList(Script.fromCode)
        .toSet(),
  );

  /// Converts the [NaturalLanguage] object to a JSON map.
  ///
  /// The returned map contains the following keys:
  ///
  /// - `"name"`: A string that represents the name of the language.
  /// - `"code"`: A string that represents the ISO 639-1 code of the language.
  /// - `"codeShort"`: A string that represents the short code of the language.
  /// - `"namesNative"`: A string that represents the native names of the
  /// language.
  /// - `"family"`: A string that represents the name of the language family.
  /// - `"isRightToLeft"`: A boolean that indicates whether the language is
  ///   written from right to left.
  /// - `"scripts"`: A string that represents the scripts of the language.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jsonMap = LangEng().toMap();
  /// ```
  JsonObjectMap toMap() => {
    "bibliographicCode": bibliographicCode,
    "code": code,
    "codeShort": codeShort,
    "family": family.name,
    "isRightToLeft": isRightToLeft,
    "name": name,
    "namesNative": namesNative,
    "scripts": scripts.toIsoList(),
    "translations": translations
        .map((l10n) => l10n.toMap())
        .toList(growable: false),
  };
}
