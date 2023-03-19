// ignore_for_file: avoid-non-ascii-symbols

import "../model/language/language.dart";
import "natural_language_families.dart";

// ignore: prefer-match-file-name, not necessary for the languages data.
class LangAar extends NaturalLanguage {
  const LangAar()
      : super(
          code: "AAR",
          codeShort: "AA",
          family: const AfroAsiatic(),
          name: "Afar",
          namesNative: const ["Afaraf"],
        );
}

class LangAbk extends NaturalLanguage {
  const LangAbk()
      : super(
          code: "ABK",
          codeShort: "AB",
          family: const NorthwestCaucasian(),
          name: "Abkhaz",
          namesNative: const ["аҧсуа бызшәа", "аҧсшәа"],
        );
}

class LangAve extends NaturalLanguage {
  const LangAve()
      : super(
          code: "AVE",
          codeShort: "AE",
          name: "Avestan",
          namesNative: const ["avesta"],
        );
}

class LangAfr extends NaturalLanguage {
  const LangAfr()
      : super(
          code: "AFR",
          codeShort: "AF",
          name: "Afrikaans",
          namesNative: const ["Afrikaans"],
        );
}

class LangAka extends NaturalLanguage {
  const LangAka()
      : super(
          code: "AKA",
          codeShort: "AK",
          family: const NigerCongo(),
          name: "Akan",
          namesNative: const ["Akan"],
        );
}

class LangAmh extends NaturalLanguage {
  const LangAmh()
      : super(
          code: "AMH",
          codeShort: "AM",
          family: const AfroAsiatic(),
          name: "Amharic",
          namesNative: const ["አማርኛ"],
        );
}

class LangArg extends NaturalLanguage {
  const LangArg()
      : super(
          code: "ARG",
          codeShort: "AN",
          name: "Aragonese",
          namesNative: const ["aragonés"],
        );
}

class LangAra extends NaturalLanguage {
  const LangAra()
      : super(
          code: "ARA",
          codeShort: "AR",
          family: const AfroAsiatic(),
          name: "Arabic",
          namesNative: const ["العربية"],
          isRightToLeft: true,
        );
}

class LangAsm extends NaturalLanguage {
  const LangAsm()
      : super(
          code: "ASM",
          codeShort: "AS",
          name: "Assamese",
          namesNative: const ["অসমীয়া"],
        );
}

class LangAva extends NaturalLanguage {
  const LangAva()
      : super(
          code: "AVA",
          codeShort: "AV",
          family: const NortheastCaucasian(),
          name: "Avaric",
          namesNative: const ["авар мацӀ", "магӀарул мацӀ"],
        );
}

class LangAym extends NaturalLanguage {
  const LangAym()
      : super(
          code: "AYM",
          codeShort: "AY",
          family: const Aymaran(),
          name: "Aymara",
          namesNative: const ["aymar aru"],
        );
}

class LangAze extends NaturalLanguage {
  const LangAze()
      : super(
          code: "AZE",
          codeShort: "AZ",
          family: const Turkic(),
          name: "Azerbaijani",
          namesNative: const ["azərbaycan dili"],
        );
}

class LangBak extends NaturalLanguage {
  const LangBak()
      : super(
          code: "BAK",
          codeShort: "BA",
          family: const Turkic(),
          name: "Bashkir",
          namesNative: const ["башҡорт теле"],
        );
}

class LangBel extends NaturalLanguage {
  const LangBel()
      : super(
          code: "BEL",
          codeShort: "BE",
          name: "Belarusian",
          namesNative: const ["беларуская мова"],
        );
}

class LangBul extends NaturalLanguage {
  const LangBul()
      : super(
          code: "BUL",
          codeShort: "BG",
          name: "Bulgarian",
          namesNative: const ["български език"],
        );
}

class LangBih extends NaturalLanguage {
  const LangBih()
      : super(
          code: "BIH",
          codeShort: "BH",
          name: "Bihari",
          namesNative: const ["भोजपुरी"],
        );
}

class LangBis extends NaturalLanguage {
  const LangBis()
      : super(
          code: "BIS",
          codeShort: "BI",
          family: const Creole(),
          name: "Bislama",
          namesNative: const ["Bislama"],
        );
}

class LangBam extends NaturalLanguage {
  const LangBam()
      : super(
          code: "BAM",
          codeShort: "BM",
          family: const NigerCongo(),
          name: "Bambara",
          namesNative: const ["bamanankan"],
        );
}

class LangBen extends NaturalLanguage {
  const LangBen()
      : super(
          code: "BEN",
          codeShort: "BN",
          name: "Bengali (Bangla)",
          namesNative: const ["বাংলা"],
        );
}

class LangBod extends NaturalLanguage {
  const LangBod()
      : super(
          code: "BOD",
          codeShort: "BO",
          bibliographicCode: "TIB",
          family: const SinoTibetan(),
          name: "Tibetan Standard",
          namesNative: const ["བོད་ཡིག"],
        );
}

class LangBre extends NaturalLanguage {
  const LangBre()
      : super(
          code: "BRE",
          codeShort: "BR",
          name: "Breton",
          namesNative: const ["brezhoneg"],
        );
}

class LangBos extends NaturalLanguage {
  const LangBos()
      : super(
          code: "BOS",
          codeShort: "BS",
          name: "Bosnian",
          namesNative: const ["bosanski jezik"],
        );
}

class LangCat extends NaturalLanguage {
  const LangCat()
      : super(
          code: "CAT",
          codeShort: "CA",
          name: "Catalan",
          namesNative: const ["català"],
        );
}

class LangChe extends NaturalLanguage {
  const LangChe()
      : super(
          code: "CHE",
          codeShort: "CE",
          family: const NortheastCaucasian(),
          name: "Chechen",
          namesNative: const ["нохчийн мотт"],
        );
}

