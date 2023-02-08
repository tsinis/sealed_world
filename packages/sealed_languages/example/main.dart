// ignore_for_file: avoid_print

import "package:sealed_languages/sealed_languages.dart";

void main() {
  final indoEuropeanLanguages = NaturalLanguage.list.where(
    (language) => language.family is IndoEuropean,
  );
  print(indoEuropeanLanguages); // Prints a list of Indo-European languages.
}
