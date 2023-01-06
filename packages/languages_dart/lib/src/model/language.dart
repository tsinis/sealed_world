// ignore_for_file: prefer_double_quotes

import "dart:convert";

import "lang_family.dart";

part "natural_language.dart";
part 'programming_language.dart';

sealed class Language {
  const Language(this.name);

  final String name;

  @override
  String toString() => "Language(name: $name)";

  Map<String, Object?> toMap();

  /// `dart:convert`
  ///
  /// Converts [Language] to a JSON string.
  String toJson() => json.encode(toMap());
}