class LangCha extends NaturalLanguage {
  const LangCha()
      : super(
          code: "CHA",
          codeShort: "CH",
          family: const Austronesian(),
          name: "Chamorro",
          namesNative: const ["Chamoru"],
        );
}

class LangCos extends NaturalLanguage {
  const LangCos()
      : super(
          code: "COS",
          codeShort: "CO",
          name: "Corsican",
          namesNative: const ["corsu", "lingua corsa"],
        );
}

class LangCre extends NaturalLanguage {
  const LangCre()
      : super(
          code: "CRE",
          codeShort: "CR",
          family: const Algonquian(),
          name: "Cree",
          namesNative: const ["ᓀᐦᐃᔭᐍᐏᐣ"],
        );
}

class LangCes extends NaturalLanguage {
  const LangCes()
      : super(
          code: "CES",
          codeShort: "CS",
          bibliographicCode: "CZE",
          name: "Czech",
          namesNative: const ["čeština"],
        );
}

class LangChu extends NaturalLanguage {
  const LangChu()
      : super(
          code: "CHU",
          codeShort: "CU",
          name: "(Old) Church Slavonic",
          namesNative: const ["ѩзыкъ словѣньскъ"],
        );
}

class LangChv extends NaturalLanguage {
  const LangChv()
      : super(
          code: "CHV",
          codeShort: "CV",
          family: const Turkic(),
          name: "Chuvash",
          namesNative: const ["чӑваш чӗлхи"],
        );
}

class LangCor extends NaturalLanguage {
  const LangCor()
      : super(
          code: "COR",
          codeShort: "KW",
          name: "Cornish",
          namesNative: const ["Kernewek"],
        );
}

class LangCym extends NaturalLanguage {
  const LangCym()
      : super(
          code: "CYM",
          codeShort: "CY",
          bibliographicCode: "WEL",
          name: "Welsh",
          namesNative: const ["Cymraeg"],
        );
}

class LangDan extends NaturalLanguage {
  const LangDan()
      : super(
          code: "DAN",
          codeShort: "DA",
          name: "Danish",
          namesNative: const ["dansk"],
        );
}

class LangDeu extends NaturalLanguage {
  const LangDeu()
      : super(
          code: "DEU",
          codeShort: "DE",
          bibliographicCode: "GER",
          name: "German",
          namesNative: const ["Deutsch"],
        );
}

class LangDiv extends NaturalLanguage {
  const LangDiv()
      : super(
          code: "DIV",
          codeShort: "DV",
          name: "Divehi (Dhivehi/Maldivian)",
          namesNative: const ["ދިވެހި"],
          isRightToLeft: true,
        );
}

class LangDzo extends NaturalLanguage {
  const LangDzo()
      : super(
          code: "DZO",
          codeShort: "DZ",
          family: const SinoTibetan(),
          name: "Dzongkha",
          namesNative: const ["རྫོང་ཁ"],
        );
}

class LangEwe extends NaturalLanguage {
  const LangEwe()
      : super(
          code: "EWE",
          codeShort: "EE",
          family: const NigerCongo(),
          name: "Ewe",
          namesNative: const ["Eʋegbe"],
        );
}

class LangEll extends NaturalLanguage {
  const LangEll()
      : super(
          code: "ELL",
          codeShort: "EL",
          bibliographicCode: "GRE",
          name: "Greek (modern)",
          namesNative: const ["ελληνικά"],
        );
}

class LangEng extends NaturalLanguage {
  const LangEng()
      : super(
          code: "ENG",
          codeShort: "EN",
          name: "English",
          namesNative: const ["English"],
        );
}

class LangEpo extends NaturalLanguage {
  const LangEpo()
      : super(
          code: "EPO",
          codeShort: "EO",
          family: const Constructed(),
          name: "Esperanto",
          namesNative: const ["Esperanto"],
        );
}

class LangEst extends NaturalLanguage {
  const LangEst()
      : super(
          code: "EST",
          codeShort: "ET",
          family: const Uralic(),
          name: "Estonian",
          namesNative: const ["eesti", "eesti keel"],
        );
}

class LangEus extends NaturalLanguage {
  const LangEus()
      : super(
          code: "EUS",
          codeShort: "EU",
          bibliographicCode: "BAQ",
          family: const LanguageIsolate(),
          name: "Basque",
          namesNative: const ["euskara", "euskera"],
        );
}

class LangFas extends NaturalLanguage {
  const LangFas()
      : super(
          code: "FAS",
          codeShort: "FA",
          bibliographicCode: "PER",
          name: "Persian (Farsi)",
          namesNative: const ["فارسی"],
          isRightToLeft: true,
        );
}

class LangFul extends NaturalLanguage {
  const LangFul()
      : super(
          code: "FUL",
          codeShort: "FF",
          family: const NigerCongo(),
          name: "Fula (Fulah/Pulaar/Pular)",
          namesNative: const ["Fulfulde", "Pulaar", "Pular"],
        );
}

class LangFin extends NaturalLanguage {
  const LangFin()
      : super(
          code: "FIN",
          codeShort: "FI",
          family: const Uralic(),
          name: "Finnish",
          namesNative: const ["suomi", "suomen kieli"],
        );
}

class LangFij extends NaturalLanguage {
  const LangFij()
      : super(
          code: "FIJ",
          codeShort: "FJ",
          family: const Austronesian(),
          name: "Fijian",
          namesNative: const ["vosa Vakaviti"],
        );
}

class LangFao extends NaturalLanguage {
  const LangFao()
      : super(
          code: "FAO",
          codeShort: "FO",
          name: "Faroese",
          namesNative: const ["føroyskt"],
        );
}

