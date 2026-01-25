// ignore_for_file: avoid_print, prefer-static-class
import "package:sealed_languages/sealed_languages.dart";

void main() {
  final indoEuropeanLanguages = NaturalLanguage.list.where(
    (language) => language.family is IndoEuropean,
  );
  // Prints a list of Indo-European languages:
  print(indoEuropeanLanguages);

  /// (Language(name: Avestan), Language(name: Afrikaans),
  /// ...
  /// Language(name: Walloon), Language(name: Yiddish).

  const eng = "Eng";
  final fromCode = NaturalLanguage.fromCode(eng);
  print("${fromCode.name}: ${fromCode.codeShort}"); // Prints: "English: EN".
  print(fromCode == const LangEng()); // Prints: "true".

  /// For a O(1) access time, you can use: .map, .codeMap or .codeShortMap.
  print(fromCode == NaturalLanguage.map[eng]); // Prints: "true".

  final script = Script.fromCodeNumeric(215); // [Object] type param.
  print(script == Script.codeMap["Latn"]); // Prints: "true".
  print("${script.name}: ${script.code}"); // Prints: "Latin: Latn".

  final russian = NaturalLanguage.fromCodeShort("ru");
  print("${russian.name}: ${russian.code}"); // Prints: "Russian: RUS".

  final maybeCzech = NaturalLanguage.maybeFromValue(
    "CZE",
    where: (language) => language.bibliographicCode,
  );

  // This will print: "Native name: Čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");
  print(NaturalLanguage.list.length); // Prints: "184".

  const customOne = LangCustom(code: "XTL", codeShort: "XT"); // Custom.
  print(describeLanguage(const LangEng())); // Prints: "English".
  print(describeLanguage(customOne)); // Prints: "Custom language XTL".
  print(describeLanguage(russian)); // Prints: "ISO-based language".

  /// Translations:
  // Prints Slovak translations of all available languages.
  final slovakNames = NaturalLanguage.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicLocale(LangSlk())),
  );

  print(
    """Fully translated to Slovak: ${slovakNames.length == NaturalLanguage.list.length}""",
  ); // Prints: "Fully translated to Slovak: true".
  for (final slkTranslation in slovakNames.entries) {
    print("Slovak name of ${slkTranslation.key.name}: ${slkTranslation.value}");
  }

  // Distinguishes country code in translations.
  print(maybeCzech?.maybeCommonNameFor(const BasicLocale(.por()))); // "Tcheco".
  print(
    maybeCzech?.maybeCommonNameFor(
      const BasicLocale(LangPor(), countryCode: "PT"),
    ),
  ); // Prints "Checo".

  // Distinguishes script in translations.
  print(
    maybeCzech?.commonNameFor(const BasicLocale(LangSrp())),
  ); // Prints "Чешки".
  print(
    maybeCzech?.commonNameFor(const BasicLocale(.srp(), script: .latn())),
  ); // Prints "Češki".
}

String describeLanguage(NaturalLanguage language) => switch (language) {
  LangEng() => language.name,
  LangCustom(:final code) when code.startsWith("X") => "Custom language $code",
  NaturalLanguage(:final isRightToLeft) when isRightToLeft => "RTL language",
  // ignore: avoid-wildcard-cases-with-sealed-classes, just an example.
  _ => "ISO-based language",
};
