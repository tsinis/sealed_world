part of "language.dart";

class ProgrammingLanguage extends Language {
  const ProgrammingLanguage({required String name}) : super(name);

  factory ProgrammingLanguage.fromMap(Map<String, Object?> data) =>
      ProgrammingLanguage(name: data["name"]! as String);

  /// `dart:convert`
  ///
  /// Parses the string, returns the resulting Json
  /// object as [ProgrammingLanguage].
  factory ProgrammingLanguage.fromJson(String data) =>
      ProgrammingLanguage.fromMap(json.decode(data) as Map<String, Object?>);

  @override
  String toString() => "ProgrammingLanguage(name: $name";

  @override
  Map<String, Object?> toMap() => {"name": name};
}