class LangFra extends NaturalLanguage {
  const LangFra()
      : super(
          code: "FRA",
          codeShort: "FR",
          bibliographicCode: "FRE",
          name: "French",
          namesNative: const ["français", "langue française"],
        );
}

class LangFry extends NaturalLanguage {
  const LangFry()
      : super(
          code: "FRY",
          codeShort: "FY",
          name: "Western Frisian",
          namesNative: const ["Frysk"],
        );
}

class LangGle extends NaturalLanguage {
  const LangGle()
      : super(
          code: "GLE",
          codeShort: "GA",
          name: "Irish",
          namesNative: const ["Gaeilge"],
        );
}

class LangGla extends NaturalLanguage {
  const LangGla()
      : super(
          code: "GLA",
          codeShort: "GD",
          name: "(Scottish) Gaelic",
          namesNative: const ["Gàidhlig"],
        );
}

class LangGlg extends NaturalLanguage {
  const LangGlg()
      : super(
          code: "GLG",
          codeShort: "GL",
          name: "Galician",
          namesNative: const ["galego"],
        );
}

class LangGrn extends NaturalLanguage {
  const LangGrn()
      : super(
          code: "GRN",
          codeShort: "GN",
          family: const Tupian(),
          name: "Guaraní",
          namesNative: const ["Avañe'ẽ"],
        );
}

class LangGuj extends NaturalLanguage {
  const LangGuj()
      : super(
          code: "GUJ",
          codeShort: "GU",
          name: "Gujarati",
          namesNative: const ["ગુજરાતી"],
        );
}

class LangGlv extends NaturalLanguage {
  const LangGlv()
      : super(
          code: "GLV",
          codeShort: "GV",
          name: "Manx",
          namesNative: const ["Gaelg", "Gailck"],
        );
}

class LangHau extends NaturalLanguage {
  const LangHau()
      : super(
          code: "HAU",
          codeShort: "HA",
          family: const AfroAsiatic(),
          name: "Hausa",
          namesNative: const ["(Hausa) هَوُسَ"],
          isRightToLeft: true,
        );
}

class LangHeb extends NaturalLanguage {
  const LangHeb()
      : super(
          code: "HEB",
          codeShort: "HE",
          family: const AfroAsiatic(),
          name: "Hebrew (modern)",
          namesNative: const ["עברית"],
          isRightToLeft: true,
        );
}

class LangHin extends NaturalLanguage {
  const LangHin()
      : super(
          code: "HIN",
          codeShort: "HI",
          name: "Hindi",
          namesNative: const ["हिन्दी", "हिंदी"],
        );
}

class LangHmo extends NaturalLanguage {
  const LangHmo()
      : super(
          code: "HMO",
          codeShort: "HO",
          family: const Austronesian(),
          name: "Hiri Motu",
          namesNative: const ["Hiri Motu"],
        );
}

class LangHrv extends NaturalLanguage {
  const LangHrv()
      : super(
          code: "HRV",
          codeShort: "HR",
          name: "Croatian",
          namesNative: const ["hrvatski jezik"],
        );
}

class LangHat extends NaturalLanguage {
  const LangHat()
      : super(
          code: "HAT",
          codeShort: "HT",
          family: const Creole(),
          name: "Haitian (Haitian Creole)",
          namesNative: const ["Kreyòl ayisyen"],
        );
}

class LangHun extends NaturalLanguage {
  const LangHun()
      : super(
          code: "HUN",
          codeShort: "HU",
          family: const Uralic(),
          name: "Hungarian",
          namesNative: const ["magyar"],
        );
}

class LangHye extends NaturalLanguage {
  const LangHye()
      : super(
          code: "HYE",
          codeShort: "HY",
          bibliographicCode: "ARM",
          name: "Armenian",
          namesNative: const ["Հայերեն"],
        );
}

class LangHer extends NaturalLanguage {
  const LangHer()
      : super(
          code: "HER",
          codeShort: "HZ",
          family: const NigerCongo(),
          name: "Herero",
          namesNative: const ["Otjiherero"],
        );
}

class LangIna extends NaturalLanguage {
  const LangIna()
      : super(
          code: "INA",
          codeShort: "IA",
          family: const Constructed(),
          name: "Interlingua",
          namesNative: const ["Interlingua"],
        );
}

class LangInd extends NaturalLanguage {
  const LangInd()
      : super(
          code: "IND",
          codeShort: "ID",
          family: const Austronesian(),
          name: "Indonesian",
          namesNative: const ["Bahasa Indonesia"],
        );
}

class LangIle extends NaturalLanguage {
  const LangIle()
      : super(
          code: "ILE",
          codeShort: "IE",
          family: const Constructed(),
          name: "Interlingue",
          namesNative: const ["Interlingue", "Occidental"],
        );
}

class LangIbo extends NaturalLanguage {
  const LangIbo()
      : super(
          code: "IBO",
          codeShort: "IG",
          family: const NigerCongo(),
          name: "Igbo",
          namesNative: const ["Asụsụ Igbo"],
        );
}

class LangIii extends NaturalLanguage {
  const LangIii()
      : super(
          code: "III",
          codeShort: "II",
          family: const SinoTibetan(),
          name: "Nuosu",
          namesNative: const ["ꆈꌠ꒿ Nuosuhxop"],
        );
}

class LangIpk extends NaturalLanguage {
  const LangIpk()
      : super(
          code: "IPK",
          codeShort: "IK",
          family: const EskimoAleut(),
          name: "Inupiaq",
          namesNative: const ["Iñupiaq", "Iñupiatun"],
        );
}

class LangIdo extends NaturalLanguage {
  const LangIdo()
      : super(
          code: "IDO",
          codeShort: "IO",
          family: const Constructed(),
          name: "Ido",
          namesNative: const ["Ido"],
        );
}

