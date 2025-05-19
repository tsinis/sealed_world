// ignore_for_file: avoid_print, prefer-match-file-name
import "package:l10n_languages/l10n_languages.dart"; // For custom ISO with L10N.
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
  print(fromCode.isEng); // Prints: "true".

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

  // This will print: "Native name: čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");

  // Contains functional style methods (when, whenOrNull, map, etc).
  print(maybeCzech?.maybeWhen(orElse: () => "Hey!", langCes: () => "Ahoj!"));

  print(NaturalLanguage.list.length); // Prints: "184".

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
  print(
    maybeCzech?.maybeCommonNameFor(const BasicLocale(LangPor())),
  ); // Prints "tcheco".
  print(
    maybeCzech?.maybeCommonNameFor(
      const BasicLocale(LangPor(), countryCode: "PT"),
    ),
  ); // Prints "checo".

  // Distinguishes script in translations.
  print(
    maybeCzech?.commonNameFor(const BasicLocale(LangSrp())),
  ); // Prints "чешки".
  print(
    maybeCzech?.commonNameFor(
      const BasicLocale(LangSrp(), script: ScriptLatn()),
    ),
  ); // Prints "češki".

  const customLang = _LangCustom();

  print(customLang.name); // Prints "Custom".
  print(
    customLang.commonNameFor(const BasicLocale(LangEng())),
  ); // Prints "Custom lang".
}

/// Creates a instance of the custom language with permissive constructor.
class _LangCustom extends NaturalLanguage {
  const _LangCustom() : super.permissive(name: "Custom", code: "CUSTOM");

  @override
  LocalizationDelegate get l10n => super.l10n.copyWith(
    mapper: () => LanguagesLocaleMapper(
      other: {
        /// From the `l10n_languages` package.
        "en": IsoLocaleMapper(
          other: {code: "$name lang", "$code+": "$name rich language name"},
        ),
      },
    ).localize,
  );
}
