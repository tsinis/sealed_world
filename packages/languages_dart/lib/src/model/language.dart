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

  // TODO!: Not working in Dart 3.0.0-55.
  // @override
  // bool operator ==(Object other) {
  //   if (identical(other, this)) {
  //     return true;
  //   }
  //   if (other is! Language) {
  //     return false;
  //   }

  //   return other.name == name;
  // }

  @override
  int get hashCode => name.hashCode;

  Map<String, Object?> toMap();

  /// `dart:convert`
  ///
  /// Converts [Language] to a JSON string.
  String toJson() => json.encode(toMap());
}