class LangIsl extends NaturalLanguage {
  const LangIsl()
      : super(
          code: "ISL",
          codeShort: "IS",
          bibliographicCode: "ICE",
          name: "Icelandic",
          namesNative: const ["Íslenska"],
        );
}

class LangIta extends NaturalLanguage {
  const LangIta()
      : super(
          code: "ITA",
          codeShort: "IT",
          name: "Italian",
          namesNative: const ["Italiano"],
        );
}

class LangIku extends NaturalLanguage {
  const LangIku()
      : super(
          code: "IKU",
          codeShort: "IU",
          family: const EskimoAleut(),
          name: "Inuktitut",
          namesNative: const ["ᐃᓄᒃᑎᑐᑦ"],
        );
}

class LangJpn extends NaturalLanguage {
  const LangJpn()
      : super(
          code: "JPN",
          codeShort: "JA",
          family: const Japonic(),
          name: "Japanese",
          namesNative: const ["日本語 (にほんご)"],
        );
}

class LangJav extends NaturalLanguage {
  const LangJav()
      : super(
          code: "JAV",
          codeShort: "JV",
          family: const Austronesian(),
          name: "Javanese",
          namesNative: const ["ꦧꦱꦗꦮ", "Basa Jawa"],
        );
}

class LangKat extends NaturalLanguage {
  const LangKat()
      : super(
          code: "KAT",
          codeShort: "KA",
          bibliographicCode: "GEO",
          family: const SouthCaucasian(),
          name: "Georgian",
          namesNative: const ["ქართული"],
        );
}

class LangKon extends NaturalLanguage {
  const LangKon()
      : super(
          code: "KON",
          codeShort: "KG",
          family: const NigerCongo(),
          name: "Kongo",
          namesNative: const ["Kikongo"],
        );
}

class LangKik extends NaturalLanguage {
  const LangKik()
      : super(
          code: "KIK",
          codeShort: "KI",
          family: const NigerCongo(),
          name: "Kikuyu (Gikuyu)",
          namesNative: const ["Gĩkũyũ"],
        );
}

class LangKua extends NaturalLanguage {
  const LangKua()
      : super(
          code: "KUA",
          codeShort: "KJ",
          family: const NigerCongo(),
          name: "Kwanyama (Kuanyama)",
          namesNative: const ["Kuanyama"],
        );
}

class LangKaz extends NaturalLanguage {
  const LangKaz()
      : super(
          code: "KAZ",
          codeShort: "KK",
          family: const Turkic(),
          name: "Kazakh",
          namesNative: const ["қазақ тілі"],
        );
}

class LangKal extends NaturalLanguage {
  const LangKal()
      : super(
          code: "KAL",
          codeShort: "KL",
          family: const EskimoAleut(),
          name: "Kalaallisut (Greenlandic)",
          namesNative: const ["kalaallisut", "kalaallit oqaasii"],
        );
}

class LangKin extends NaturalLanguage {
  const LangKin()
      : super(
          code: "KIN",
          codeShort: "RW",
          family: const NigerCongo(),
          name: "Kinyarwanda",
          namesNative: const ["Ikinyarwanda"],
        );
}

class LangKhm extends NaturalLanguage {
  const LangKhm()
      : super(
          code: "KHM",
          codeShort: "KM",
          family: const Austroasiatic(),
          name: "Khmer",
          namesNative: const ["ខ្មែរ", "ខេមរភាសា", "ភាសាខ្មែរ"],
        );
}

class LangKan extends NaturalLanguage {
  const LangKan()
      : super(
          code: "KAN",
          codeShort: "KN",
          family: const Dravidian(),
          name: "Kannada",
          namesNative: const ["ಕನ್ನಡ"],
        );
}

class LangKor extends NaturalLanguage {
  const LangKor()
      : super(
          code: "KOR",
          codeShort: "KO",
          family: const Koreanic(),
          name: "Korean",
          namesNative: const ["한국어"],
        );
}

class LangKau extends NaturalLanguage {
  const LangKau()
      : super(
          code: "KAU",
          codeShort: "KR",
          family: const NiloSaharan(),
          name: "Kanuri",
          namesNative: const ["Kanuri"],
        );
}

class LangKas extends NaturalLanguage {
  const LangKas()
      : super(
          code: "KAS",
          codeShort: "KS",
          name: "Kashmiri",
          namesNative: const ["कश्मीरी", "كشميري‎"],
          isRightToLeft: true,
        );
}

class LangKur extends NaturalLanguage {
  const LangKur()
      : super(
          code: "KUR",
          codeShort: "KU",
          name: "Kurdish",
          namesNative: const ["Kurdî", "كوردی‎"],
          isRightToLeft: true,
        );
}

class LangKom extends NaturalLanguage {
  const LangKom()
      : super(
          code: "KOM",
          codeShort: "KV",
          family: const Uralic(),
          name: "Komi",
          namesNative: const ["коми кыв"],
        );
}

class LangKir extends NaturalLanguage {
  const LangKir()
      : super(
          code: "KIR",
          codeShort: "KY",
          family: const Turkic(),
          name: "Kyrgyz",
          namesNative: const ["Кыргызча", "Кыргыз тили"],
        );
}

class LangLat extends NaturalLanguage {
  const LangLat()
      : super(
          code: "LAT",
          codeShort: "LA",
          name: "Latin",
          namesNative: const ["latine", "lingua latina"],
        );
}

class LangLtz extends NaturalLanguage {
  const LangLtz()
      : super(
          code: "LTZ",
          codeShort: "LB",
          name: "Luxembourgish (Letzeburgesch)",
          namesNative: const ["Lëtzebuergesch"],
        );
}

