// ignore: avoid-importing-entrypoint-exports, it contains all the translations.
import "../../language_translations.dart";
import "../model/language/language.dart";
import "../model/translated_name.dart";
import "natural_language_families.data.dart";
import "scripts.data.dart";

/// A class that represents the Afar language.
class LangAar extends NaturalLanguage {
  /// Creates a instance of [LangAar] (Afar language).
  ///
  /// ISO 639-2/T code: "AAR", ISO 639-1 code: "AA".
  const LangAar()
      : super(
          name: "Afar",
          code: "AAR",
          codeShort: "AA",
          namesNative: const ["Afaraf"],
          family: const AfroAsiatic(),
        );

  @override
  List<TranslatedName> get translations => aarLanguageTranslations;
}

/// A class that represents the Abkhaz language.
class LangAbk extends NaturalLanguage {
  /// Creates a instance of [LangAbk] (Abkhaz language).
  ///
  /// ISO 639-2/T code: "ABK", ISO 639-1 code: "AB".
  const LangAbk()
      : super(
          name: "Abkhaz",
          code: "ABK",
          codeShort: "AB",
          namesNative: const ["аҧсуа бызшәа", "аҧсшәа"],
          family: const NorthwestCaucasian(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => abkLanguageTranslations;
}

/// A class that represents the Afrikaans language.
class LangAfr extends NaturalLanguage {
  /// Creates a instance of [LangAfr] (Afrikaans language).
  ///
  /// ISO 639-2/T code: "AFR", ISO 639-1 code: "AF".
  const LangAfr()
      : super(
          name: "Afrikaans",
          code: "AFR",
          codeShort: "AF",
          namesNative: const ["Afrikaans"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => afrLanguageTranslations;
}

/// A class that represents the Akan language.
class LangAka extends NaturalLanguage {
  /// Creates a instance of [LangAka] (Akan language).
  ///
  /// ISO 639-2/T code: "AKA", ISO 639-1 code: "AK".
  const LangAka()
      : super(
          name: "Akan",
          code: "AKA",
          codeShort: "AK",
          namesNative: const ["Akan"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => akaLanguageTranslations;
}

/// A class that represents the Amharic language.
class LangAmh extends NaturalLanguage {
  /// Creates a instance of [LangAmh] (Amharic language).
  ///
  /// ISO 639-2/T code: "AMH", ISO 639-1 code: "AM".
  const LangAmh()
      : super(
          name: "Amharic",
          code: "AMH",
          codeShort: "AM",
          namesNative: const ["አማርኛ"],
          family: const AfroAsiatic(),
          scripts: const {ScriptEthi()},
        );

  @override
  List<TranslatedName> get translations => amhLanguageTranslations;
}

/// A class that represents the Arabic language.
class LangAra extends NaturalLanguage {
  /// Creates a instance of [LangAra] (Arabic language).
  ///
  /// ISO 639-2/T code: "ARA", ISO 639-1 code: "AR".
  const LangAra()
      : super(
          name: "Arabic",
          code: "ARA",
          codeShort: "AR",
          namesNative: const ["العربية"],
          family: const AfroAsiatic(),
          isRightToLeft: true,
          scripts: const {ScriptArab()},
        );

  @override
  List<TranslatedName> get translations => araLanguageTranslations;
}

/// A class that represents the Aragonese language.
class LangArg extends NaturalLanguage {
  /// Creates a instance of [LangArg] (Aragonese language).
  ///
  /// ISO 639-2/T code: "ARG", ISO 639-1 code: "AN".
  const LangArg()
      : super(
          name: "Aragonese",
          code: "ARG",
          codeShort: "AN",
          namesNative: const ["aragonés"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => argLanguageTranslations;
}

/// A class that represents the Assamese language.
class LangAsm extends NaturalLanguage {
  /// Creates a instance of [LangAsm] (Assamese language).
  ///
  /// ISO 639-2/T code: "ASM", ISO 639-1 code: "AS".
  const LangAsm()
      : super(
          name: "Assamese",
          code: "ASM",
          codeShort: "AS",
          namesNative: const ["অসমীয়া"],
          family: const IndoEuropean(),
          scripts: const {ScriptBeng()},
        );

  @override
  List<TranslatedName> get translations => asmLanguageTranslations;
}

/// A class that represents the Avaric language.
class LangAva extends NaturalLanguage {
  /// Creates a instance of [LangAva] (Avaric language).
  ///
  /// ISO 639-2/T code: "AVA", ISO 639-1 code: "AV".
  const LangAva()
      : super(
          name: "Avaric",
          code: "AVA",
          codeShort: "AV",
          namesNative: const ["авар мацӀ", "магӀарул мацӀ"],
          family: const NortheastCaucasian(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => avaLanguageTranslations;
}

/// A class that represents the Avestan language.
class LangAve extends NaturalLanguage {
  /// Creates a instance of [LangAve] (Avestan language).
  ///
  /// ISO 639-2/T code: "AVE", ISO 639-1 code: "AE".
  const LangAve()
      : super(
          name: "Avestan",
          code: "AVE",
          codeShort: "AE",
          namesNative: const ["avesta"],
          family: const IndoEuropean(),
          scripts: const {ScriptAvst()},
        );

  @override
  List<TranslatedName> get translations => aveLanguageTranslations;
}

/// A class that represents the Aymara language.
class LangAym extends NaturalLanguage {
  /// Creates a instance of [LangAym] (Aymara language).
  ///
  /// ISO 639-2/T code: "AYM", ISO 639-1 code: "AY".
  const LangAym()
      : super(
          name: "Aymara",
          code: "AYM",
          codeShort: "AY",
          namesNative: const ["aymar aru"],
          family: const Aymaran(),
        );

  @override
  List<TranslatedName> get translations => aymLanguageTranslations;
}

/// A class that represents the Azerbaijani language.
class LangAze extends NaturalLanguage {
  /// Creates a instance of [LangAze] (Azerbaijani language).
  ///
  /// ISO 639-2/T code: "AZE", ISO 639-1 code: "AZ".
  const LangAze()
      : super(
          name: "Azerbaijani",
          code: "AZE",
          codeShort: "AZ",
          namesNative: const ["azərbaycan dili"],
          family: const Turkic(),
          scripts: const {ScriptArab(), ScriptLatn(), ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => azeLanguageTranslations;
}

/// A class that represents the Bashkir language.
class LangBak extends NaturalLanguage {
  /// Creates a instance of [LangBak] (Bashkir language).
  ///
  /// ISO 639-2/T code: "BAK", ISO 639-1 code: "BA".
  const LangBak()
      : super(
          name: "Bashkir",
          code: "BAK",
          codeShort: "BA",
          namesNative: const ["башҡорт теле"],
          family: const Turkic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => bakLanguageTranslations;
}

/// A class that represents the Bambara language.
class LangBam extends NaturalLanguage {
  /// Creates a instance of [LangBam] (Bambara language).
  ///
  /// ISO 639-2/T code: "BAM", ISO 639-1 code: "BM".
  const LangBam()
      : super(
          name: "Bambara",
          code: "BAM",
          codeShort: "BM",
          namesNative: const ["bamanankan"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => bamLanguageTranslations;
}

/// A class that represents the Belarusian language.
class LangBel extends NaturalLanguage {
  /// Creates a instance of [LangBel] (Belarusian language).
  ///
  /// ISO 639-2/T code: "BEL", ISO 639-1 code: "BE".
  const LangBel()
      : super(
          name: "Belarusian",
          code: "BEL",
          codeShort: "BE",
          namesNative: const ["беларуская мова"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => belLanguageTranslations;
}

/// A class that represents the Bengali (Bangla) language.
class LangBen extends NaturalLanguage {
  /// Creates a instance of [LangBen] (Bengali (Bangla) language).
  ///
  /// ISO 639-2/T code: "BEN", ISO 639-1 code: "BN".
  const LangBen()
      : super(
          name: "Bengali (Bangla)",
          code: "BEN",
          codeShort: "BN",
          namesNative: const ["বাংলা"],
          family: const IndoEuropean(),
          scripts: const {ScriptBeng()},
        );

  @override
  List<TranslatedName> get translations => benLanguageTranslations;
}

/// A class that represents the Bihari language.
class LangBih extends NaturalLanguage {
  /// Creates a instance of [LangBih] (Bihari language).
  ///
  /// ISO 639-2/T code: "BIH", ISO 639-1 code: "BH".
  const LangBih()
      : super(
          name: "Bihari",
          code: "BIH",
          codeShort: "BH",
          namesNative: const ["भोजपुरी"],
          family: const IndoEuropean(),
          scripts: const {ScriptDeva(), ScriptBhks()},
        );

  @override
  List<TranslatedName> get translations => bihLanguageTranslations;
}

/// A class that represents the Bislama language.
class LangBis extends NaturalLanguage {
  /// Creates a instance of [LangBis] (Bislama language).
  ///
  /// ISO 639-2/T code: "BIS", ISO 639-1 code: "BI".
  const LangBis()
      : super(
          name: "Bislama",
          code: "BIS",
          codeShort: "BI",
          namesNative: const ["Bislama"],
          family: const Creole(),
        );

  @override
  List<TranslatedName> get translations => bisLanguageTranslations;
}

/// A class that represents the Tibetan Standard language.
class LangBod extends NaturalLanguage {
  /// Creates a instance of [LangBod] (Tibetan Standard language).
  ///
  /// ISO 639-2/T code: "BOD", ISO 639-1 code: "BO".
  const LangBod()
      : super(
          name: "Tibetan Standard",
          code: "BOD",
          codeShort: "BO",
          namesNative: const ["བོད་ཡིག"],
          bibliographicCode: "TIB",
          family: const SinoTibetan(),
          scripts: const {ScriptTibt()},
        );

  @override
  List<TranslatedName> get translations => bodLanguageTranslations;
}

/// A class that represents the Bosnian language.
class LangBos extends NaturalLanguage {
  /// Creates a instance of [LangBos] (Bosnian language).
  ///
  /// ISO 639-2/T code: "BOS", ISO 639-1 code: "BS".
  const LangBos()
      : super(
          name: "Bosnian",
          code: "BOS",
          codeShort: "BS",
          namesNative: const ["bosanski jezik"],
          family: const IndoEuropean(),
          scripts: const {ScriptLatn(), ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => bosLanguageTranslations;
}

/// A class that represents the Breton language.
class LangBre extends NaturalLanguage {
  /// Creates a instance of [LangBre] (Breton language).
  ///
  /// ISO 639-2/T code: "BRE", ISO 639-1 code: "BR".
  const LangBre()
      : super(
          name: "Breton",
          code: "BRE",
          codeShort: "BR",
          namesNative: const ["brezhoneg"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => breLanguageTranslations;
}

/// A class that represents the Bulgarian language.
class LangBul extends NaturalLanguage {
  /// Creates a instance of [LangBul] (Bulgarian language).
  ///
  /// ISO 639-2/T code: "BUL", ISO 639-1 code: "BG".
  const LangBul()
      : super(
          name: "Bulgarian",
          code: "BUL",
          codeShort: "BG",
          namesNative: const ["български език"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => bulLanguageTranslations;
}

/// A class that represents the Catalan language.
class LangCat extends NaturalLanguage {
  /// Creates a instance of [LangCat] (Catalan language).
  ///
  /// ISO 639-2/T code: "CAT", ISO 639-1 code: "CA".
  const LangCat()
      : super(
          name: "Catalan",
          code: "CAT",
          codeShort: "CA",
          namesNative: const ["català"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => catLanguageTranslations;
}

/// A class that represents the Czech language.
class LangCes extends NaturalLanguage {
  /// Creates a instance of [LangCes] (Czech language).
  ///
  /// ISO 639-2/T code: "CES", ISO 639-1 code: "CS".
  const LangCes()
      : super(
          name: "Czech",
          code: "CES",
          codeShort: "CS",
          namesNative: const ["čeština"],
          bibliographicCode: "CZE",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => cesLanguageTranslations;
}

/// A class that represents the Chamorro language.
class LangCha extends NaturalLanguage {
  /// Creates a instance of [LangCha] (Chamorro language).
  ///
  /// ISO 639-2/T code: "CHA", ISO 639-1 code: "CH".
  const LangCha()
      : super(
          name: "Chamorro",
          code: "CHA",
          codeShort: "CH",
          namesNative: const ["Chamoru"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => chaLanguageTranslations;
}

/// A class that represents the Chechen language.
class LangChe extends NaturalLanguage {
  /// Creates a instance of [LangChe] (Chechen language).
  ///
  /// ISO 639-2/T code: "CHE", ISO 639-1 code: "CE".
  const LangChe()
      : super(
          name: "Chechen",
          code: "CHE",
          codeShort: "CE",
          namesNative: const ["нохчийн мотт"],
          family: const NortheastCaucasian(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => cheLanguageTranslations;
}

/// A class that represents the (Old) Church Slavonic language.
class LangChu extends NaturalLanguage {
  /// Creates a instance of [LangChu] ((Old) Church Slavonic language).
  ///
  /// ISO 639-2/T code: "CHU", ISO 639-1 code: "CU".
  const LangChu()
      : super(
          name: "(Old) Church Slavonic",
          code: "CHU",
          codeShort: "CU",
          namesNative: const ["ѩзыкъ словѣньскъ"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrs()},
        );

  @override
  List<TranslatedName> get translations => chuLanguageTranslations;
}

/// A class that represents the Chuvash language.
class LangChv extends NaturalLanguage {
  /// Creates a instance of [LangChv] (Chuvash language).
  ///
  /// ISO 639-2/T code: "CHV", ISO 639-1 code: "CV".
  const LangChv()
      : super(
          name: "Chuvash",
          code: "CHV",
          codeShort: "CV",
          namesNative: const ["чӑваш чӗлхи"],
          family: const Turkic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => chvLanguageTranslations;
}

/// A class that represents the Cornish language.
class LangCor extends NaturalLanguage {
  /// Creates a instance of [LangCor] (Cornish language).
  ///
  /// ISO 639-2/T code: "COR", ISO 639-1 code: "KW".
  const LangCor()
      : super(
          name: "Cornish",
          code: "COR",
          codeShort: "KW",
          namesNative: const ["Kernewek"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => corLanguageTranslations;
}

/// A class that represents the Corsican language.
class LangCos extends NaturalLanguage {
  /// Creates a instance of [LangCos] (Corsican language).
  ///
  /// ISO 639-2/T code: "COS", ISO 639-1 code: "CO".
  const LangCos()
      : super(
          name: "Corsican",
          code: "COS",
          codeShort: "CO",
          namesNative: const ["corsu", "lingua corsa"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => cosLanguageTranslations;
}

/// A class that represents the Cree language.
class LangCre extends NaturalLanguage {
  /// Creates a instance of [LangCre] (Cree language).
  ///
  /// ISO 639-2/T code: "CRE", ISO 639-1 code: "CR".
  const LangCre()
      : super(
          name: "Cree",
          code: "CRE",
          codeShort: "CR",
          namesNative: const ["ᓀᐦᐃᔭᐍᐏᐣ"],
          family: const Algonquian(),
        );

  @override
  List<TranslatedName> get translations => creLanguageTranslations;
}

/// A class that represents the Welsh language.
class LangCym extends NaturalLanguage {
  /// Creates a instance of [LangCym] (Welsh language).
  ///
  /// ISO 639-2/T code: "CYM", ISO 639-1 code: "CY".
  const LangCym()
      : super(
          name: "Welsh",
          code: "CYM",
          codeShort: "CY",
          namesNative: const ["Cymraeg"],
          bibliographicCode: "WEL",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => cymLanguageTranslations;
}

/// A class that represents the Danish language.
class LangDan extends NaturalLanguage {
  /// Creates a instance of [LangDan] (Danish language).
  ///
  /// ISO 639-2/T code: "DAN", ISO 639-1 code: "DA".
  const LangDan()
      : super(
          name: "Danish",
          code: "DAN",
          codeShort: "DA",
          namesNative: const ["dansk"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => danLanguageTranslations;
}

/// A class that represents the German language.
class LangDeu extends NaturalLanguage {
  /// Creates a instance of [LangDeu] (German language).
  ///
  /// ISO 639-2/T code: "DEU", ISO 639-1 code: "DE".
  const LangDeu()
      : super(
          name: "German",
          code: "DEU",
          codeShort: "DE",
          namesNative: const ["Deutsch"],
          bibliographicCode: "GER",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => deuLanguageTranslations;
}

/// A class that represents the Divehi (Dhivehi/Maldivian) language.
class LangDiv extends NaturalLanguage {
  /// Creates a instance of [LangDiv] (Divehi (Dhivehi/Maldivian) language).
  ///
  /// ISO 639-2/T code: "DIV", ISO 639-1 code: "DV".
  const LangDiv()
      : super(
          name: "Divehi (Dhivehi/Maldivian)",
          code: "DIV",
          codeShort: "DV",
          namesNative: const ["ދިވެހި"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptThaa()},
        );

  @override
  List<TranslatedName> get translations => divLanguageTranslations;
}

/// A class that represents the Dzongkha language.
class LangDzo extends NaturalLanguage {
  /// Creates a instance of [LangDzo] (Dzongkha language).
  ///
  /// ISO 639-2/T code: "DZO", ISO 639-1 code: "DZ".
  const LangDzo()
      : super(
          name: "Dzongkha",
          code: "DZO",
          codeShort: "DZ",
          namesNative: const ["རྫོང་ཁ"],
          family: const SinoTibetan(),
          scripts: const {ScriptTibt()},
        );

  @override
  List<TranslatedName> get translations => dzoLanguageTranslations;
}

/// A class that represents the Greek (modern) language.
class LangEll extends NaturalLanguage {
  /// Creates a instance of [LangEll] (Greek (modern) language).
  ///
  /// ISO 639-2/T code: "ELL", ISO 639-1 code: "EL".
  const LangEll()
      : super(
          name: "Greek (modern)",
          code: "ELL",
          codeShort: "EL",
          namesNative: const ["ελληνικά"],
          bibliographicCode: "GRE",
          family: const IndoEuropean(),
          scripts: const {ScriptGrek()},
        );

  @override
  List<TranslatedName> get translations => ellLanguageTranslations;
}

/// A class that represents the English language.
class LangEng extends NaturalLanguage {
  /// Creates a instance of [LangEng] (English language).
  ///
  /// ISO 639-2/T code: "ENG", ISO 639-1 code: "EN".
  const LangEng()
      : super(
          name: "English",
          code: "ENG",
          codeShort: "EN",
          namesNative: const ["English"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => engLanguageTranslations;
}

/// A class that represents the Esperanto language.
class LangEpo extends NaturalLanguage {
  /// Creates a instance of [LangEpo] (Esperanto language).
  ///
  /// ISO 639-2/T code: "EPO", ISO 639-1 code: "EO".
  const LangEpo()
      : super(
          name: "Esperanto",
          code: "EPO",
          codeShort: "EO",
          namesNative: const ["Esperanto"],
          family: const Constructed(),
        );

  @override
  List<TranslatedName> get translations => epoLanguageTranslations;
}

/// A class that represents the Estonian language.
class LangEst extends NaturalLanguage {
  /// Creates a instance of [LangEst] (Estonian language).
  ///
  /// ISO 639-2/T code: "EST", ISO 639-1 code: "ET".
  const LangEst()
      : super(
          name: "Estonian",
          code: "EST",
          codeShort: "ET",
          namesNative: const ["eesti", "eesti keel"],
          family: const Uralic(),
        );

  @override
  List<TranslatedName> get translations => estLanguageTranslations;
}

/// A class that represents the Basque language.
class LangEus extends NaturalLanguage {
  /// Creates a instance of [LangEus] (Basque language).
  ///
  /// ISO 639-2/T code: "EUS", ISO 639-1 code: "EU".
  const LangEus()
      : super(
          name: "Basque",
          code: "EUS",
          codeShort: "EU",
          namesNative: const ["euskara", "euskera"],
          bibliographicCode: "BAQ",
          family: const LanguageIsolate(),
        );

  @override
  List<TranslatedName> get translations => eusLanguageTranslations;
}

/// A class that represents the Ewe language.
class LangEwe extends NaturalLanguage {
  /// Creates a instance of [LangEwe] (Ewe language).
  ///
  /// ISO 639-2/T code: "EWE", ISO 639-1 code: "EE".
  const LangEwe()
      : super(
          name: "Ewe",
          code: "EWE",
          codeShort: "EE",
          namesNative: const ["Eʋegbe"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => eweLanguageTranslations;
}

/// A class that represents the Faroese language.
class LangFao extends NaturalLanguage {
  /// Creates a instance of [LangFao] (Faroese language).
  ///
  /// ISO 639-2/T code: "FAO", ISO 639-1 code: "FO".
  const LangFao()
      : super(
          name: "Faroese",
          code: "FAO",
          codeShort: "FO",
          namesNative: const ["føroyskt"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => faoLanguageTranslations;
}

/// A class that represents the Persian (Farsi) language.
class LangFas extends NaturalLanguage {
  /// Creates a instance of [LangFas] (Persian (Farsi) language).
  ///
  /// ISO 639-2/T code: "FAS", ISO 639-1 code: "FA".
  const LangFas()
      : super(
          name: "Persian (Farsi)",
          code: "FAS",
          codeShort: "FA",
          namesNative: const ["فارسی"],
          bibliographicCode: "PER",
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptArab()},
        );

  @override
  List<TranslatedName> get translations => fasLanguageTranslations;
}

/// A class that represents the Fijian language.
class LangFij extends NaturalLanguage {
  /// Creates a instance of [LangFij] (Fijian language).
  ///
  /// ISO 639-2/T code: "FIJ", ISO 639-1 code: "FJ".
  const LangFij()
      : super(
          name: "Fijian",
          code: "FIJ",
          codeShort: "FJ",
          namesNative: const ["vosa Vakaviti"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => fijLanguageTranslations;
}

/// A class that represents the Finnish language.
class LangFin extends NaturalLanguage {
  /// Creates a instance of [LangFin] (Finnish language).
  ///
  /// ISO 639-2/T code: "FIN", ISO 639-1 code: "FI".
  const LangFin()
      : super(
          name: "Finnish",
          code: "FIN",
          codeShort: "FI",
          namesNative: const ["suomi", "suomen kieli"],
          family: const Uralic(),
        );

  @override
  List<TranslatedName> get translations => finLanguageTranslations;
}

/// A class that represents the French language.
class LangFra extends NaturalLanguage {
  /// Creates a instance of [LangFra] (French language).
  ///
  /// ISO 639-2/T code: "FRA", ISO 639-1 code: "FR".
  const LangFra()
      : super(
          name: "French",
          code: "FRA",
          codeShort: "FR",
          namesNative: const ["français", "langue française"],
          bibliographicCode: "FRE",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => fraLanguageTranslations;
}

/// A class that represents the Western Frisian language.
class LangFry extends NaturalLanguage {
  /// Creates a instance of [LangFry] (Western Frisian language).
  ///
  /// ISO 639-2/T code: "FRY", ISO 639-1 code: "FY".
  const LangFry()
      : super(
          name: "Western Frisian",
          code: "FRY",
          codeShort: "FY",
          namesNative: const ["Frysk"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => fryLanguageTranslations;
}

/// A class that represents the Fula (Fulah/Pulaar/Pular) language.
class LangFul extends NaturalLanguage {
  /// Creates a instance of [LangFul] (Fula (Fulah/Pulaar/Pular) language).
  ///
  /// ISO 639-2/T code: "FUL", ISO 639-1 code: "FF".
  const LangFul()
      : super(
          name: "Fula (Fulah/Pulaar/Pular)",
          code: "FUL",
          codeShort: "FF",
          namesNative: const ["Fulfulde", "Pulaar", "Pular"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => fulLanguageTranslations;
}

/// A class that represents the (Scottish) Gaelic language.
class LangGla extends NaturalLanguage {
  /// Creates a instance of [LangGla] ((Scottish) Gaelic language).
  ///
  /// ISO 639-2/T code: "GLA", ISO 639-1 code: "GD".
  const LangGla()
      : super(
          name: "(Scottish) Gaelic",
          code: "GLA",
          codeShort: "GD",
          namesNative: const ["Gàidhlig"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => glaLanguageTranslations;
}

/// A class that represents the Irish language.
class LangGle extends NaturalLanguage {
  /// Creates a instance of [LangGle] (Irish language).
  ///
  /// ISO 639-2/T code: "GLE", ISO 639-1 code: "GA".
  const LangGle()
      : super(
          name: "Irish",
          code: "GLE",
          codeShort: "GA",
          namesNative: const ["Gaeilge"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => gleLanguageTranslations;
}

/// A class that represents the Galician language.
class LangGlg extends NaturalLanguage {
  /// Creates a instance of [LangGlg] (Galician language).
  ///
  /// ISO 639-2/T code: "GLG", ISO 639-1 code: "GL".
  const LangGlg()
      : super(
          name: "Galician",
          code: "GLG",
          codeShort: "GL",
          namesNative: const ["galego"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => glgLanguageTranslations;
}

/// A class that represents the Manx language.
class LangGlv extends NaturalLanguage {
  /// Creates a instance of [LangGlv] (Manx language).
  ///
  /// ISO 639-2/T code: "GLV", ISO 639-1 code: "GV".
  const LangGlv()
      : super(
          name: "Manx",
          code: "GLV",
          codeShort: "GV",
          namesNative: const ["Gaelg", "Gailck"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => glvLanguageTranslations;
}

/// A class that represents the Guaraní language.
class LangGrn extends NaturalLanguage {
  /// Creates a instance of [LangGrn] (Guaraní language).
  ///
  /// ISO 639-2/T code: "GRN", ISO 639-1 code: "GN".
  const LangGrn()
      : super(
          name: "Guaraní",
          code: "GRN",
          codeShort: "GN",
          namesNative: const ["Avañe'ẽ"],
          family: const Tupian(),
        );

  @override
  List<TranslatedName> get translations => grnLanguageTranslations;
}

/// A class that represents the Gujarati language.
class LangGuj extends NaturalLanguage {
  /// Creates a instance of [LangGuj] (Gujarati language).
  ///
  /// ISO 639-2/T code: "GUJ", ISO 639-1 code: "GU".
  const LangGuj()
      : super(
          name: "Gujarati",
          code: "GUJ",
          codeShort: "GU",
          namesNative: const ["ગુજરાતી"],
          family: const IndoEuropean(),
          scripts: const {ScriptGujr()},
        );

  @override
  List<TranslatedName> get translations => gujLanguageTranslations;
}

/// A class that represents the Haitian (Haitian Creole) language.
class LangHat extends NaturalLanguage {
  /// Creates a instance of [LangHat] (Haitian (Haitian Creole) language).
  ///
  /// ISO 639-2/T code: "HAT", ISO 639-1 code: "HT".
  const LangHat()
      : super(
          name: "Haitian (Haitian Creole)",
          code: "HAT",
          codeShort: "HT",
          namesNative: const ["Kreyòl ayisyen"],
          family: const Creole(),
        );

  @override
  List<TranslatedName> get translations => hatLanguageTranslations;
}

/// A class that represents the Hausa language.
class LangHau extends NaturalLanguage {
  /// Creates a instance of [LangHau] (Hausa language).
  ///
  /// ISO 639-2/T code: "HAU", ISO 639-1 code: "HA".
  const LangHau()
      : super(
          name: "Hausa",
          code: "HAU",
          codeShort: "HA",
          namesNative: const ["(Hausa) هَوُسَ"],
          family: const AfroAsiatic(),
          isRightToLeft: true,
        );

  @override
  List<TranslatedName> get translations => hauLanguageTranslations;
}

/// A class that represents the Hebrew (modern) language.
class LangHeb extends NaturalLanguage {
  /// Creates a instance of [LangHeb] (Hebrew (modern) language).
  ///
  /// ISO 639-2/T code: "HEB", ISO 639-1 code: "HE".
  const LangHeb()
      : super(
          name: "Hebrew (modern)",
          code: "HEB",
          codeShort: "HE",
          namesNative: const ["עברית"],
          family: const AfroAsiatic(),
          isRightToLeft: true,
          scripts: const {ScriptHebr()},
        );

  @override
  List<TranslatedName> get translations => hebLanguageTranslations;
}

/// A class that represents the Herero language.
class LangHer extends NaturalLanguage {
  /// Creates a instance of [LangHer] (Herero language).
  ///
  /// ISO 639-2/T code: "HER", ISO 639-1 code: "HZ".
  const LangHer()
      : super(
          name: "Herero",
          code: "HER",
          codeShort: "HZ",
          namesNative: const ["Otjiherero"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => herLanguageTranslations;
}

/// A class that represents the Hindi language.
class LangHin extends NaturalLanguage {
  /// Creates a instance of [LangHin] (Hindi language).
  ///
  /// ISO 639-2/T code: "HIN", ISO 639-1 code: "HI".
  const LangHin()
      : super(
          name: "Hindi",
          code: "HIN",
          codeShort: "HI",
          namesNative: const ["हिन्दी", "हिंदी"],
          family: const IndoEuropean(),
          scripts: const {ScriptDeva()},
        );

  @override
  List<TranslatedName> get translations => hinLanguageTranslations;
}

/// A class that represents the Hiri Motu language.
class LangHmo extends NaturalLanguage {
  /// Creates a instance of [LangHmo] (Hiri Motu language).
  ///
  /// ISO 639-2/T code: "HMO", ISO 639-1 code: "HO".
  const LangHmo()
      : super(
          name: "Hiri Motu",
          code: "HMO",
          codeShort: "HO",
          namesNative: const ["Hiri Motu"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => hmoLanguageTranslations;
}

/// A class that represents the Croatian language.
class LangHrv extends NaturalLanguage {
  /// Creates a instance of [LangHrv] (Croatian language).
  ///
  /// ISO 639-2/T code: "HRV", ISO 639-1 code: "HR".
  const LangHrv()
      : super(
          name: "Croatian",
          code: "HRV",
          codeShort: "HR",
          namesNative: const ["hrvatski jezik"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => hrvLanguageTranslations;
}

/// A class that represents the Hungarian language.
class LangHun extends NaturalLanguage {
  /// Creates a instance of [LangHun] (Hungarian language).
  ///
  /// ISO 639-2/T code: "HUN", ISO 639-1 code: "HU".
  const LangHun()
      : super(
          name: "Hungarian",
          code: "HUN",
          codeShort: "HU",
          namesNative: const ["magyar"],
          family: const Uralic(),
        );

  @override
  List<TranslatedName> get translations => hunLanguageTranslations;
}

/// A class that represents the Armenian language.
class LangHye extends NaturalLanguage {
  /// Creates a instance of [LangHye] (Armenian language).
  ///
  /// ISO 639-2/T code: "HYE", ISO 639-1 code: "HY".
  const LangHye()
      : super(
          name: "Armenian",
          code: "HYE",
          codeShort: "HY",
          namesNative: const ["Հայերեն"],
          bibliographicCode: "ARM",
          family: const IndoEuropean(),
          scripts: const {ScriptArmn()},
        );

  @override
  List<TranslatedName> get translations => hyeLanguageTranslations;
}

/// A class that represents the Igbo language.
class LangIbo extends NaturalLanguage {
  /// Creates a instance of [LangIbo] (Igbo language).
  ///
  /// ISO 639-2/T code: "IBO", ISO 639-1 code: "IG".
  const LangIbo()
      : super(
          name: "Igbo",
          code: "IBO",
          codeShort: "IG",
          namesNative: const ["Asụsụ Igbo"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => iboLanguageTranslations;
}

/// A class that represents the Ido language.
class LangIdo extends NaturalLanguage {
  /// Creates a instance of [LangIdo] (Ido language).
  ///
  /// ISO 639-2/T code: "IDO", ISO 639-1 code: "IO".
  const LangIdo()
      : super(
          name: "Ido",
          code: "IDO",
          codeShort: "IO",
          namesNative: const ["Ido"],
          family: const Constructed(),
        );

  @override
  List<TranslatedName> get translations => idoLanguageTranslations;
}

/// A class that represents the Nuosu language.
class LangIii extends NaturalLanguage {
  /// Creates a instance of [LangIii] (Nuosu language).
  ///
  /// ISO 639-2/T code: "III", ISO 639-1 code: "II".
  const LangIii()
      : super(
          name: "Nuosu",
          code: "III",
          codeShort: "II",
          namesNative: const ["ꆈꌠ꒿ Nuosuhxop"],
          family: const SinoTibetan(),
          scripts: const {ScriptYiii()},
        );

  @override
  List<TranslatedName> get translations => iiiLanguageTranslations;
}

/// A class that represents the Inuktitut language.
class LangIku extends NaturalLanguage {
  /// Creates a instance of [LangIku] (Inuktitut language).
  ///
  /// ISO 639-2/T code: "IKU", ISO 639-1 code: "IU".
  const LangIku()
      : super(
          name: "Inuktitut",
          code: "IKU",
          codeShort: "IU",
          namesNative: const ["ᐃᓄᒃᑎᑐᑦ"],
          family: const EskimoAleut(),
        );

  @override
  List<TranslatedName> get translations => ikuLanguageTranslations;
}

/// A class that represents the Interlingue language.
class LangIle extends NaturalLanguage {
  /// Creates a instance of [LangIle] (Interlingue language).
  ///
  /// ISO 639-2/T code: "ILE", ISO 639-1 code: "IE".
  const LangIle()
      : super(
          name: "Interlingue",
          code: "ILE",
          codeShort: "IE",
          namesNative: const ["Interlingue", "Occidental"],
          family: const Constructed(),
        );

  @override
  List<TranslatedName> get translations => ileLanguageTranslations;
}

/// A class that represents the Interlingua language.
class LangIna extends NaturalLanguage {
  /// Creates a instance of [LangIna] (Interlingua language).
  ///
  /// ISO 639-2/T code: "INA", ISO 639-1 code: "IA".
  const LangIna()
      : super(
          name: "Interlingua",
          code: "INA",
          codeShort: "IA",
          namesNative: const ["Interlingua"],
          family: const Constructed(),
        );

  @override
  List<TranslatedName> get translations => inaLanguageTranslations;
}

/// A class that represents the Indonesian language.
class LangInd extends NaturalLanguage {
  /// Creates a instance of [LangInd] (Indonesian language).
  ///
  /// ISO 639-2/T code: "IND", ISO 639-1 code: "ID".
  const LangInd()
      : super(
          name: "Indonesian",
          code: "IND",
          codeShort: "ID",
          namesNative: const ["Bahasa Indonesia"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => indLanguageTranslations;
}

/// A class that represents the Inupiaq language.
class LangIpk extends NaturalLanguage {
  /// Creates a instance of [LangIpk] (Inupiaq language).
  ///
  /// ISO 639-2/T code: "IPK", ISO 639-1 code: "IK".
  const LangIpk()
      : super(
          name: "Inupiaq",
          code: "IPK",
          codeShort: "IK",
          namesNative: const ["Iñupiaq", "Iñupiatun"],
          family: const EskimoAleut(),
        );

  @override
  List<TranslatedName> get translations => ipkLanguageTranslations;
}

/// A class that represents the Icelandic language.
class LangIsl extends NaturalLanguage {
  /// Creates a instance of [LangIsl] (Icelandic language).
  ///
  /// ISO 639-2/T code: "ISL", ISO 639-1 code: "IS".
  const LangIsl()
      : super(
          name: "Icelandic",
          code: "ISL",
          codeShort: "IS",
          namesNative: const ["Íslenska"],
          bibliographicCode: "ICE",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => islLanguageTranslations;
}

/// A class that represents the Italian language.
class LangIta extends NaturalLanguage {
  /// Creates a instance of [LangIta] (Italian language).
  ///
  /// ISO 639-2/T code: "ITA", ISO 639-1 code: "IT".
  const LangIta()
      : super(
          name: "Italian",
          code: "ITA",
          codeShort: "IT",
          namesNative: const ["Italiano"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => itaLanguageTranslations;
}

/// A class that represents the Javanese language.
class LangJav extends NaturalLanguage {
  /// Creates a instance of [LangJav] (Javanese language).
  ///
  /// ISO 639-2/T code: "JAV", ISO 639-1 code: "JV".
  const LangJav()
      : super(
          name: "Javanese",
          code: "JAV",
          codeShort: "JV",
          namesNative: const ["ꦧꦱꦗꦮ", "Basa Jawa"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => javLanguageTranslations;
}

/// A class that represents the Japanese language.
class LangJpn extends NaturalLanguage {
  /// Creates a instance of [LangJpn] (Japanese language).
  ///
  /// ISO 639-2/T code: "JPN", ISO 639-1 code: "JA".
  const LangJpn()
      : super(
          name: "Japanese",
          code: "JPN",
          codeShort: "JA",
          namesNative: const ["日本語 (にほんご)"],
          family: const Japonic(),
          scripts: const {ScriptJpan()},
        );

  @override
  List<TranslatedName> get translations => jpnLanguageTranslations;
}

/// A class that represents the Kalaallisut (Greenlandic) language.
class LangKal extends NaturalLanguage {
  /// Creates a instance of [LangKal] (Kalaallisut (Greenlandic) language).
  ///
  /// ISO 639-2/T code: "KAL", ISO 639-1 code: "KL".
  const LangKal()
      : super(
          name: "Kalaallisut (Greenlandic)",
          code: "KAL",
          codeShort: "KL",
          namesNative: const ["kalaallisut", "kalaallit oqaasii"],
          family: const EskimoAleut(),
        );

  @override
  List<TranslatedName> get translations => kalLanguageTranslations;
}

/// A class that represents the Kannada language.
class LangKan extends NaturalLanguage {
  /// Creates a instance of [LangKan] (Kannada language).
  ///
  /// ISO 639-2/T code: "KAN", ISO 639-1 code: "KN".
  const LangKan()
      : super(
          name: "Kannada",
          code: "KAN",
          codeShort: "KN",
          namesNative: const ["ಕನ್ನಡ"],
          family: const Dravidian(),
          scripts: const {ScriptKnda()},
        );

  @override
  List<TranslatedName> get translations => kanLanguageTranslations;
}

/// A class that represents the Kashmiri language.
class LangKas extends NaturalLanguage {
  /// Creates a instance of [LangKas] (Kashmiri language).
  ///
  /// ISO 639-2/T code: "KAS", ISO 639-1 code: "KS".
  const LangKas()
      : super(
          name: "Kashmiri",
          code: "KAS",
          codeShort: "KS",
          namesNative: const ["कश्मीरी", "كشميري‎"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptDeva()},
        );

  @override
  List<TranslatedName> get translations => kasLanguageTranslations;
}

/// A class that represents the Georgian language.
class LangKat extends NaturalLanguage {
  /// Creates a instance of [LangKat] (Georgian language).
  ///
  /// ISO 639-2/T code: "KAT", ISO 639-1 code: "KA".
  const LangKat()
      : super(
          name: "Georgian",
          code: "KAT",
          codeShort: "KA",
          namesNative: const ["ქართული"],
          bibliographicCode: "GEO",
          family: const SouthCaucasian(),
          scripts: const {ScriptGeor()},
        );

  @override
  List<TranslatedName> get translations => katLanguageTranslations;
}

/// A class that represents the Kanuri language.
class LangKau extends NaturalLanguage {
  /// Creates a instance of [LangKau] (Kanuri language).
  ///
  /// ISO 639-2/T code: "KAU", ISO 639-1 code: "KR".
  const LangKau()
      : super(
          name: "Kanuri",
          code: "KAU",
          codeShort: "KR",
          namesNative: const ["Kanuri"],
          family: const NiloSaharan(),
        );

  @override
  List<TranslatedName> get translations => kauLanguageTranslations;
}

/// A class that represents the Kazakh language.
class LangKaz extends NaturalLanguage {
  /// Creates a instance of [LangKaz] (Kazakh language).
  ///
  /// ISO 639-2/T code: "KAZ", ISO 639-1 code: "KK".
  const LangKaz()
      : super(
          name: "Kazakh",
          code: "KAZ",
          codeShort: "KK",
          namesNative: const ["қазақ тілі"],
          family: const Turkic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => kazLanguageTranslations;
}

/// A class that represents the Khmer language.
class LangKhm extends NaturalLanguage {
  /// Creates a instance of [LangKhm] (Khmer language).
  ///
  /// ISO 639-2/T code: "KHM", ISO 639-1 code: "KM".
  const LangKhm()
      : super(
          name: "Khmer",
          code: "KHM",
          codeShort: "KM",
          namesNative: const ["ខ្មែរ", "ខេមរភាសា", "ភាសាខ្មែរ"],
          family: const Austroasiatic(),
          scripts: const {ScriptKhmr()},
        );

  @override
  List<TranslatedName> get translations => khmLanguageTranslations;
}

/// A class that represents the Kikuyu (Gikuyu) language.
class LangKik extends NaturalLanguage {
  /// Creates a instance of [LangKik] (Kikuyu (Gikuyu) language).
  ///
  /// ISO 639-2/T code: "KIK", ISO 639-1 code: "KI".
  const LangKik()
      : super(
          name: "Kikuyu (Gikuyu)",
          code: "KIK",
          codeShort: "KI",
          namesNative: const ["Gĩkũyũ"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => kikLanguageTranslations;
}

/// A class that represents the Kinyarwanda language.
class LangKin extends NaturalLanguage {
  /// Creates a instance of [LangKin] (Kinyarwanda language).
  ///
  /// ISO 639-2/T code: "KIN", ISO 639-1 code: "RW".
  const LangKin()
      : super(
          name: "Kinyarwanda",
          code: "KIN",
          codeShort: "RW",
          namesNative: const ["Ikinyarwanda"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => kinLanguageTranslations;
}

/// A class that represents the Kyrgyz language.
class LangKir extends NaturalLanguage {
  /// Creates a instance of [LangKir] (Kyrgyz language).
  ///
  /// ISO 639-2/T code: "KIR", ISO 639-1 code: "KY".
  const LangKir()
      : super(
          name: "Kyrgyz",
          code: "KIR",
          codeShort: "KY",
          namesNative: const ["Кыргызча", "Кыргыз тили"],
          family: const Turkic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => kirLanguageTranslations;
}

/// A class that represents the Komi language.
class LangKom extends NaturalLanguage {
  /// Creates a instance of [LangKom] (Komi language).
  ///
  /// ISO 639-2/T code: "KOM", ISO 639-1 code: "KV".
  const LangKom()
      : super(
          name: "Komi",
          code: "KOM",
          codeShort: "KV",
          namesNative: const ["коми кыв"],
          family: const Uralic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => komLanguageTranslations;
}

/// A class that represents the Kongo language.
class LangKon extends NaturalLanguage {
  /// Creates a instance of [LangKon] (Kongo language).
  ///
  /// ISO 639-2/T code: "KON", ISO 639-1 code: "KG".
  const LangKon()
      : super(
          name: "Kongo",
          code: "KON",
          codeShort: "KG",
          namesNative: const ["Kikongo"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => konLanguageTranslations;
}

/// A class that represents the Korean language.
class LangKor extends NaturalLanguage {
  /// Creates a instance of [LangKor] (Korean language).
  ///
  /// ISO 639-2/T code: "KOR", ISO 639-1 code: "KO".
  const LangKor()
      : super(
          name: "Korean",
          code: "KOR",
          codeShort: "KO",
          namesNative: const ["한국어"],
          family: const Koreanic(),
          scripts: const {ScriptKore()},
        );

  @override
  List<TranslatedName> get translations => korLanguageTranslations;
}

/// A class that represents the Kwanyama (Kuanyama) language.
class LangKua extends NaturalLanguage {
  /// Creates a instance of [LangKua] (Kwanyama (Kuanyama) language).
  ///
  /// ISO 639-2/T code: "KUA", ISO 639-1 code: "KJ".
  const LangKua()
      : super(
          name: "Kwanyama (Kuanyama)",
          code: "KUA",
          codeShort: "KJ",
          namesNative: const ["Kuanyama"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => kuaLanguageTranslations;
}

/// A class that represents the Kurdish language.
class LangKur extends NaturalLanguage {
  /// Creates a instance of [LangKur] (Kurdish language).
  ///
  /// ISO 639-2/T code: "KUR", ISO 639-1 code: "KU".
  const LangKur()
      : super(
          name: "Kurdish",
          code: "KUR",
          codeShort: "KU",
          namesNative: const ["Kurdî", "كوردی‎"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptArab(), ScriptLatn()},
        );

  @override
  List<TranslatedName> get translations => kurLanguageTranslations;
}

/// A class that represents the Lao language.
class LangLao extends NaturalLanguage {
  /// Creates a instance of [LangLao] (Lao language).
  ///
  /// ISO 639-2/T code: "LAO", ISO 639-1 code: "LO".
  const LangLao()
      : super(
          name: "Lao",
          code: "LAO",
          codeShort: "LO",
          namesNative: const ["ພາສາລາວ"],
          family: const TaiKadai(),
          scripts: const {ScriptLaoo()},
        );

  @override
  List<TranslatedName> get translations => laoLanguageTranslations;
}

/// A class that represents the Latin language.
class LangLat extends NaturalLanguage {
  /// Creates a instance of [LangLat] (Latin language).
  ///
  /// ISO 639-2/T code: "LAT", ISO 639-1 code: "LA".
  const LangLat()
      : super(
          name: "Latin",
          code: "LAT",
          codeShort: "LA",
          namesNative: const ["latine", "lingua latina"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => latLanguageTranslations;
}

/// A class that represents the Latvian language.
class LangLav extends NaturalLanguage {
  /// Creates a instance of [LangLav] (Latvian language).
  ///
  /// ISO 639-2/T code: "LAV", ISO 639-1 code: "LV".
  const LangLav()
      : super(
          name: "Latvian",
          code: "LAV",
          codeShort: "LV",
          namesNative: const ["latviešu valoda"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => lavLanguageTranslations;
}

/// A class that represents the Limburgish (Limburgan/Limburger) language.
class LangLim extends NaturalLanguage {
  /// Creates a instance of [LangLim] (Limburgish (Limburgan/Limburger) language).
  ///
  /// ISO 639-2/T code: "LIM", ISO 639-1 code: "LI".
  const LangLim()
      : super(
          name: "Limburgish (Limburgan/Limburger)",
          code: "LIM",
          codeShort: "LI",
          namesNative: const ["Limburgs"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => limLanguageTranslations;
}

/// A class that represents the Lingala language.
class LangLin extends NaturalLanguage {
  /// Creates a instance of [LangLin] (Lingala language).
  ///
  /// ISO 639-2/T code: "LIN", ISO 639-1 code: "LN".
  const LangLin()
      : super(
          name: "Lingala",
          code: "LIN",
          codeShort: "LN",
          namesNative: const ["Lingála"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => linLanguageTranslations;
}

/// A class that represents the Lithuanian language.
class LangLit extends NaturalLanguage {
  /// Creates a instance of [LangLit] (Lithuanian language).
  ///
  /// ISO 639-2/T code: "LIT", ISO 639-1 code: "LT".
  const LangLit()
      : super(
          name: "Lithuanian",
          code: "LIT",
          codeShort: "LT",
          namesNative: const ["lietuvių kalba"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => litLanguageTranslations;
}

/// A class that represents the Luxembourgish (Letzeburgesch) language.
class LangLtz extends NaturalLanguage {
  /// Creates a instance of [LangLtz] (Luxembourgish (Letzeburgesch) language).
  ///
  /// ISO 639-2/T code: "LTZ", ISO 639-1 code: "LB".
  const LangLtz()
      : super(
          name: "Luxembourgish (Letzeburgesch)",
          code: "LTZ",
          codeShort: "LB",
          namesNative: const ["Lëtzebuergesch"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => ltzLanguageTranslations;
}

/// A class that represents the Luba-Katanga language.
class LangLub extends NaturalLanguage {
  /// Creates a instance of [LangLub] (Luba-Katanga language).
  ///
  /// ISO 639-2/T code: "LUB", ISO 639-1 code: "LU".
  const LangLub()
      : super(
          name: "Luba-Katanga",
          code: "LUB",
          codeShort: "LU",
          namesNative: const ["Tshiluba"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => lubLanguageTranslations;
}

/// A class that represents the Ganda language.
class LangLug extends NaturalLanguage {
  /// Creates a instance of [LangLug] (Ganda language).
  ///
  /// ISO 639-2/T code: "LUG", ISO 639-1 code: "LG".
  const LangLug()
      : super(
          name: "Ganda",
          code: "LUG",
          codeShort: "LG",
          namesNative: const ["Luganda"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => lugLanguageTranslations;
}

/// A class that represents the Marshallese language.
class LangMah extends NaturalLanguage {
  /// Creates a instance of [LangMah] (Marshallese language).
  ///
  /// ISO 639-2/T code: "MAH", ISO 639-1 code: "MH".
  const LangMah()
      : super(
          name: "Marshallese",
          code: "MAH",
          codeShort: "MH",
          namesNative: const ["Kajin M̧ajeļ"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => mahLanguageTranslations;
}

/// A class that represents the Malayalam language.
class LangMal extends NaturalLanguage {
  /// Creates a instance of [LangMal] (Malayalam language).
  ///
  /// ISO 639-2/T code: "MAL", ISO 639-1 code: "ML".
  const LangMal()
      : super(
          name: "Malayalam",
          code: "MAL",
          codeShort: "ML",
          namesNative: const ["മലയാളം"],
          family: const Dravidian(),
          scripts: const {ScriptMlym()},
        );

  @override
  List<TranslatedName> get translations => malLanguageTranslations;
}

/// A class that represents the Marathi (Marāṭhī) language.
class LangMar extends NaturalLanguage {
  /// Creates a instance of [LangMar] (Marathi (Marāṭhī) language).
  ///
  /// ISO 639-2/T code: "MAR", ISO 639-1 code: "MR".
  const LangMar()
      : super(
          name: "Marathi (Marāṭhī)",
          code: "MAR",
          codeShort: "MR",
          namesNative: const ["मराठी"],
          family: const IndoEuropean(),
          scripts: const {ScriptDeva()},
        );

  @override
  List<TranslatedName> get translations => marLanguageTranslations;
}

/// A class that represents the Macedonian language.
class LangMkd extends NaturalLanguage {
  /// Creates a instance of [LangMkd] (Macedonian language).
  ///
  /// ISO 639-2/T code: "MKD", ISO 639-1 code: "MK".
  const LangMkd()
      : super(
          name: "Macedonian",
          code: "MKD",
          codeShort: "MK",
          namesNative: const ["македонски јазик"],
          bibliographicCode: "MAC",
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => mkdLanguageTranslations;
}

/// A class that represents the Malagasy language.
class LangMlg extends NaturalLanguage {
  /// Creates a instance of [LangMlg] (Malagasy language).
  ///
  /// ISO 639-2/T code: "MLG", ISO 639-1 code: "MG".
  const LangMlg()
      : super(
          name: "Malagasy",
          code: "MLG",
          codeShort: "MG",
          namesNative: const ["fiteny malagasy"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => mlgLanguageTranslations;
}

/// A class that represents the Maltese language.
class LangMlt extends NaturalLanguage {
  /// Creates a instance of [LangMlt] (Maltese language).
  ///
  /// ISO 639-2/T code: "MLT", ISO 639-1 code: "MT".
  const LangMlt()
      : super(
          name: "Maltese",
          code: "MLT",
          codeShort: "MT",
          namesNative: const ["Malti"],
          family: const AfroAsiatic(),
        );

  @override
  List<TranslatedName> get translations => mltLanguageTranslations;
}

/// A class that represents the Mongolian language.
class LangMon extends NaturalLanguage {
  /// Creates a instance of [LangMon] (Mongolian language).
  ///
  /// ISO 639-2/T code: "MON", ISO 639-1 code: "MN".
  const LangMon()
      : super(
          name: "Mongolian",
          code: "MON",
          codeShort: "MN",
          namesNative: const ["Монгол хэл"],
          family: const Mongolic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => monLanguageTranslations;
}

/// A class that represents the Māori language.
class LangMri extends NaturalLanguage {
  /// Creates a instance of [LangMri] (Māori language).
  ///
  /// ISO 639-2/T code: "MRI", ISO 639-1 code: "MI".
  const LangMri()
      : super(
          name: "Māori",
          code: "MRI",
          codeShort: "MI",
          namesNative: const ["te reo Māori"],
          bibliographicCode: "MAO",
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => mriLanguageTranslations;
}

/// A class that represents the Malay language.
class LangMsa extends NaturalLanguage {
  /// Creates a instance of [LangMsa] (Malay language).
  ///
  /// ISO 639-2/T code: "MSA", ISO 639-1 code: "MS".
  const LangMsa()
      : super(
          name: "Malay",
          code: "MSA",
          codeShort: "MS",
          namesNative: const ["bahasa Melayu", "بهاس ملايو‎"],
          bibliographicCode: "MAY",
          family: const Austronesian(),
          scripts: const {ScriptArab()},
        );

  @override
  List<TranslatedName> get translations => msaLanguageTranslations;
}

/// A class that represents the Burmese language.
class LangMya extends NaturalLanguage {
  /// Creates a instance of [LangMya] (Burmese language).
  ///
  /// ISO 639-2/T code: "MYA", ISO 639-1 code: "MY".
  const LangMya()
      : super(
          name: "Burmese",
          code: "MYA",
          codeShort: "MY",
          namesNative: const ["ဗမာစာ"],
          bibliographicCode: "BUR",
          family: const SinoTibetan(),
          scripts: const {ScriptMymr()},
        );

  @override
  List<TranslatedName> get translations => myaLanguageTranslations;
}

/// A class that represents the Nauruan language.
class LangNau extends NaturalLanguage {
  /// Creates a instance of [LangNau] (Nauruan language).
  ///
  /// ISO 639-2/T code: "NAU", ISO 639-1 code: "NA".
  const LangNau()
      : super(
          name: "Nauruan",
          code: "NAU",
          codeShort: "NA",
          namesNative: const ["Dorerin Naoero"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => nauLanguageTranslations;
}

/// A class that represents the Navajo (Navaho) language.
class LangNav extends NaturalLanguage {
  /// Creates a instance of [LangNav] (Navajo (Navaho) language).
  ///
  /// ISO 639-2/T code: "NAV", ISO 639-1 code: "NV".
  const LangNav()
      : super(
          name: "Navajo (Navaho)",
          code: "NAV",
          codeShort: "NV",
          namesNative: const ["Diné bizaad"],
          family: const DeneYeniseian(),
        );

  @override
  List<TranslatedName> get translations => navLanguageTranslations;
}

/// A class that represents the Southern Ndebele language.
class LangNbl extends NaturalLanguage {
  /// Creates a instance of [LangNbl] (Southern Ndebele language).
  ///
  /// ISO 639-2/T code: "NBL", ISO 639-1 code: "NR".
  const LangNbl()
      : super(
          name: "Southern Ndebele",
          code: "NBL",
          codeShort: "NR",
          namesNative: const ["isiNdebele"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => nblLanguageTranslations;
}

/// A class that represents the Northern Ndebele language.
class LangNde extends NaturalLanguage {
  /// Creates a instance of [LangNde] (Northern Ndebele language).
  ///
  /// ISO 639-2/T code: "NDE", ISO 639-1 code: "ND".
  const LangNde()
      : super(
          name: "Northern Ndebele",
          code: "NDE",
          codeShort: "ND",
          namesNative: const ["isiNdebele"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => ndeLanguageTranslations;
}

/// A class that represents the Ndonga language.
class LangNdo extends NaturalLanguage {
  /// Creates a instance of [LangNdo] (Ndonga language).
  ///
  /// ISO 639-2/T code: "NDO", ISO 639-1 code: "NG".
  const LangNdo()
      : super(
          name: "Ndonga",
          code: "NDO",
          codeShort: "NG",
          namesNative: const ["Owambo"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => ndoLanguageTranslations;
}

/// A class that represents the Nepali language.
class LangNep extends NaturalLanguage {
  /// Creates a instance of [LangNep] (Nepali language).
  ///
  /// ISO 639-2/T code: "NEP", ISO 639-1 code: "NE".
  const LangNep()
      : super(
          name: "Nepali",
          code: "NEP",
          codeShort: "NE",
          namesNative: const ["नेपाली"],
          family: const IndoEuropean(),
          scripts: const {ScriptDeva()},
        );

  @override
  List<TranslatedName> get translations => nepLanguageTranslations;
}

/// A class that represents the Dutch language.
class LangNld extends NaturalLanguage {
  /// Creates a instance of [LangNld] (Dutch language).
  ///
  /// ISO 639-2/T code: "NLD", ISO 639-1 code: "NL".
  const LangNld()
      : super(
          name: "Dutch",
          code: "NLD",
          codeShort: "NL",
          namesNative: const ["Nederlands", "Vlaams"],
          bibliographicCode: "DUT",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => nldLanguageTranslations;
}

/// A class that represents the Norwegian Nynorsk language.
class LangNno extends NaturalLanguage {
  /// Creates a instance of [LangNno] (Norwegian Nynorsk language).
  ///
  /// ISO 639-2/T code: "NNO", ISO 639-1 code: "NN".
  const LangNno()
      : super(
          name: "Norwegian Nynorsk",
          code: "NNO",
          codeShort: "NN",
          namesNative: const ["Norsk nynorsk"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => nnoLanguageTranslations;
}

/// A class that represents the Norwegian Bokmål language.
class LangNob extends NaturalLanguage {
  /// Creates a instance of [LangNob] (Norwegian Bokmål language).
  ///
  /// ISO 639-2/T code: "NOB", ISO 639-1 code: "NB".
  const LangNob()
      : super(
          name: "Norwegian Bokmål",
          code: "NOB",
          codeShort: "NB",
          namesNative: const ["Norsk bokmål"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => nobLanguageTranslations;
}

/// A class that represents the Norwegian language.
class LangNor extends NaturalLanguage {
  /// Creates a instance of [LangNor] (Norwegian language).
  ///
  /// ISO 639-2/T code: "NOR", ISO 639-1 code: "NO".
  const LangNor()
      : super(
          name: "Norwegian",
          code: "NOR",
          codeShort: "NO",
          namesNative: const ["Norsk"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => norLanguageTranslations;
}

/// A class that represents the Chichewa (Chewa/Nyanja) language.
class LangNya extends NaturalLanguage {
  /// Creates a instance of [LangNya] (Chichewa (Chewa/Nyanja) language).
  ///
  /// ISO 639-2/T code: "NYA", ISO 639-1 code: "NY".
  const LangNya()
      : super(
          name: "Chichewa (Chewa/Nyanja)",
          code: "NYA",
          codeShort: "NY",
          namesNative: const ["chiCheŵa", "chinyanja"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => nyaLanguageTranslations;
}

/// A class that represents the Occitan language.
class LangOci extends NaturalLanguage {
  /// Creates a instance of [LangOci] (Occitan language).
  ///
  /// ISO 639-2/T code: "OCI", ISO 639-1 code: "OC".
  const LangOci()
      : super(
          name: "Occitan",
          code: "OCI",
          codeShort: "OC",
          namesNative: const ["occitan", "lenga d'òc"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => ociLanguageTranslations;
}

/// A class that represents the Ojibwe (Ojibwa) language.
class LangOji extends NaturalLanguage {
  /// Creates a instance of [LangOji] (Ojibwe (Ojibwa) language).
  ///
  /// ISO 639-2/T code: "OJI", ISO 639-1 code: "OJ".
  const LangOji()
      : super(
          name: "Ojibwe (Ojibwa)",
          code: "OJI",
          codeShort: "OJ",
          namesNative: const ["ᐊᓂᔑᓈᐯᒧᐎᓐ"],
          family: const Algonquian(),
        );

  @override
  List<TranslatedName> get translations => ojiLanguageTranslations;
}

/// A class that represents the Oriya language.
class LangOri extends NaturalLanguage {
  /// Creates a instance of [LangOri] (Oriya language).
  ///
  /// ISO 639-2/T code: "ORI", ISO 639-1 code: "OR".
  const LangOri()
      : super(
          name: "Oriya",
          code: "ORI",
          codeShort: "OR",
          namesNative: const ["ଓଡ଼ିଆ"],
          family: const IndoEuropean(),
          scripts: const {ScriptOrya()},
        );

  @override
  List<TranslatedName> get translations => oriLanguageTranslations;
}

/// A class that represents the Oromo language.
class LangOrm extends NaturalLanguage {
  /// Creates a instance of [LangOrm] (Oromo language).
  ///
  /// ISO 639-2/T code: "ORM", ISO 639-1 code: "OM".
  const LangOrm()
      : super(
          name: "Oromo",
          code: "ORM",
          codeShort: "OM",
          namesNative: const ["Afaan Oromoo"],
          family: const AfroAsiatic(),
        );

  @override
  List<TranslatedName> get translations => ormLanguageTranslations;
}

/// A class that represents the Ossetian (Ossetic) language.
class LangOss extends NaturalLanguage {
  /// Creates a instance of [LangOss] (Ossetian (Ossetic) language).
  ///
  /// ISO 639-2/T code: "OSS", ISO 639-1 code: "OS".
  const LangOss()
      : super(
          name: "Ossetian (Ossetic)",
          code: "OSS",
          codeShort: "OS",
          namesNative: const ["ирон æвзаг"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => ossLanguageTranslations;
}

/// A class that represents the (Eastern) Punjabi language.
class LangPan extends NaturalLanguage {
  /// Creates a instance of [LangPan] ((Eastern) Punjabi language).
  ///
  /// ISO 639-2/T code: "PAN", ISO 639-1 code: "PA".
  const LangPan()
      : super(
          name: "(Eastern) Punjabi",
          code: "PAN",
          codeShort: "PA",
          namesNative: const ["ਪੰਜਾਬੀ"],
          family: const IndoEuropean(),
          scripts: const {ScriptGuru()},
        );

  @override
  List<TranslatedName> get translations => panLanguageTranslations;
}

/// A class that represents the Pāli language.
class LangPli extends NaturalLanguage {
  /// Creates a instance of [LangPli] (Pāli language).
  ///
  /// ISO 639-2/T code: "PLI", ISO 639-1 code: "PI".
  const LangPli()
      : super(
          name: "Pāli",
          code: "PLI",
          codeShort: "PI",
          namesNative: const ["पाऴि"],
          family: const IndoEuropean(),
          scripts: const {
            ScriptLatn(),
            ScriptBrah(),
            ScriptKhar(),
            ScriptKhmr(),
            ScriptThai(),
          },
        );

  @override
  List<TranslatedName> get translations => pliLanguageTranslations;
}

/// A class that represents the Polish language.
class LangPol extends NaturalLanguage {
  /// Creates a instance of [LangPol] (Polish language).
  ///
  /// ISO 639-2/T code: "POL", ISO 639-1 code: "PL".
  const LangPol()
      : super(
          name: "Polish",
          code: "POL",
          codeShort: "PL",
          namesNative: const ["polski", "polszczyzna"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => polLanguageTranslations;
}

/// A class that represents the Portuguese language.
class LangPor extends NaturalLanguage {
  /// Creates a instance of [LangPor] (Portuguese language).
  ///
  /// ISO 639-2/T code: "POR", ISO 639-1 code: "PT".
  const LangPor()
      : super(
          name: "Portuguese",
          code: "POR",
          codeShort: "PT",
          namesNative: const ["Português"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => porLanguageTranslations;
}

/// A class that represents the Pashto (Pushto) language.
class LangPus extends NaturalLanguage {
  /// Creates a instance of [LangPus] (Pashto (Pushto) language).
  ///
  /// ISO 639-2/T code: "PUS", ISO 639-1 code: "PS".
  const LangPus()
      : super(
          name: "Pashto (Pushto)",
          code: "PUS",
          codeShort: "PS",
          namesNative: const ["پښتو"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptArab()},
        );

  @override
  List<TranslatedName> get translations => pusLanguageTranslations;
}

/// A class that represents the Quechua language.
class LangQue extends NaturalLanguage {
  /// Creates a instance of [LangQue] (Quechua language).
  ///
  /// ISO 639-2/T code: "QUE", ISO 639-1 code: "QU".
  const LangQue()
      : super(
          name: "Quechua",
          code: "QUE",
          codeShort: "QU",
          namesNative: const ["Runa Simi", "Kichwa"],
          family: const Quechuan(),
        );

  @override
  List<TranslatedName> get translations => queLanguageTranslations;
}

/// A class that represents the Romansh language.
class LangRoh extends NaturalLanguage {
  /// Creates a instance of [LangRoh] (Romansh language).
  ///
  /// ISO 639-2/T code: "ROH", ISO 639-1 code: "RM".
  const LangRoh()
      : super(
          name: "Romansh",
          code: "ROH",
          codeShort: "RM",
          namesNative: const ["rumantsch grischun"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => rohLanguageTranslations;
}

/// A class that represents the Romanian language.
class LangRon extends NaturalLanguage {
  /// Creates a instance of [LangRon] (Romanian language).
  ///
  /// ISO 639-2/T code: "RON", ISO 639-1 code: "RO".
  const LangRon()
      : super(
          name: "Romanian",
          code: "RON",
          codeShort: "RO",
          namesNative: const ["Română"],
          bibliographicCode: "RUM",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => ronLanguageTranslations;
}

/// A class that represents the Kirundi language.
class LangRun extends NaturalLanguage {
  /// Creates a instance of [LangRun] (Kirundi language).
  ///
  /// ISO 639-2/T code: "RUN", ISO 639-1 code: "RN".
  const LangRun()
      : super(
          name: "Kirundi",
          code: "RUN",
          codeShort: "RN",
          namesNative: const ["Ikirundi"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => runLanguageTranslations;
}

/// A class that represents the Russian language.
class LangRus extends NaturalLanguage {
  /// Creates a instance of [LangRus] (Russian language).
  ///
  /// ISO 639-2/T code: "RUS", ISO 639-1 code: "RU".
  const LangRus()
      : super(
          name: "Russian",
          code: "RUS",
          codeShort: "RU",
          namesNative: const ["Русский"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => rusLanguageTranslations;
}

/// A class that represents the Sango language.
class LangSag extends NaturalLanguage {
  /// Creates a instance of [LangSag] (Sango language).
  ///
  /// ISO 639-2/T code: "SAG", ISO 639-1 code: "SG".
  const LangSag()
      : super(
          name: "Sango",
          code: "SAG",
          codeShort: "SG",
          namesNative: const ["yângâ tî sängö"],
          family: const Creole(),
        );

  @override
  List<TranslatedName> get translations => sagLanguageTranslations;
}

/// A class that represents the Sanskrit (Saṁskṛta) language.
class LangSan extends NaturalLanguage {
  /// Creates a instance of [LangSan] (Sanskrit (Saṁskṛta) language).
  ///
  /// ISO 639-2/T code: "SAN", ISO 639-1 code: "SA".
  const LangSan()
      : super(
          name: "Sanskrit (Saṁskṛta)",
          code: "SAN",
          codeShort: "SA",
          namesNative: const ["संस्कृतम्"],
          family: const IndoEuropean(),
          scripts: const {ScriptDeva()},
        );

  @override
  List<TranslatedName> get translations => sanLanguageTranslations;
}

/// A class that represents the Sinhalese (Sinhala) language.
class LangSin extends NaturalLanguage {
  /// Creates a instance of [LangSin] (Sinhalese (Sinhala) language).
  ///
  /// ISO 639-2/T code: "SIN", ISO 639-1 code: "SI".
  const LangSin()
      : super(
          name: "Sinhalese (Sinhala)",
          code: "SIN",
          codeShort: "SI",
          namesNative: const ["සිංහල"],
          family: const IndoEuropean(),
          scripts: const {ScriptSinh()},
        );

  @override
  List<TranslatedName> get translations => sinLanguageTranslations;
}

/// A class that represents the Slovak language.
class LangSlk extends NaturalLanguage {
  /// Creates a instance of [LangSlk] (Slovak language).
  ///
  /// ISO 639-2/T code: "SLK", ISO 639-1 code: "SK".
  const LangSlk()
      : super(
          name: "Slovak",
          code: "SLK",
          codeShort: "SK",
          namesNative: const ["slovenčina"],
          bibliographicCode: "SLO",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => slkLanguageTranslations;
}

/// A class that represents the Slovene language.
class LangSlv extends NaturalLanguage {
  /// Creates a instance of [LangSlv] (Slovene language).
  ///
  /// ISO 639-2/T code: "SLV", ISO 639-1 code: "SL".
  const LangSlv()
      : super(
          name: "Slovene",
          code: "SLV",
          codeShort: "SL",
          namesNative: const ["slovenščina"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => slvLanguageTranslations;
}

/// A class that represents the Northern Sami language.
class LangSme extends NaturalLanguage {
  /// Creates a instance of [LangSme] (Northern Sami language).
  ///
  /// ISO 639-2/T code: "SME", ISO 639-1 code: "SE".
  const LangSme()
      : super(
          name: "Northern Sami",
          code: "SME",
          codeShort: "SE",
          namesNative: const ["Davvisámegiella"],
          family: const Uralic(),
        );

  @override
  List<TranslatedName> get translations => smeLanguageTranslations;
}

/// A class that represents the Samoan language.
class LangSmo extends NaturalLanguage {
  /// Creates a instance of [LangSmo] (Samoan language).
  ///
  /// ISO 639-2/T code: "SMO", ISO 639-1 code: "SM".
  const LangSmo()
      : super(
          name: "Samoan",
          code: "SMO",
          codeShort: "SM",
          namesNative: const ["gagana fa'a Samoa"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => smoLanguageTranslations;
}

/// A class that represents the Shona language.
class LangSna extends NaturalLanguage {
  /// Creates a instance of [LangSna] (Shona language).
  ///
  /// ISO 639-2/T code: "SNA", ISO 639-1 code: "SN".
  const LangSna()
      : super(
          name: "Shona",
          code: "SNA",
          codeShort: "SN",
          namesNative: const ["chiShona"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => snaLanguageTranslations;
}

/// A class that represents the Sindhi language.
class LangSnd extends NaturalLanguage {
  /// Creates a instance of [LangSnd] (Sindhi language).
  ///
  /// ISO 639-2/T code: "SND", ISO 639-1 code: "SD".
  const LangSnd()
      : super(
          name: "Sindhi",
          code: "SND",
          codeShort: "SD",
          namesNative: const ["सिन्धी", "سنڌي، سندھی‎"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptDeva()},
        );

  @override
  List<TranslatedName> get translations => sndLanguageTranslations;
}

/// A class that represents the Somali language.
class LangSom extends NaturalLanguage {
  /// Creates a instance of [LangSom] (Somali language).
  ///
  /// ISO 639-2/T code: "SOM", ISO 639-1 code: "SO".
  const LangSom()
      : super(
          name: "Somali",
          code: "SOM",
          codeShort: "SO",
          namesNative: const ["Soomaaliga"],
          family: const AfroAsiatic(),
        );

  @override
  List<TranslatedName> get translations => somLanguageTranslations;
}

/// A class that represents the Southern Sotho language.
class LangSot extends NaturalLanguage {
  /// Creates a instance of [LangSot] (Southern Sotho language).
  ///
  /// ISO 639-2/T code: "SOT", ISO 639-1 code: "ST".
  const LangSot()
      : super(
          name: "Southern Sotho",
          code: "SOT",
          codeShort: "ST",
          namesNative: const ["Sesotho"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => sotLanguageTranslations;
}

/// A class that represents the Spanish language.
class LangSpa extends NaturalLanguage {
  /// Creates a instance of [LangSpa] (Spanish language).
  ///
  /// ISO 639-2/T code: "SPA", ISO 639-1 code: "ES".
  const LangSpa()
      : super(
          name: "Spanish",
          code: "SPA",
          codeShort: "ES",
          namesNative: const ["Español"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => spaLanguageTranslations;
}

/// A class that represents the Albanian language.
class LangSqi extends NaturalLanguage {
  /// Creates a instance of [LangSqi] (Albanian language).
  ///
  /// ISO 639-2/T code: "SQI", ISO 639-1 code: "SQ".
  const LangSqi()
      : super(
          name: "Albanian",
          code: "SQI",
          codeShort: "SQ",
          namesNative: const ["Shqip"],
          bibliographicCode: "ALB",
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => sqiLanguageTranslations;
}

/// A class that represents the Sardinian language.
class LangSrd extends NaturalLanguage {
  /// Creates a instance of [LangSrd] (Sardinian language).
  ///
  /// ISO 639-2/T code: "SRD", ISO 639-1 code: "SC".
  const LangSrd()
      : super(
          name: "Sardinian",
          code: "SRD",
          codeShort: "SC",
          namesNative: const ["sardu"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => srdLanguageTranslations;
}

/// A class that represents the Serbian language.
class LangSrp extends NaturalLanguage {
  /// Creates a instance of [LangSrp] (Serbian language).
  ///
  /// ISO 639-2/T code: "SRP", ISO 639-1 code: "SR".
  const LangSrp()
      : super(
          name: "Serbian",
          code: "SRP",
          codeShort: "SR",
          namesNative: const ["српски језик"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl(), ScriptLatn()},
        );

  @override
  List<TranslatedName> get translations => srpLanguageTranslations;
}

/// A class that represents the Swati language.
class LangSsw extends NaturalLanguage {
  /// Creates a instance of [LangSsw] (Swati language).
  ///
  /// ISO 639-2/T code: "SSW", ISO 639-1 code: "SS".
  const LangSsw()
      : super(
          name: "Swati",
          code: "SSW",
          codeShort: "SS",
          namesNative: const ["SiSwati"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => sswLanguageTranslations;
}

/// A class that represents the Sundanese language.
class LangSun extends NaturalLanguage {
  /// Creates a instance of [LangSun] (Sundanese language).
  ///
  /// ISO 639-2/T code: "SUN", ISO 639-1 code: "SU".
  const LangSun()
      : super(
          name: "Sundanese",
          code: "SUN",
          codeShort: "SU",
          namesNative: const ["Basa Sunda"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => sunLanguageTranslations;
}

/// A class that represents the Swahili language.
class LangSwa extends NaturalLanguage {
  /// Creates a instance of [LangSwa] (Swahili language).
  ///
  /// ISO 639-2/T code: "SWA", ISO 639-1 code: "SW".
  const LangSwa()
      : super(
          name: "Swahili",
          code: "SWA",
          codeShort: "SW",
          namesNative: const ["Kiswahili"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => swaLanguageTranslations;
}

/// A class that represents the Swedish language.
class LangSwe extends NaturalLanguage {
  /// Creates a instance of [LangSwe] (Swedish language).
  ///
  /// ISO 639-2/T code: "SWE", ISO 639-1 code: "SV".
  const LangSwe()
      : super(
          name: "Swedish",
          code: "SWE",
          codeShort: "SV",
          namesNative: const ["svenska"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => sweLanguageTranslations;
}

/// A class that represents the Tahitian language.
class LangTah extends NaturalLanguage {
  /// Creates a instance of [LangTah] (Tahitian language).
  ///
  /// ISO 639-2/T code: "TAH", ISO 639-1 code: "TY".
  const LangTah()
      : super(
          name: "Tahitian",
          code: "TAH",
          codeShort: "TY",
          namesNative: const ["Reo Tahiti"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => tahLanguageTranslations;
}

/// A class that represents the Tamil language.
class LangTam extends NaturalLanguage {
  /// Creates a instance of [LangTam] (Tamil language).
  ///
  /// ISO 639-2/T code: "TAM", ISO 639-1 code: "TA".
  const LangTam()
      : super(
          name: "Tamil",
          code: "TAM",
          codeShort: "TA",
          namesNative: const ["தமிழ்"],
          family: const Dravidian(),
          scripts: const {ScriptTaml()},
        );

  @override
  List<TranslatedName> get translations => tamLanguageTranslations;
}

/// A class that represents the Tatar language.
class LangTat extends NaturalLanguage {
  /// Creates a instance of [LangTat] (Tatar language).
  ///
  /// ISO 639-2/T code: "TAT", ISO 639-1 code: "TT".
  const LangTat()
      : super(
          name: "Tatar",
          code: "TAT",
          codeShort: "TT",
          namesNative: const ["татар теле", "tatar tele"],
          family: const Turkic(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => tatLanguageTranslations;
}

/// A class that represents the Telugu language.
class LangTel extends NaturalLanguage {
  /// Creates a instance of [LangTel] (Telugu language).
  ///
  /// ISO 639-2/T code: "TEL", ISO 639-1 code: "TE".
  const LangTel()
      : super(
          name: "Telugu",
          code: "TEL",
          codeShort: "TE",
          namesNative: const ["తెలుగు"],
          family: const Dravidian(),
          scripts: const {ScriptTelu()},
        );

  @override
  List<TranslatedName> get translations => telLanguageTranslations;
}

/// A class that represents the Tajik language.
class LangTgk extends NaturalLanguage {
  /// Creates a instance of [LangTgk] (Tajik language).
  ///
  /// ISO 639-2/T code: "TGK", ISO 639-1 code: "TG".
  const LangTgk()
      : super(
          name: "Tajik",
          code: "TGK",
          codeShort: "TG",
          namesNative: const ["тоҷикӣ", "تاجیکی‎", "toçikī"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => tgkLanguageTranslations;
}

/// A class that represents the Tagalog language.
class LangTgl extends NaturalLanguage {
  /// Creates a instance of [LangTgl] (Tagalog language).
  ///
  /// ISO 639-2/T code: "TGL", ISO 639-1 code: "TL".
  const LangTgl()
      : super(
          name: "Tagalog",
          code: "TGL",
          codeShort: "TL",
          namesNative: const ["Wikang Tagalog"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => tglLanguageTranslations;
}

/// A class that represents the Thai language.
class LangTha extends NaturalLanguage {
  /// Creates a instance of [LangTha] (Thai language).
  ///
  /// ISO 639-2/T code: "THA", ISO 639-1 code: "TH".
  const LangTha()
      : super(
          name: "Thai",
          code: "THA",
          codeShort: "TH",
          namesNative: const ["ไทย"],
          family: const TaiKadai(),
          scripts: const {ScriptThai()},
        );

  @override
  List<TranslatedName> get translations => thaLanguageTranslations;
}

/// A class that represents the Tigrinya language.
class LangTir extends NaturalLanguage {
  /// Creates a instance of [LangTir] (Tigrinya language).
  ///
  /// ISO 639-2/T code: "TIR", ISO 639-1 code: "TI".
  const LangTir()
      : super(
          name: "Tigrinya",
          code: "TIR",
          codeShort: "TI",
          namesNative: const ["ትግርኛ"],
          family: const AfroAsiatic(),
          scripts: const {ScriptEthi()},
        );

  @override
  List<TranslatedName> get translations => tirLanguageTranslations;
}

/// A class that represents the Tonga (Tonga Islands) language.
class LangTon extends NaturalLanguage {
  /// Creates a instance of [LangTon] (Tonga (Tonga Islands) language).
  ///
  /// ISO 639-2/T code: "TON", ISO 639-1 code: "TO".
  const LangTon()
      : super(
          name: "Tonga (Tonga Islands)",
          code: "TON",
          codeShort: "TO",
          namesNative: const ["faka Tonga"],
          family: const Austronesian(),
        );

  @override
  List<TranslatedName> get translations => tonLanguageTranslations;
}

/// A class that represents the Tswana language.
class LangTsn extends NaturalLanguage {
  /// Creates a instance of [LangTsn] (Tswana language).
  ///
  /// ISO 639-2/T code: "TSN", ISO 639-1 code: "TN".
  const LangTsn()
      : super(
          name: "Tswana",
          code: "TSN",
          codeShort: "TN",
          namesNative: const ["Setswana"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => tsnLanguageTranslations;
}

/// A class that represents the Tsonga language.
class LangTso extends NaturalLanguage {
  /// Creates a instance of [LangTso] (Tsonga language).
  ///
  /// ISO 639-2/T code: "TSO", ISO 639-1 code: "TS".
  const LangTso()
      : super(
          name: "Tsonga",
          code: "TSO",
          codeShort: "TS",
          namesNative: const ["Xitsonga"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => tsoLanguageTranslations;
}

/// A class that represents the Turkmen language.
class LangTuk extends NaturalLanguage {
  /// Creates a instance of [LangTuk] (Turkmen language).
  ///
  /// ISO 639-2/T code: "TUK", ISO 639-1 code: "TK".
  const LangTuk()
      : super(
          name: "Turkmen",
          code: "TUK",
          codeShort: "TK",
          namesNative: const ["Türkmen", "Түркмен"],
          family: const Turkic(),
        );

  @override
  List<TranslatedName> get translations => tukLanguageTranslations;
}

/// A class that represents the Turkish language.
class LangTur extends NaturalLanguage {
  /// Creates a instance of [LangTur] (Turkish language).
  ///
  /// ISO 639-2/T code: "TUR", ISO 639-1 code: "TR".
  const LangTur()
      : super(
          name: "Turkish",
          code: "TUR",
          codeShort: "TR",
          namesNative: const ["Türkçe"],
          family: const Turkic(),
        );

  @override
  List<TranslatedName> get translations => turLanguageTranslations;
}

/// A class that represents the Twi language.
class LangTwi extends NaturalLanguage {
  /// Creates a instance of [LangTwi] (Twi language).
  ///
  /// ISO 639-2/T code: "TWI", ISO 639-1 code: "TW".
  const LangTwi()
      : super(
          name: "Twi",
          code: "TWI",
          codeShort: "TW",
          namesNative: const ["Twi"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => twiLanguageTranslations;
}

/// A class that represents the Uyghur language.
class LangUig extends NaturalLanguage {
  /// Creates a instance of [LangUig] (Uyghur language).
  ///
  /// ISO 639-2/T code: "UIG", ISO 639-1 code: "UG".
  const LangUig()
      : super(
          name: "Uyghur",
          code: "UIG",
          codeShort: "UG",
          namesNative: const ["ئۇيغۇرچە‎", "Uyghurche"],
          family: const Turkic(),
          scripts: const {ScriptArab()},
        );

  @override
  List<TranslatedName> get translations => uigLanguageTranslations;
}

/// A class that represents the Ukrainian language.
class LangUkr extends NaturalLanguage {
  /// Creates a instance of [LangUkr] (Ukrainian language).
  ///
  /// ISO 639-2/T code: "UKR", ISO 639-1 code: "UK".
  const LangUkr()
      : super(
          name: "Ukrainian",
          code: "UKR",
          codeShort: "UK",
          namesNative: const ["Українська"],
          family: const IndoEuropean(),
          scripts: const {ScriptCyrl()},
        );

  @override
  List<TranslatedName> get translations => ukrLanguageTranslations;
}

/// A class that represents the Urdu language.
class LangUrd extends NaturalLanguage {
  /// Creates a instance of [LangUrd] (Urdu language).
  ///
  /// ISO 639-2/T code: "URD", ISO 639-1 code: "UR".
  const LangUrd()
      : super(
          name: "Urdu",
          code: "URD",
          codeShort: "UR",
          namesNative: const ["اردو"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptArab()},
        );

  @override
  List<TranslatedName> get translations => urdLanguageTranslations;
}

/// A class that represents the Uzbek language.
class LangUzb extends NaturalLanguage {
  /// Creates a instance of [LangUzb] (Uzbek language).
  ///
  /// ISO 639-2/T code: "UZB", ISO 639-1 code: "UZ".
  const LangUzb()
      : super(
          name: "Uzbek",
          code: "UZB",
          codeShort: "UZ",
          namesNative: const ["Ўзбек", "أۇزبېك‎", "Oʻzbek"],
          family: const Turkic(),
        );

  @override
  List<TranslatedName> get translations => uzbLanguageTranslations;
}

/// A class that represents the Venda language.
class LangVen extends NaturalLanguage {
  /// Creates a instance of [LangVen] (Venda language).
  ///
  /// ISO 639-2/T code: "VEN", ISO 639-1 code: "VE".
  const LangVen()
      : super(
          name: "Venda",
          code: "VEN",
          codeShort: "VE",
          namesNative: const ["Tshivenḓa"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => venLanguageTranslations;
}

/// A class that represents the Vietnamese language.
class LangVie extends NaturalLanguage {
  /// Creates a instance of [LangVie] (Vietnamese language).
  ///
  /// ISO 639-2/T code: "VIE", ISO 639-1 code: "VI".
  const LangVie()
      : super(
          name: "Vietnamese",
          code: "VIE",
          codeShort: "VI",
          namesNative: const ["Tiếng Việt"],
          family: const Austroasiatic(),
        );

  @override
  List<TranslatedName> get translations => vieLanguageTranslations;
}

/// A class that represents the Volapük language.
class LangVol extends NaturalLanguage {
  /// Creates a instance of [LangVol] (Volapük language).
  ///
  /// ISO 639-2/T code: "VOL", ISO 639-1 code: "VO".
  const LangVol()
      : super(
          name: "Volapük",
          code: "VOL",
          codeShort: "VO",
          namesNative: const ["Volapük"],
          family: const Constructed(),
        );

  @override
  List<TranslatedName> get translations => volLanguageTranslations;
}

/// A class that represents the Walloon language.
class LangWln extends NaturalLanguage {
  /// Creates a instance of [LangWln] (Walloon language).
  ///
  /// ISO 639-2/T code: "WLN", ISO 639-1 code: "WA".
  const LangWln()
      : super(
          name: "Walloon",
          code: "WLN",
          codeShort: "WA",
          namesNative: const ["walon"],
          family: const IndoEuropean(),
        );

  @override
  List<TranslatedName> get translations => wlnLanguageTranslations;
}

/// A class that represents the Wolof language.
class LangWol extends NaturalLanguage {
  /// Creates a instance of [LangWol] (Wolof language).
  ///
  /// ISO 639-2/T code: "WOL", ISO 639-1 code: "WO".
  const LangWol()
      : super(
          name: "Wolof",
          code: "WOL",
          codeShort: "WO",
          namesNative: const ["Wollof"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => wolLanguageTranslations;
}

/// A class that represents the Xhosa language.
class LangXho extends NaturalLanguage {
  /// Creates a instance of [LangXho] (Xhosa language).
  ///
  /// ISO 639-2/T code: "XHO", ISO 639-1 code: "XH".
  const LangXho()
      : super(
          name: "Xhosa",
          code: "XHO",
          codeShort: "XH",
          namesNative: const ["isiXhosa"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => xhoLanguageTranslations;
}

/// A class that represents the Yiddish language.
class LangYid extends NaturalLanguage {
  /// Creates a instance of [LangYid] (Yiddish language).
  ///
  /// ISO 639-2/T code: "YID", ISO 639-1 code: "YI".
  const LangYid()
      : super(
          name: "Yiddish",
          code: "YID",
          codeShort: "YI",
          namesNative: const ["ייִדיש"],
          family: const IndoEuropean(),
          isRightToLeft: true,
          scripts: const {ScriptHebr()},
        );

  @override
  List<TranslatedName> get translations => yidLanguageTranslations;
}

/// A class that represents the Yoruba language.
class LangYor extends NaturalLanguage {
  /// Creates a instance of [LangYor] (Yoruba language).
  ///
  /// ISO 639-2/T code: "YOR", ISO 639-1 code: "YO".
  const LangYor()
      : super(
          name: "Yoruba",
          code: "YOR",
          codeShort: "YO",
          namesNative: const ["Yorùbá"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => yorLanguageTranslations;
}

/// A class that represents the Zhuang (Chuang) language.
class LangZha extends NaturalLanguage {
  /// Creates a instance of [LangZha] (Zhuang (Chuang) language).
  ///
  /// ISO 639-2/T code: "ZHA", ISO 639-1 code: "ZA".
  const LangZha()
      : super(
          name: "Zhuang (Chuang)",
          code: "ZHA",
          codeShort: "ZA",
          namesNative: const ["Saɯ cueŋƅ", "Saw cuengh"],
          family: const TaiKadai(),
        );

  @override
  List<TranslatedName> get translations => zhaLanguageTranslations;
}

/// A class that represents the Chinese language.
class LangZho extends NaturalLanguage {
  /// Creates a instance of [LangZho] (Chinese language).
  ///
  /// ISO 639-2/T code: "ZHO", ISO 639-1 code: "ZH".
  const LangZho()
      : super(
          name: "Chinese",
          code: "ZHO",
          codeShort: "ZH",
          namesNative: const ["中文 (Zhōngwén)", "汉语", "漢語"],
          bibliographicCode: "CHI",
          family: const SinoTibetan(),
          scripts: const {
            ScriptHans(),
            ScriptHant(),
            ScriptBopo(),
            ScriptLatn(),
          },
        );

  @override
  List<TranslatedName> get translations => zhoLanguageTranslations;
}

/// A class that represents the Zulu language.
class LangZul extends NaturalLanguage {
  /// Creates a instance of [LangZul] (Zulu language).
  ///
  /// ISO 639-2/T code: "ZUL", ISO 639-1 code: "ZU".
  const LangZul()
      : super(
          name: "Zulu",
          code: "ZUL",
          codeShort: "ZU",
          namesNative: const ["isiZulu"],
          family: const NigerCongo(),
        );

  @override
  List<TranslatedName> get translations => zulLanguageTranslations;
}
