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

  /// Translations of the language name.
  print(russian.translations.length); // Prints: 120.

  final maybeCzech = NaturalLanguage.maybeFromValue(
    "CZE",
    where: (language) => language.bibliographicCode,
  );

  // This will print: "Native name: čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");

  // Contains functional style methods (when, whenOrNull, map, etc).
  print(maybeCzech?.maybeWhen(langCes: () => "Ahoj!", orElse: () => "Hey!"));

  print(NaturalLanguage.list.length); // Prints: "184".

  /// Translations:

  // Prints Slovak translations of all available languages.
  for (final language in NaturalLanguage.list) {
    print(
      """Slovak name of ${language.name}: ${language.maybeTranslation(const LangSlk())?.name}""",
    );
  }

  // Distinguishes country code in translations.
  print(maybeCzech?.maybeTranslation(const LangPor())?.name); // Prints tcheco.
  print(
    maybeCzech?.maybeTranslation(const LangPor(), countryCode: "PT")?.name,
  ); // Prints "checo".

  // Distinguishes script in translations.
  print(maybeCzech?.maybeTranslation(const LangSrp())?.name); // Prints "чешки".
  print(
    maybeCzech
        ?.maybeTranslation(const LangSrp(), script: const ScriptLatn())
        ?.name, // Prints "češki".
  );
}
