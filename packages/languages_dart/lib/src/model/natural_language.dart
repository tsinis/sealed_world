part of "language.dart";

class NaturalLanguage extends Language {
  const NaturalLanguage({
    required String name,
    required this.nativeNames,
    required this.code,
    required this.terminologicalCode,
    this.bibliographicCode,
    this.family = LangFamily.indoEuropean,
    this.isRightToLeft = false,
  }) : super(name);

  factory NaturalLanguage.fromMap(Map<String, Object?> data) => NaturalLanguage(
        name: data["name"]! as String,
        nativeNames: data["native_name"]! as List<String>, // TODO!
        code: data["code"]! as String,
        terminologicalCode: data["terminological_code"]! as String,
        bibliographicCode: data["bibliographic_code"]! as String,
        family: LangFamily.values.byName(data["family"]! as String),
        isRightToLeft: data["is_right_to_left"]! as bool,
      );

  /// `dart:convert`
  ///
  /// Parses the string, returns the resulting Json object as [NaturalLanguage].
  factory NaturalLanguage.fromJson(String data) =>
      NaturalLanguage.fromMap(json.decode(data) as Map<String, Object?>);

  final String? bibliographicCode;
  final String code;
  final LangFamily family;
  final bool isRightToLeft;
  final List<String> nativeNames;
  final String terminologicalCode;

  @override
  String toString() =>
      """NaturalLanguage(code: $code, terminologicalCode: $terminologicalCode, bibliographicCode: $bibliographicCode, family: $family, name: $name, native_name: $nativeNames, isRightToLeft: $isRightToLeft)""";

  @override
  Map<String, Object?> toMap() => {
        "name": name,
        "bibliographic_code": bibliographicCode,
        "code": code,
        "family": family.name,
        "native_name": nativeNames,
        "terminological_code": terminologicalCode,
        "is_right_to_left": isRightToLeft,
      };

  String get nativeName => nativeNames.first;
}
