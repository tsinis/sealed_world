// ignore_for_file: prefer-correct-identifier-length
import "package:languages_dart/languages_dart.dart";

class Demonyms {
  const Demonyms({required this.language, required this.f, required this.m});

  final NaturalLanguage language;
  final String f;
  final String m;

  @override
  String toString() => "Demonyms(language: $language, f: $f, m: $m)";
}