class LangLug extends NaturalLanguage {
  const LangLug()
      : super(
          code: "LUG",
          codeShort: "LG",
          family: const NigerCongo(),
          name: "Ganda",
          namesNative: const ["Luganda"],
        );
}

class LangLim extends NaturalLanguage {
  const LangLim()
      : super(
          code: "LIM",
          codeShort: "LI",
          name: "Limburgish (Limburgan/Limburger)",
          namesNative: const ["Limburgs"],
        );
}

class LangLin extends NaturalLanguage {
  const LangLin()
      : super(
          code: "LIN",
          codeShort: "LN",
          family: const NigerCongo(),
          name: "Lingala",
          namesNative: const ["Lingála"],
        );
}

class LangLao extends NaturalLanguage {
  const LangLao()
      : super(
          code: "LAO",
          codeShort: "LO",
          family: const TaiKadai(),
          name: "Lao",
          namesNative: const ["ພາສາລາວ"],
        );
}

class LangLit extends NaturalLanguage {
  const LangLit()
      : super(
          code: "LIT",
          codeShort: "LT",
          name: "Lithuanian",
          namesNative: const ["lietuvių kalba"],
        );
}

class LangLub extends NaturalLanguage {
  const LangLub()
      : super(
          code: "LUB",
          codeShort: "LU",
          family: const NigerCongo(),
          name: "Luba-Katanga",
          namesNative: const ["Tshiluba"],
        );
}

class LangLav extends NaturalLanguage {
  const LangLav()
      : super(
          code: "LAV",
          codeShort: "LV",
          name: "Latvian",
          namesNative: const ["latviešu valoda"],
        );
}

class LangMlg extends NaturalLanguage {
  const LangMlg()
      : super(
          code: "MLG",
          codeShort: "MG",
          family: const Austronesian(),
          name: "Malagasy",
          namesNative: const ["fiteny malagasy"],
        );
}

class LangMah extends NaturalLanguage {
  const LangMah()
      : super(
          code: "MAH",
          codeShort: "MH",
          family: const Austronesian(),
          name: "Marshallese",
          namesNative: const ["Kajin M̧ajeļ"],
        );
}

class LangMri extends NaturalLanguage {
  const LangMri()
      : super(
          code: "MRI",
          codeShort: "MI",
          bibliographicCode: "MAO",
          family: const Austronesian(),
          name: "Māori",
          namesNative: const ["te reo Māori"],
        );
}

class LangMkd extends NaturalLanguage {
  const LangMkd()
      : super(
          code: "MKD",
          codeShort: "MK",
          bibliographicCode: "MAC",
          name: "Macedonian",
          namesNative: const ["македонски јазик"],
        );
}

class LangMal extends NaturalLanguage {
  const LangMal()
      : super(
          code: "MAL",
          codeShort: "ML",
          family: const Dravidian(),
          name: "Malayalam",
          namesNative: const ["മലയാളം"],
        );
}

class LangMon extends NaturalLanguage {
  const LangMon()
      : super(
          code: "MON",
          codeShort: "MN",
          family: const Mongolic(),
          name: "Mongolian",
          namesNative: const ["Монгол хэл"],
        );
}

class LangMar extends NaturalLanguage {
  const LangMar()
      : super(
          code: "MAR",
          codeShort: "MR",
          name: "Marathi (Marāṭhī)",
          namesNative: const ["मराठी"],
        );
}

class LangMsa extends NaturalLanguage {
  const LangMsa()
      : super(
          code: "MSA",
          codeShort: "MS",
          bibliographicCode: "MAY",
          family: const Austronesian(),
          name: "Malay",
          namesNative: const ["bahasa Melayu", "بهاس ملايو‎"],
        );
}

class LangMlt extends NaturalLanguage {
  const LangMlt()
      : super(
          code: "MLT",
          codeShort: "MT",
          family: const AfroAsiatic(),
          name: "Maltese",
          namesNative: const ["Malti"],
        );
}

class LangMya extends NaturalLanguage {
  const LangMya()
      : super(
          code: "MYA",
          codeShort: "MY",
          bibliographicCode: "BUR",
          family: const SinoTibetan(),
          name: "Burmese",
          namesNative: const ["ဗမာစာ"],
        );
}

class LangNau extends NaturalLanguage {
  const LangNau()
      : super(
          code: "NAU",
          codeShort: "NA",
          family: const Austronesian(),
          name: "Nauruan",
          namesNative: const ["Dorerin Naoero"],
        );
}

class LangNob extends NaturalLanguage {
  const LangNob()
      : super(
          code: "NOB",
          codeShort: "NB",
          name: "Norwegian Bokmål",
          namesNative: const ["Norsk bokmål"],
        );
}

class LangNde extends NaturalLanguage {
  const LangNde()
      : super(
          code: "NDE",
          codeShort: "ND",
          family: const NigerCongo(),
          name: "Northern Ndebele",
          namesNative: const ["isiNdebele"],
        );
}

class LangNep extends NaturalLanguage {
  const LangNep()
      : super(
          code: "NEP",
          codeShort: "NE",
          name: "Nepali",
          namesNative: const ["नेपाली"],
        );
}

class LangNdo extends NaturalLanguage {
  const LangNdo()
      : super(
          code: "NDO",
          codeShort: "NG",
          family: const NigerCongo(),
          name: "Ndonga",
          namesNative: const ["Owambo"],
        );
}

class LangNld extends NaturalLanguage {
  const LangNld()
      : super(
          code: "NLD",
          codeShort: "NL",
          bibliographicCode: "DUT",
          name: "Dutch",
          namesNative: const ["Nederlands", "Vlaams"],
        );
}

