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

  final russian = NaturalLanguage.fromCodeShort("ru");
  print("${russian.name}: ${russian.code}"); // Prints: "Russian: RUS".

  print(russian.translations); // Prints: 120 translations of the language name.

  final maybeCzech = NaturalLanguage.maybeFromValue(
    "CZE",
    where: (language) => language.bibliographicCode,
  );

  // This will print: "Native name: čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");

  // Contains functional style methods (when, whenOrNull, map, etc).
  print(maybeCzech?.maybeWhen(langCes: () => "Ahoj!", orElse: () => "Hey!"));

  print(NaturalLanguage.list.length); // Prints: "184".
}
