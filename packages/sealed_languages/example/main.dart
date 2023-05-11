// ignore_for_file: avoid_print

import "package:sealed_languages/sealed_languages.dart";

void main() {
  final indoEuropeanLanguages = NaturalLanguage.list.where(
    (language) => language.family is IndoEuropean,
  );
  // Prints a list of Indo-European languages:
  print(indoEuropeanLanguages);
  // (Language(name: Avestan), Language(name: Afrikaans),
  // ...
  // Language(name: Walloon), Language(name: Yiddish).

  final english = NaturalLanguage.fromCode("Eng");
  print("${english.name}: ${english.codeShort}"); // Prints: "English: EN".

  final italian = NaturalLanguage.fromCodeShort("it");
  print("${italian.name}: ${italian.code}"); // Prints: "Italian: ITA".

  final maybeCzech = NaturalLanguage.maybeFromValue(
    "CZE",
    where: (language) => language.bibliographicCode,
  );

  // This will print: "Native name: čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");

  print(NaturalLanguage.list.length); // Prints: "184".
}