class LangNno extends NaturalLanguage {
  const LangNno()
      : super(
          code: "NNO",
          codeShort: "NN",
          name: "Norwegian Nynorsk",
          namesNative: const ["Norsk nynorsk"],
        );
}

class LangNor extends NaturalLanguage {
  const LangNor()
      : super(
          code: "NOR",
          codeShort: "NO",
          name: "Norwegian",
          namesNative: const ["Norsk"],
        );
}

class LangNbl extends NaturalLanguage {
  const LangNbl()
      : super(
          code: "NBL",
          codeShort: "NR",
          family: const NigerCongo(),
          name: "Southern Ndebele",
          namesNative: const ["isiNdebele"],
        );
}

class LangNav extends NaturalLanguage {
  const LangNav()
      : super(
          code: "NAV",
          codeShort: "NV",
          family: const DeneYeniseian(),
          name: "Navajo (Navaho)",
          namesNative: const ["Diné bizaad"],
        );
}

class LangNya extends NaturalLanguage {
  const LangNya()
      : super(
          code: "NYA",
          codeShort: "NY",
          family: const NigerCongo(),
          name: "Chichewa (Chewa/Nyanja)",
          namesNative: const ["chiCheŵa", "chinyanja"],
        );
}

class LangOci extends NaturalLanguage {
  const LangOci()
      : super(
          code: "OCI",
          codeShort: "OC",
          name: "Occitan",
          namesNative: const ["occitan", "lenga d'òc"],
        );
}

class LangOji extends NaturalLanguage {
  const LangOji()
      : super(
          code: "OJI",
          codeShort: "OJ",
          family: const Algonquian(),
          name: "Ojibwe (Ojibwa)",
          namesNative: const ["ᐊᓂᔑᓈᐯᒧᐎᓐ"],
        );
}

class LangOrm extends NaturalLanguage {
  const LangOrm()
      : super(
          code: "ORM",
          codeShort: "OM",
          family: const AfroAsiatic(),
          name: "Oromo",
          namesNative: const ["Afaan Oromoo"],
        );
}

class LangOri extends NaturalLanguage {
  const LangOri()
      : super(
          code: "ORI",
          codeShort: "OR",
          name: "Oriya",
          namesNative: const ["ଓଡ଼ିଆ"],
        );
}

class LangOss extends NaturalLanguage {
  const LangOss()
      : super(
          code: "OSS",
          codeShort: "OS",
          name: "Ossetian (Ossetic)",
          namesNative: const ["ирон æвзаг"],
        );
}

class LangPan extends NaturalLanguage {
  const LangPan()
      : super(
          code: "PAN",
          codeShort: "PA",
          name: "(Eastern) Punjabi",
          namesNative: const ["ਪੰਜਾਬੀ"],
        );
}

class LangPli extends NaturalLanguage {
  const LangPli()
      : super(
          code: "PLI",
          codeShort: "PI",
          name: "Pāli",
          namesNative: const ["पाऴि"],
        );
}

class LangPol extends NaturalLanguage {
  const LangPol()
      : super(
          code: "POL",
          codeShort: "PL",
          name: "Polish",
          namesNative: const ["polszczyzna"],
        );
}

class LangPus extends NaturalLanguage {
  const LangPus()
      : super(
          code: "PUS",
          codeShort: "PS",
          name: "Pashto (Pushto)",
          namesNative: const ["پښتو"],
          isRightToLeft: true,
        );
}

class LangPor extends NaturalLanguage {
  const LangPor()
      : super(
          code: "POR",
          codeShort: "PT",
          name: "Portuguese",
          namesNative: const ["Português"],
        );
}

class LangQue extends NaturalLanguage {
  const LangQue()
      : super(
          code: "QUE",
          codeShort: "QU",
          family: const Quechuan(),
          name: "Quechua",
          namesNative: const ["Runa Simi", "Kichwa"],
        );
}

class LangRoh extends NaturalLanguage {
  const LangRoh()
      : super(
          code: "ROH",
          codeShort: "RM",
          name: "Romansh",
          namesNative: const ["rumantsch grischun"],
        );
}

class LangRun extends NaturalLanguage {
  const LangRun()
      : super(
          code: "RUN",
          codeShort: "RN",
          family: const NigerCongo(),
          name: "Kirundi",
          namesNative: const ["Ikirundi"],
        );
}

class LangRon extends NaturalLanguage {
  const LangRon()
      : super(
          code: "RON",
          codeShort: "RO",
          bibliographicCode: "RUM",
          name: "Romanian",
          namesNative: const ["Română"],
        );
}

class LangRus extends NaturalLanguage {
  const LangRus()
      : super(
          code: "RUS",
          codeShort: "RU",
          name: "Russian",
          namesNative: const ["Русский"],
        );
}

class LangSan extends NaturalLanguage {
  const LangSan()
      : super(
          code: "SAN",
          codeShort: "SA",
          name: "Sanskrit (Saṁskṛta)",
          namesNative: const ["संस्कृतम्"],
        );
}

class LangSrd extends NaturalLanguage {
  const LangSrd()
      : super(
          code: "SRD",
          codeShort: "SC",
          name: "Sardinian",
          namesNative: const ["sardu"],
        );
}

class LangSnd extends NaturalLanguage {
  const LangSnd()
      : super(
          code: "SND",
          codeShort: "SD",
          name: "Sindhi",
          namesNative: const ["सिन्धी, سنڌي، سندھی‎"],
          isRightToLeft: true,
        );
}

class LangSme extends NaturalLanguage {
  const LangSme()
      : super(
          code: "SME",
          codeShort: "SE",
          family: const Uralic(),
          name: "Northern Sami",
          namesNative: const ["Davvisámegiella"],
        );
}

