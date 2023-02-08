// ignore_for_file: prefer-correct-identifier-length
import "package:sealed_languages/sealed_languages.dart";

class Demonyms {
  const Demonyms({required this.language, required this.f, required this.m});

  final NaturalLanguage language;
  final String f;
  final String m;

  @override
  String toString() => "Demonyms(language: $language, f: $f, m: $m)";
}
