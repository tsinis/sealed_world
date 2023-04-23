// ignore_for_file: prefer-correct-identifier-length, // TODO.

import "package:sealed_languages/sealed_languages.dart";

final class Demonyms {
  const Demonyms({required this.language, required this.f, required this.m});

  final NaturalLanguage language;
  final String f;
  final String m;

  @override
  String toString() => "Demonyms(language: $language, f: $f, m: $m)";

  @override
  bool operator ==(covariant Demonyms other) {
    if (identical(this, other)) return true;

    return other.language == language && other.f == f && other.m == m;
  }

  @override
  int get hashCode => language.hashCode ^ f.hashCode ^ m.hashCode;
}