class LangSag extends NaturalLanguage {
  const LangSag()
      : super(
          code: "SAG",
          codeShort: "SG",
          family: const Creole(),
          name: "Sango",
          namesNative: const ["yângâ tî sängö"],
        );
}

class LangSin extends NaturalLanguage {
  const LangSin()
      : super(
          code: "SIN",
          codeShort: "SI",
          name: "Sinhalese (Sinhala)",
          namesNative: const ["සිංහල"],
        );
}

class LangSlk extends NaturalLanguage {
  const LangSlk()
      : super(
          code: "SLK",
          codeShort: "SK",
          bibliographicCode: "SLO",
          name: "Slovak",
          namesNative: const ["slovenčina"],
        );
}

class LangSlv extends NaturalLanguage {
  const LangSlv()
      : super(
          code: "SLV",
          codeShort: "SL",
          name: "Slovene",
          namesNative: const ["slovenščina"],
        );
}

class LangSmo extends NaturalLanguage {
  const LangSmo()
      : super(
          code: "SMO",
          codeShort: "SM",
          family: const Austronesian(),
          name: "Samoan",
          namesNative: const ["gagana fa'a Samoa"],
        );
}

class LangSna extends NaturalLanguage {
  const LangSna()
      : super(
          code: "SNA",
          codeShort: "SN",
          family: const NigerCongo(),
          name: "Shona",
          namesNative: const ["chiShona"],
        );
}

class LangSom extends NaturalLanguage {
  const LangSom()
      : super(
          code: "SOM",
          codeShort: "SO",
          family: const AfroAsiatic(),
          name: "Somali",
          namesNative: const ["Soomaaliga"],
        );
}

class LangSpa extends NaturalLanguage {
  const LangSpa()
      : super(
          code: "SPA",
          codeShort: "ES",
          name: "Spanish",
          namesNative: const ["Español"],
        );
}

class LangSqi extends NaturalLanguage {
  const LangSqi()
      : super(
          code: "SQI",
          codeShort: "SQ",
          bibliographicCode: "ALB",
          name: "Albanian",
          namesNative: const ["Shqip"],
        );
}

class LangSrp extends NaturalLanguage {
  const LangSrp()
      : super(
          code: "SRP",
          codeShort: "SR",
          name: "Serbian",
          namesNative: const ["српски језик"],
        );
}

class LangSsw extends NaturalLanguage {
  const LangSsw()
      : super(
          code: "SSW",
          codeShort: "SS",
          family: const NigerCongo(),
          name: "Swati",
          namesNative: const ["SiSwati"],
        );
}

class LangSot extends NaturalLanguage {
  const LangSot()
      : super(
          code: "SOT",
          codeShort: "ST",
          family: const NigerCongo(),
          name: "Southern Sotho",
          namesNative: const ["Sesotho"],
        );
}

class LangSun extends NaturalLanguage {
  const LangSun()
      : super(
          code: "SUN",
          codeShort: "SU",
          family: const Austronesian(),
          name: "Sundanese",
          namesNative: const ["Basa Sunda"],
        );
}

class LangSwe extends NaturalLanguage {
  const LangSwe()
      : super(
          code: "SWE",
          codeShort: "SV",
          name: "Swedish",
          namesNative: const ["svenska"],
        );
}

class LangSwa extends NaturalLanguage {
  const LangSwa()
      : super(
          code: "SWA",
          codeShort: "SW",
          family: const NigerCongo(),
          name: "Swahili",
          namesNative: const ["Kiswahili"],
        );
}

class LangTam extends NaturalLanguage {
  const LangTam()
      : super(
          code: "TAM",
          codeShort: "TA",
          family: const Dravidian(),
          name: "Tamil",
          namesNative: const ["தமிழ்"],
        );
}

class LangTel extends NaturalLanguage {
  const LangTel()
      : super(
          code: "TEL",
          codeShort: "TE",
          family: const Dravidian(),
          name: "Telugu",
          namesNative: const ["తెలుగు"],
        );
}

class LangTgk extends NaturalLanguage {
  const LangTgk()
      : super(
          code: "TGK",
          codeShort: "TG",
          name: "Tajik",
          namesNative: const ["тоҷикӣ", "تاجیکی‎", "toçikī"],
        );
}

class LangTha extends NaturalLanguage {
  const LangTha()
      : super(
          code: "THA",
          codeShort: "TH",
          family: const TaiKadai(),
          name: "Thai",
          namesNative: const ["ไทย"],
        );
}

class LangTir extends NaturalLanguage {
  const LangTir()
      : super(
          code: "TIR",
          codeShort: "TI",
          family: const AfroAsiatic(),
          name: "Tigrinya",
          namesNative: const ["ትግርኛ"],
        );
}

class LangTuk extends NaturalLanguage {
  const LangTuk()
      : super(
          code: "TUK",
          codeShort: "TK",
          family: const Turkic(),
          name: "Turkmen",
          namesNative: const ["Türkmen", "Түркмен"],
        );
}

class LangTgl extends NaturalLanguage {
  const LangTgl()
      : super(
          code: "TGL",
          codeShort: "TL",
          family: const Austronesian(),
          name: "Tagalog",
          namesNative: const ["Wikang Tagalog"],
        );
}

class LangTsn extends NaturalLanguage {
  const LangTsn()
      : super(
          code: "TSN",
          codeShort: "TN",
          family: const NigerCongo(),
          name: "Tswana",
          namesNative: const ["Setswana"],
        );
}

class LangTon extends NaturalLanguage {
  const LangTon()
      : super(
          code: "TON",
          codeShort: "TO",
          family: const Austronesian(),
          name: "Tonga (Tonga Islands)",
          namesNative: const ["faka Tonga"],
        );
}

class LangTur extends NaturalLanguage {
  const LangTur()
      : super(
          code: "TUR",
          codeShort: "TR",
          family: const Turkic(),
          name: "Turkish",
          namesNative: const ["Türkçe"],
        );
}

class LangTso extends NaturalLanguage {
  const LangTso()
      : super(
          code: "TSO",
          codeShort: "TS",
          family: const NigerCongo(),
          name: "Tsonga",
          namesNative: const ["Xitsonga"],
        );
}

class LangTat extends NaturalLanguage {
  const LangTat()
      : super(
          code: "TAT",
          codeShort: "TT",
          family: const Turkic(),
          name: "Tatar",
          namesNative: const ["татар теле", "tatar tele"],
        );
}

class LangTwi extends NaturalLanguage {
  const LangTwi()
      : super(
          code: "TWI",
          codeShort: "TW",
          family: const NigerCongo(),
          name: "Twi",
          namesNative: const ["Twi"],
        );
}

class LangTah extends NaturalLanguage {
  const LangTah()
      : super(
          code: "TAH",
          codeShort: "TY",
          family: const Austronesian(),
          name: "Tahitian",
          namesNative: const ["Reo Tahiti"],
        );
}

class LangUig extends NaturalLanguage {
  const LangUig()
      : super(
          code: "UIG",
          codeShort: "UG",
          family: const Turkic(),
          name: "Uyghur",
          namesNative: const ["ئۇيغۇرچە‎", "Uyghurche"],
        );
}

class LangUkr extends NaturalLanguage {
  const LangUkr()
      : super(
          code: "UKR",
          codeShort: "UK",
          name: "Ukrainian",
          namesNative: const ["Українська"],
        );
}

class LangUrd extends NaturalLanguage {
  const LangUrd()
      : super(
          code: "URD",
          codeShort: "UR",
          name: "Urdu",
          namesNative: const ["اردو"],
          isRightToLeft: true,
        );
}

class LangUzb extends NaturalLanguage {
  const LangUzb()
      : super(
          code: "UZB",
          codeShort: "UZ",
          family: const Turkic(),
          name: "Uzbek",
          namesNative: const ["Ўзбек", "أۇزبېك‎", "Oʻzbek"],
        );
}

class LangVen extends NaturalLanguage {
  const LangVen()
      : super(
          code: "VEN",
          codeShort: "VE",
          family: const NigerCongo(),
          name: "Venda",
          namesNative: const ["Tshivenḓa"],
        );
}

class LangVie extends NaturalLanguage {
  const LangVie()
      : super(
          code: "VIE",
          codeShort: "VI",
          family: const Austroasiatic(),
          name: "Vietnamese",
          namesNative: const ["Tiếng Việt"],
        );
}

class LangVol extends NaturalLanguage {
  const LangVol()
      : super(
          code: "VOL",
          codeShort: "VO",
          family: const Constructed(),
          name: "Volapük",
          namesNative: const ["Volapük"],
        );
}

class LangWln extends NaturalLanguage {
  const LangWln()
      : super(
          code: "WLN",
          codeShort: "WA",
          name: "Walloon",
          namesNative: const ["walon"],
        );
}

class LangWol extends NaturalLanguage {
  const LangWol()
      : super(
          code: "WOL",
          codeShort: "WO",
          family: const NigerCongo(),
          name: "Wolof",
          namesNative: const ["Wollof"],
        );
}

class LangXho extends NaturalLanguage {
  const LangXho()
      : super(
          code: "XHO",
          codeShort: "XH",
          family: const NigerCongo(),
          name: "Xhosa",
          namesNative: const ["isiXhosa"],
        );
}

class LangYid extends NaturalLanguage {
  const LangYid()
      : super(
          code: "YID",
          codeShort: "YI",
          name: "Yiddish",
          namesNative: const ["ייִדיש"],
          isRightToLeft: true,
        );
}

class LangYor extends NaturalLanguage {
  const LangYor()
      : super(
          code: "YOR",
          codeShort: "YO",
          family: const NigerCongo(),
          name: "Yoruba",
          namesNative: const ["Yorùbá"],
        );
}

class LangZha extends NaturalLanguage {
  const LangZha()
      : super(
          code: "ZHA",
          codeShort: "ZA",
          family: const TaiKadai(),
          name: "Zhuang (Chuang)",
          namesNative: const ["Saɯ cueŋƅ", "Saw cuengh"],
        );
}

class LangZho extends NaturalLanguage {
  const LangZho()
      : super(
          code: "ZHO",
          codeShort: "ZH",
          bibliographicCode: "CHI",
          family: const SinoTibetan(),
          name: "Chinese",
          namesNative: const ["中文 (Zhōngwén)", "汉语", "漢語"],
        );
}

class LangZul extends NaturalLanguage {
  const LangZul()
      : super(
          code: "ZUL",
          codeShort: "ZU",
          family: const NigerCongo(),
          name: "Zulu",
          namesNative: const ["isiZulu"],
        );
}

// TODO: Consider add those langs without ISO 639-1 codes:
// LangBwg(),
// LangLoz(),
// LangKwn(),
// LangKck(),
// LangKhi(),
// LangNdc(),
// LangToi(),
// LangZib(),
// LangTkl(),
// LangPau(),
// LangNso(),
// LangSmi(),
// LangPih(),
// LangCal(),
// LangArc(),
// LangPap(),
// LangPap(),
// LangBzj(),
// LangJam(),
// LangTpi(),
// LangPov(),
// LangNiu(),
// LangCrs(),
// LangBer(),
// LangMey(),
// LangGil(),
// LangNrf(),
// LangNrf(),
// LangZdj(),
// LangTvl(),
// LangPrs(),
// LangTet(),
// LangBer()
// LangRar()
// LangLua()
// LangPap(),
// LangHgm(),
// LangHif().
