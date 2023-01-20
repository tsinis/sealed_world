// ignore_for_file: avoid-non-ascii-symbols

import "../model/language/language.dart";
import "natural_language_families.dart";

// ignore: prefer-match-file-name, not necessary for the languages data.
class LangAar extends NaturalLanguage {
  const LangAar()
      : super(
          code: "aa",
          terminologicalCode: "aar",
          family: const AfroAsiatic(),
          name: "Afar",
          nativeNames: const ["Afaraf"],
        );
}

class LangAbk extends NaturalLanguage {
  const LangAbk()
      : super(
          code: "ab",
          terminologicalCode: "abk",
          family: const NorthwestCaucasian(),
          name: "Abkhaz",
          nativeNames: const ["аҧсуа бызшәа", "аҧсшәа"],
        );
}

class LangAve extends NaturalLanguage {
  const LangAve()
      : super(
          code: "ae",
          terminologicalCode: "ave",
          name: "Avestan",
          nativeNames: const ["avesta"],
        );
}

class LangAfr extends NaturalLanguage {
  const LangAfr()
      : super(
          code: "af",
          terminologicalCode: "afr",
          name: "Afrikaans",
          nativeNames: const ["Afrikaans"],
        );
}

class LangAka extends NaturalLanguage {
  const LangAka()
      : super(
          code: "ak",
          terminologicalCode: "aka",
          family: const NigerCongo(),
          name: "Akan",
          nativeNames: const ["Akan"],
        );
}

class LangAmh extends NaturalLanguage {
  const LangAmh()
      : super(
          code: "am",
          terminologicalCode: "amh",
          family: const AfroAsiatic(),
          name: "Amharic",
          nativeNames: const ["አማርኛ"],
        );
}

class LangArg extends NaturalLanguage {
  const LangArg()
      : super(
          code: "an",
          terminologicalCode: "arg",
          name: "Aragonese",
          nativeNames: const ["aragonés"],
        );
}

class LangAra extends NaturalLanguage {
  const LangAra()
      : super(
          code: "ar",
          terminologicalCode: "ara",
          family: const AfroAsiatic(),
          name: "Arabic",
          nativeNames: const ["العربية"],
          isRightToLeft: true,
        );
}

class LangAsm extends NaturalLanguage {
  const LangAsm()
      : super(
          code: "as",
          terminologicalCode: "asm",
          name: "Assamese",
          nativeNames: const ["অসমীয়া"],
        );
}

class LangAva extends NaturalLanguage {
  const LangAva()
      : super(
          code: "av",
          terminologicalCode: "ava",
          family: const NortheastCaucasian(),
          name: "Avaric",
          nativeNames: const ["авар мацӀ", "магӀарул мацӀ"],
        );
}

class LangAym extends NaturalLanguage {
  const LangAym()
      : super(
          code: "ay",
          terminologicalCode: "aym",
          family: const Aymaran(),
          name: "Aymara",
          nativeNames: const ["aymar aru"],
        );
}

class LangAze extends NaturalLanguage {
  const LangAze()
      : super(
          code: "az",
          terminologicalCode: "aze",
          family: const Turkic(),
          name: "Azerbaijani",
          nativeNames: const ["azərbaycan dili"],
        );
}

class LangBak extends NaturalLanguage {
  const LangBak()
      : super(
          code: "ba",
          terminologicalCode: "bak",
          family: const Turkic(),
          name: "Bashkir",
          nativeNames: const ["башҡорт теле"],
        );
}

class LangBel extends NaturalLanguage {
  const LangBel()
      : super(
          code: "be",
          terminologicalCode: "bel",
          name: "Belarusian",
          nativeNames: const ["беларуская мова"],
        );
}

class LangBul extends NaturalLanguage {
  const LangBul()
      : super(
          code: "bg",
          terminologicalCode: "bul",
          name: "Bulgarian",
          nativeNames: const ["български език"],
        );
}

class LangBih extends NaturalLanguage {
  const LangBih()
      : super(
          code: "bh",
          terminologicalCode: "bih",
          name: "Bihari",
          nativeNames: const ["भोजपुरी"],
        );
}

class LangBis extends NaturalLanguage {
  const LangBis()
      : super(
          code: "bi",
          terminologicalCode: "bis",
          family: const Creole(),
          name: "Bislama",
          nativeNames: const ["Bislama"],
        );
}

class LangBam extends NaturalLanguage {
  const LangBam()
      : super(
          code: "bm",
          terminologicalCode: "bam",
          family: const NigerCongo(),
          name: "Bambara",
          nativeNames: const ["bamanankan"],
        );
}

class LangBen extends NaturalLanguage {
  const LangBen()
      : super(
          code: "bn",
          terminologicalCode: "ben",
          name: "Bengali (Bangla)",
          nativeNames: const ["বাংলা"],
        );
}

class LangBod extends NaturalLanguage {
  const LangBod()
      : super(
          code: "bo",
          terminologicalCode: "bod",
          bibliographicCode: "tib",
          family: const SinoTibetan(),
          name: "Tibetan Standard",
          nativeNames: const ["བོད་ཡིག"],
        );
}

class LangBre extends NaturalLanguage {
  const LangBre()
      : super(
          code: "br",
          terminologicalCode: "bre",
          name: "Breton",
          nativeNames: const ["brezhoneg"],
        );
}

class LangBos extends NaturalLanguage {
  const LangBos()
      : super(
          code: "bs",
          terminologicalCode: "bos",
          name: "Bosnian",
          nativeNames: const ["bosanski jezik"],
        );
}

class LangCat extends NaturalLanguage {
  const LangCat()
      : super(
          code: "ca",
          terminologicalCode: "cat",
          name: "Catalan",
          nativeNames: const ["català"],
        );
}

class LangChe extends NaturalLanguage {
  const LangChe()
      : super(
          code: "ce",
          terminologicalCode: "che",
          family: const NortheastCaucasian(),
          name: "Chechen",
          nativeNames: const ["нохчийн мотт"],
        );
}

class LangCha extends NaturalLanguage {
  const LangCha()
      : super(
          code: "ch",
          terminologicalCode: "cha",
          family: const Austronesian(),
          name: "Chamorro",
          nativeNames: const ["Chamoru"],
        );
}

class LangCos extends NaturalLanguage {
  const LangCos()
      : super(
          code: "co",
          terminologicalCode: "cos",
          name: "Corsican",
          nativeNames: const ["corsu", "lingua corsa"],
        );
}

class LangCre extends NaturalLanguage {
  const LangCre()
      : super(
          code: "cr",
          terminologicalCode: "cre",
          family: const Algonquian(),
          name: "Cree",
          nativeNames: const ["ᓀᐦᐃᔭᐍᐏᐣ"],
        );
}

class LangCes extends NaturalLanguage {
  const LangCes()
      : super(
          code: "cs",
          terminologicalCode: "ces",
          bibliographicCode: "cze",
          name: "Czech",
          nativeNames: const ["čeština"],
        );
}

class LangChu extends NaturalLanguage {
  const LangChu()
      : super(
          code: "cu",
          terminologicalCode: "chu",
          name: "(Old) Church Slavonic",
          nativeNames: const ["ѩзыкъ словѣньскъ"],
        );
}

class LangChv extends NaturalLanguage {
  const LangChv()
      : super(
          code: "cv",
          terminologicalCode: "chv",
          family: const Turkic(),
          name: "Chuvash",
          nativeNames: const ["чӑваш чӗлхи"],
        );
}

class LangCor extends NaturalLanguage {
  const LangCor()
      : super(
          code: "kw",
          terminologicalCode: "cor",
          name: "Cornish",
          nativeNames: const ["Kernewek"],
        );
}

class LangCym extends NaturalLanguage {
  const LangCym()
      : super(
          code: "cy",
          terminologicalCode: "cym",
          bibliographicCode: "wel",
          name: "Welsh",
          nativeNames: const ["Cymraeg"],
        );
}

class LangDan extends NaturalLanguage {
  const LangDan()
      : super(
          code: "da",
          terminologicalCode: "dan",
          name: "Danish",
          nativeNames: const ["dansk"],
        );
}

class LangDeu extends NaturalLanguage {
  const LangDeu()
      : super(
          code: "de",
          terminologicalCode: "deu",
          bibliographicCode: "ger",
          name: "German",
          nativeNames: const ["Deutsch"],
        );
}

class LangDiv extends NaturalLanguage {
  const LangDiv()
      : super(
          code: "dv",
          terminologicalCode: "div",
          name: "Divehi (Dhivehi/Maldivian)",
          nativeNames: const ["ދިވެހި"],
          isRightToLeft: true,
        );
}

class LangDzo extends NaturalLanguage {
  const LangDzo()
      : super(
          code: "dz",
          terminologicalCode: "dzo",
          family: const SinoTibetan(),
          name: "Dzongkha",
          nativeNames: const ["རྫོང་ཁ"],
        );
}

class LangEwe extends NaturalLanguage {
  const LangEwe()
      : super(
          code: "ee",
          terminologicalCode: "ewe",
          family: const NigerCongo(),
          name: "Ewe",
          nativeNames: const ["Eʋegbe"],
        );
}

class LangEll extends NaturalLanguage {
  const LangEll()
      : super(
          code: "el",
          terminologicalCode: "ell",
          bibliographicCode: "gre",
          name: "Greek (modern)",
          nativeNames: const ["ελληνικά"],
        );
}

class LangEng extends NaturalLanguage {
  const LangEng()
      : super(
          code: "en",
          terminologicalCode: "eng",
          name: "English",
          nativeNames: const ["English"],
        );
}

class LangEpo extends NaturalLanguage {
  const LangEpo()
      : super(
          code: "eo",
          terminologicalCode: "epo",
          family: const Constructed(),
          name: "Esperanto",
          nativeNames: const ["Esperanto"],
        );
}

class LangEst extends NaturalLanguage {
  const LangEst()
      : super(
          code: "et",
          terminologicalCode: "est",
          family: const Uralic(),
          name: "Estonian",
          nativeNames: const ["eesti", "eesti keel"],
        );
}

class LangEus extends NaturalLanguage {
  const LangEus()
      : super(
          code: "eu",
          terminologicalCode: "eus",
          bibliographicCode: "baq",
          family: const LanguageIsolate(),
          name: "Basque",
          nativeNames: const ["euskara", "euskera"],
        );
}

class LangFas extends NaturalLanguage {
  const LangFas()
      : super(
          code: "fa",
          terminologicalCode: "fas",
          bibliographicCode: "per",
          name: "Persian (Farsi)",
          nativeNames: const ["فارسی"],
          isRightToLeft: true,
        );
}

class LangFul extends NaturalLanguage {
  const LangFul()
      : super(
          code: "ff",
          terminologicalCode: "ful",
          family: const NigerCongo(),
          name: "Fula (Fulah/Pulaar/Pular)",
          nativeNames: const ["Fulfulde", "Pulaar", "Pular"],
        );
}

class LangFin extends NaturalLanguage {
  const LangFin()
      : super(
          code: "fi",
          terminologicalCode: "fin",
          family: const Uralic(),
          name: "Finnish",
          nativeNames: const ["suomi", "suomen kieli"],
        );
}

class LangFij extends NaturalLanguage {
  const LangFij()
      : super(
          code: "fj",
          terminologicalCode: "fij",
          family: const Austronesian(),
          name: "Fijian",
          nativeNames: const ["vosa Vakaviti"],
        );
}

class LangFao extends NaturalLanguage {
  const LangFao()
      : super(
          code: "fo",
          terminologicalCode: "fao",
          name: "Faroese",
          nativeNames: const ["føroyskt"],
        );
}

class LangFra extends NaturalLanguage {
  const LangFra()
      : super(
          code: "fr",
          terminologicalCode: "fra",
          bibliographicCode: "fre",
          name: "French",
          nativeNames: const ["français", "langue française"],
        );
}

class LangFry extends NaturalLanguage {
  const LangFry()
      : super(
          code: "fy",
          terminologicalCode: "fry",
          name: "Western Frisian",
          nativeNames: const ["Frysk"],
        );
}

class LangGle extends NaturalLanguage {
  const LangGle()
      : super(
          code: "ga",
          terminologicalCode: "gle",
          name: "Irish",
          nativeNames: const ["Gaeilge"],
        );
}

class LangGla extends NaturalLanguage {
  const LangGla()
      : super(
          code: "gd",
          terminologicalCode: "gla",
          name: "(Scottish) Gaelic",
          nativeNames: const ["Gàidhlig"],
        );
}

class LangGlg extends NaturalLanguage {
  const LangGlg()
      : super(
          code: "gl",
          terminologicalCode: "glg",
          name: "Galician",
          nativeNames: const ["galego"],
        );
}

class LangGrn extends NaturalLanguage {
  const LangGrn()
      : super(
          code: "gn",
          terminologicalCode: "grn",
          family: const Tupian(),
          name: "Guaraní",
          nativeNames: const ["Avañe'ẽ"],
        );
}

class LangGuj extends NaturalLanguage {
  const LangGuj()
      : super(
          code: "gu",
          terminologicalCode: "guj",
          name: "Gujarati",
          nativeNames: const ["ગુજરાતી"],
        );
}

class LangGlv extends NaturalLanguage {
  const LangGlv()
      : super(
          code: "gv",
          terminologicalCode: "glv",
          name: "Manx",
          nativeNames: const ["Gaelg", "Gailck"],
        );
}

class LangHau extends NaturalLanguage {
  const LangHau()
      : super(
          code: "ha",
          terminologicalCode: "hau",
          family: const AfroAsiatic(),
          name: "Hausa",
          nativeNames: const ["(Hausa) هَوُسَ"],
          isRightToLeft: true,
        );
}

class LangHeb extends NaturalLanguage {
  const LangHeb()
      : super(
          code: "he",
          terminologicalCode: "heb",
          family: const AfroAsiatic(),
          name: "Hebrew (modern)",
          nativeNames: const ["עברית"],
          isRightToLeft: true,
        );
}

class LangHin extends NaturalLanguage {
  const LangHin()
      : super(
          code: "hi",
          terminologicalCode: "hin",
          name: "Hindi",
          nativeNames: const ["हिन्दी", "हिंदी"],
        );
}

class LangHmo extends NaturalLanguage {
  const LangHmo()
      : super(
          code: "ho",
          terminologicalCode: "hmo",
          family: const Austronesian(),
          name: "Hiri Motu",
          nativeNames: const ["Hiri Motu"],
        );
}

class LangHrv extends NaturalLanguage {
  const LangHrv()
      : super(
          code: "hr",
          terminologicalCode: "hrv",
          name: "Croatian",
          nativeNames: const ["hrvatski jezik"],
        );
}

class LangHat extends NaturalLanguage {
  const LangHat()
      : super(
          code: "ht",
          terminologicalCode: "hat",
          family: const Creole(),
          name: "Haitian (Haitian Creole)",
          nativeNames: const ["Kreyòl ayisyen"],
        );
}

class LangHun extends NaturalLanguage {
  const LangHun()
      : super(
          code: "hu",
          terminologicalCode: "hun",
          family: const Uralic(),
          name: "Hungarian",
          nativeNames: const ["magyar"],
        );
}

class LangHye extends NaturalLanguage {
  const LangHye()
      : super(
          code: "hy",
          terminologicalCode: "hye",
          bibliographicCode: "arm",
          name: "Armenian",
          nativeNames: const ["Հայերեն"],
        );
}

class LangHer extends NaturalLanguage {
  const LangHer()
      : super(
          code: "hz",
          terminologicalCode: "her",
          family: const NigerCongo(),
          name: "Herero",
          nativeNames: const ["Otjiherero"],
        );
}

class LangIna extends NaturalLanguage {
  const LangIna()
      : super(
          code: "ia",
          terminologicalCode: "ina",
          family: const Constructed(),
          name: "Interlingua",
          nativeNames: const ["Interlingua"],
        );
}

class LangInd extends NaturalLanguage {
  const LangInd()
      : super(
          code: "id",
          terminologicalCode: "ind",
          family: const Austronesian(),
          name: "Indonesian",
          nativeNames: const ["Bahasa Indonesia"],
        );
}

class LangIle extends NaturalLanguage {
  const LangIle()
      : super(
          code: "ie",
          terminologicalCode: "ile",
          family: const Constructed(),
          name: "Interlingue",
          nativeNames: const ["Interlingue", "Occidental"],
        );
}

class LangIbo extends NaturalLanguage {
  const LangIbo()
      : super(
          code: "ig",
          terminologicalCode: "ibo",
          family: const NigerCongo(),
          name: "Igbo",
          nativeNames: const ["Asụsụ Igbo"],
        );
}

class LangIii extends NaturalLanguage {
  const LangIii()
      : super(
          code: "ii",
          terminologicalCode: "iii",
          family: const SinoTibetan(),
          name: "Nuosu",
          nativeNames: const ["ꆈꌠ꒿ Nuosuhxop"],
        );
}

class LangIpk extends NaturalLanguage {
  const LangIpk()
      : super(
          code: "ik",
          terminologicalCode: "ipk",
          family: const EskimoAleut(),
          name: "Inupiaq",
          nativeNames: const ["Iñupiaq", "Iñupiatun"],
        );
}

class LangIdo extends NaturalLanguage {
  const LangIdo()
      : super(
          code: "io",
          terminologicalCode: "ido",
          family: const Constructed(),
          name: "Ido",
          nativeNames: const ["Ido"],
        );
}

class LangIsl extends NaturalLanguage {
  const LangIsl()
      : super(
          code: "is",
          terminologicalCode: "isl",
          bibliographicCode: "ice",
          name: "Icelandic",
          nativeNames: const ["Íslenska"],
        );
}

class LangIta extends NaturalLanguage {
  const LangIta()
      : super(
          code: "it",
          terminologicalCode: "ita",
          name: "Italian",
          nativeNames: const ["Italiano"],
        );
}

class LangIku extends NaturalLanguage {
  const LangIku()
      : super(
          code: "iu",
          terminologicalCode: "iku",
          family: const EskimoAleut(),
          name: "Inuktitut",
          nativeNames: const ["ᐃᓄᒃᑎᑐᑦ"],
        );
}

class LangJpn extends NaturalLanguage {
  const LangJpn()
      : super(
          code: "ja",
          terminologicalCode: "jpn",
          family: const Japonic(),
          name: "Japanese",
          nativeNames: const ["日本語 (にほんご)"],
        );
}

class LangJav extends NaturalLanguage {
  const LangJav()
      : super(
          code: "jv",
          terminologicalCode: "jav",
          family: const Austronesian(),
          name: "Javanese",
          nativeNames: const ["ꦧꦱꦗꦮ", "Basa Jawa"],
        );
}

class LangKat extends NaturalLanguage {
  const LangKat()
      : super(
          code: "ka",
          terminologicalCode: "kat",
          bibliographicCode: "geo",
          family: const SouthCaucasian(),
          name: "Georgian",
          nativeNames: const ["ქართული"],
        );
}

class LangKon extends NaturalLanguage {
  const LangKon()
      : super(
          code: "kg",
          terminologicalCode: "kon",
          family: const NigerCongo(),
          name: "Kongo",
          nativeNames: const ["Kikongo"],
        );
}

class LangKik extends NaturalLanguage {
  const LangKik()
      : super(
          code: "ki",
          terminologicalCode: "kik",
          family: const NigerCongo(),
          name: "Kikuyu (Gikuyu)",
          nativeNames: const ["Gĩkũyũ"],
        );
}

class LangKua extends NaturalLanguage {
  const LangKua()
      : super(
          code: "kj",
          terminologicalCode: "kua",
          family: const NigerCongo(),
          name: "Kwanyama (Kuanyama)",
          nativeNames: const ["Kuanyama"],
        );
}

class LangKaz extends NaturalLanguage {
  const LangKaz()
      : super(
          code: "kk",
          terminologicalCode: "kaz",
          family: const Turkic(),
          name: "Kazakh",
          nativeNames: const ["қазақ тілі"],
        );
}

class LangKal extends NaturalLanguage {
  const LangKal()
      : super(
          code: "kl",
          terminologicalCode: "kal",
          family: const EskimoAleut(),
          name: "Kalaallisut (Greenlandic)",
          nativeNames: const ["kalaallisut", "kalaallit oqaasii"],
        );
}

class LangKin extends NaturalLanguage {
  const LangKin()
      : super(
          code: "rw",
          terminologicalCode: "kin",
          family: const NigerCongo(),
          name: "Kinyarwanda",
          nativeNames: const ["Ikinyarwanda"],
        );
}

class LangKhm extends NaturalLanguage {
  const LangKhm()
      : super(
          code: "km",
          terminologicalCode: "khm",
          family: const Austroasiatic(),
          name: "Khmer",
          nativeNames: const ["ខ្មែរ", "ខេមរភាសា", "ភាសាខ្មែរ"],
        );
}

class LangKan extends NaturalLanguage {
  const LangKan()
      : super(
          code: "kn",
          terminologicalCode: "kan",
          family: const Dravidian(),
          name: "Kannada",
          nativeNames: const ["ಕನ್ನಡ"],
        );
}

class LangKor extends NaturalLanguage {
  const LangKor()
      : super(
          code: "ko",
          terminologicalCode: "kor",
          family: const Koreanic(),
          name: "Korean",
          nativeNames: const ["한국어"],
        );
}

class LangKau extends NaturalLanguage {
  const LangKau()
      : super(
          code: "kr",
          terminologicalCode: "kau",
          family: const NiloSaharan(),
          name: "Kanuri",
          nativeNames: const ["Kanuri"],
        );
}

class LangKas extends NaturalLanguage {
  const LangKas()
      : super(
          code: "ks",
          terminologicalCode: "kas",
          name: "Kashmiri",
          nativeNames: const ["कश्मीरी", "كشميري‎"],
          isRightToLeft: true,
        );
}

class LangKur extends NaturalLanguage {
  const LangKur()
      : super(
          code: "ku",
          terminologicalCode: "kur",
          name: "Kurdish",
          nativeNames: const ["Kurdî", "كوردی‎"],
          isRightToLeft: true,
        );
}

class LangKom extends NaturalLanguage {
  const LangKom()
      : super(
          code: "kv",
          terminologicalCode: "kom",
          family: const Uralic(),
          name: "Komi",
          nativeNames: const ["коми кыв"],
        );
}

class LangKir extends NaturalLanguage {
  const LangKir()
      : super(
          code: "ky",
          terminologicalCode: "kir",
          family: const Turkic(),
          name: "Kyrgyz",
          nativeNames: const ["Кыргызча", "Кыргыз тили"],
        );
}

class LangLat extends NaturalLanguage {
  const LangLat()
      : super(
          code: "la",
          terminologicalCode: "lat",
          name: "Latin",
          nativeNames: const ["latine", "lingua latina"],
        );
}

class LangLtz extends NaturalLanguage {
  const LangLtz()
      : super(
          code: "lb",
          terminologicalCode: "ltz",
          name: "Luxembourgish (Letzeburgesch)",
          nativeNames: const ["Lëtzebuergesch"],
        );
}

class LangLug extends NaturalLanguage {
  const LangLug()
      : super(
          code: "lg",
          terminologicalCode: "lug",
          family: const NigerCongo(),
          name: "Ganda",
          nativeNames: const ["Luganda"],
        );
}

class LangLim extends NaturalLanguage {
  const LangLim()
      : super(
          code: "li",
          terminologicalCode: "lim",
          name: "Limburgish (Limburgan/Limburger)",
          nativeNames: const ["Limburgs"],
        );
}

class LangLin extends NaturalLanguage {
  const LangLin()
      : super(
          code: "ln",
          terminologicalCode: "lin",
          family: const NigerCongo(),
          name: "Lingala",
          nativeNames: const ["Lingála"],
        );
}

class LangLao extends NaturalLanguage {
  const LangLao()
      : super(
          code: "lo",
          terminologicalCode: "lao",
          family: const TaiKadai(),
          name: "Lao",
          nativeNames: const ["ພາສາລາວ"],
        );
}

class LangLit extends NaturalLanguage {
  const LangLit()
      : super(
          code: "lt",
          terminologicalCode: "lit",
          name: "Lithuanian",
          nativeNames: const ["lietuvių kalba"],
        );
}

class LangLub extends NaturalLanguage {
  const LangLub()
      : super(
          code: "lu",
          terminologicalCode: "lub",
          family: const NigerCongo(),
          name: "Luba-Katanga",
          nativeNames: const ["Tshiluba"],
        );
}

class LangLav extends NaturalLanguage {
  const LangLav()
      : super(
          code: "lv",
          terminologicalCode: "lav",
          name: "Latvian",
          nativeNames: const ["latviešu valoda"],
        );
}

class LangMlg extends NaturalLanguage {
  const LangMlg()
      : super(
          code: "mg",
          terminologicalCode: "mlg",
          family: const Austronesian(),
          name: "Malagasy",
          nativeNames: const ["fiteny malagasy"],
        );
}

class LangMah extends NaturalLanguage {
  const LangMah()
      : super(
          code: "mh",
          terminologicalCode: "mah",
          family: const Austronesian(),
          name: "Marshallese",
          nativeNames: const ["Kajin M̧ajeļ"],
        );
}

class LangMri extends NaturalLanguage {
  const LangMri()
      : super(
          code: "mi",
          terminologicalCode: "mri",
          bibliographicCode: "mao",
          family: const Austronesian(),
          name: "Māori",
          nativeNames: const ["te reo Māori"],
        );
}

class LangMkd extends NaturalLanguage {
  const LangMkd()
      : super(
          code: "mk",
          terminologicalCode: "mkd",
          bibliographicCode: "mac",
          name: "Macedonian",
          nativeNames: const ["македонски јазик"],
        );
}

class LangMal extends NaturalLanguage {
  const LangMal()
      : super(
          code: "ml",
          terminologicalCode: "mal",
          family: const Dravidian(),
          name: "Malayalam",
          nativeNames: const ["മലയാളം"],
        );
}

class LangMon extends NaturalLanguage {
  const LangMon()
      : super(
          code: "mn",
          terminologicalCode: "mon",
          family: const Mongolic(),
          name: "Mongolian",
          nativeNames: const ["Монгол хэл"],
        );
}

class LangMar extends NaturalLanguage {
  const LangMar()
      : super(
          code: "mr",
          terminologicalCode: "mar",
          name: "Marathi (Marāṭhī)",
          nativeNames: const ["मराठी"],
        );
}

class LangMsa extends NaturalLanguage {
  const LangMsa()
      : super(
          code: "ms",
          terminologicalCode: "msa",
          bibliographicCode: "may",
          family: const Austronesian(),
          name: "Malay",
          nativeNames: const ["bahasa Melayu", "بهاس ملايو‎"],
        );
}

class LangMlt extends NaturalLanguage {
  const LangMlt()
      : super(
          code: "mt",
          terminologicalCode: "mlt",
          family: const AfroAsiatic(),
          name: "Maltese",
          nativeNames: const ["Malti"],
        );
}

class LangMya extends NaturalLanguage {
  const LangMya()
      : super(
          code: "my",
          terminologicalCode: "mya",
          bibliographicCode: "bur",
          family: const SinoTibetan(),
          name: "Burmese",
          nativeNames: const ["ဗမာစာ"],
        );
}

class LangNau extends NaturalLanguage {
  const LangNau()
      : super(
          code: "na",
          terminologicalCode: "nau",
          family: const Austronesian(),
          name: "Nauruan",
          nativeNames: const ["Dorerin Naoero"],
        );
}

class LangNob extends NaturalLanguage {
  const LangNob()
      : super(
          code: "nb",
          terminologicalCode: "nob",
          name: "Norwegian Bokmål",
          nativeNames: const ["Norsk bokmål"],
        );
}

class LangNde extends NaturalLanguage {
  const LangNde()
      : super(
          code: "nd",
          terminologicalCode: "nde",
          family: const NigerCongo(),
          name: "Northern Ndebele",
          nativeNames: const ["isiNdebele"],
        );
}

class LangNep extends NaturalLanguage {
  const LangNep()
      : super(
          code: "ne",
          terminologicalCode: "nep",
          name: "Nepali",
          nativeNames: const ["नेपाली"],
        );
}

class LangNdo extends NaturalLanguage {
  const LangNdo()
      : super(
          code: "ng",
          terminologicalCode: "ndo",
          family: const NigerCongo(),
          name: "Ndonga",
          nativeNames: const ["Owambo"],
        );
}

class LangNld extends NaturalLanguage {
  const LangNld()
      : super(
          code: "nl",
          terminologicalCode: "nld",
          bibliographicCode: "dut",
          name: "Dutch",
          nativeNames: const ["Nederlands", "Vlaams"],
        );
}

class LangNno extends NaturalLanguage {
  const LangNno()
      : super(
          code: "nn",
          terminologicalCode: "nno",
          name: "Norwegian Nynorsk",
          nativeNames: const ["Norsk nynorsk"],
        );
}

class LangNor extends NaturalLanguage {
  const LangNor()
      : super(
          code: "no",
          terminologicalCode: "nor",
          name: "Norwegian",
          nativeNames: const ["Norsk"],
        );
}

class LangNbl extends NaturalLanguage {
  const LangNbl()
      : super(
          code: "nr",
          terminologicalCode: "nbl",
          family: const NigerCongo(),
          name: "Southern Ndebele",
          nativeNames: const ["isiNdebele"],
        );
}

class LangNav extends NaturalLanguage {
  const LangNav()
      : super(
          code: "nv",
          terminologicalCode: "nav",
          family: const DeneYeniseian(),
          name: "Navajo (Navaho)",
          nativeNames: const ["Diné bizaad"],
        );
}

class LangNya extends NaturalLanguage {
  const LangNya()
      : super(
          code: "ny",
          terminologicalCode: "nya",
          family: const NigerCongo(),
          name: "Chichewa (Chewa/Nyanja)",
          nativeNames: const ["chiCheŵa", "chinyanja"],
        );
}

class LangOci extends NaturalLanguage {
  const LangOci()
      : super(
          code: "oc",
          terminologicalCode: "oci",
          name: "Occitan",
          nativeNames: const ["occitan", "lenga d'òc"],
        );
}

class LangOji extends NaturalLanguage {
  const LangOji()
      : super(
          code: "oj",
          terminologicalCode: "oji",
          family: const Algonquian(),
          name: "Ojibwe (Ojibwa)",
          nativeNames: const ["ᐊᓂᔑᓈᐯᒧᐎᓐ"],
        );
}

class LangOrm extends NaturalLanguage {
  const LangOrm()
      : super(
          code: "om",
          terminologicalCode: "orm",
          family: const AfroAsiatic(),
          name: "Oromo",
          nativeNames: const ["Afaan Oromoo"],
        );
}

class LangOri extends NaturalLanguage {
  const LangOri()
      : super(
          code: "or",
          terminologicalCode: "ori",
          name: "Oriya",
          nativeNames: const ["ଓଡ଼ିଆ"],
        );
}

class LangOss extends NaturalLanguage {
  const LangOss()
      : super(
          code: "os",
          terminologicalCode: "oss",
          name: "Ossetian (Ossetic)",
          nativeNames: const ["ирон æвзаг"],
        );
}

class LangPan extends NaturalLanguage {
  const LangPan()
      : super(
          code: "pa",
          terminologicalCode: "pan",
          name: "(Eastern) Punjabi",
          nativeNames: const ["ਪੰਜਾਬੀ"],
        );
}

class LangPli extends NaturalLanguage {
  const LangPli()
      : super(
          code: "pi",
          terminologicalCode: "pli",
          name: "Pāli",
          nativeNames: const ["पाऴि"],
        );
}

class LangPol extends NaturalLanguage {
  const LangPol()
      : super(
          code: "pl",
          terminologicalCode: "pol",
          name: "Polish",
          nativeNames: const ["polszczyzna"],
        );
}

class LangPus extends NaturalLanguage {
  const LangPus()
      : super(
          code: "ps",
          terminologicalCode: "pus",
          name: "Pashto (Pushto)",
          nativeNames: const ["پښتو"],
          isRightToLeft: true,
        );
}

class LangPor extends NaturalLanguage {
  const LangPor()
      : super(
          code: "pt",
          terminologicalCode: "por",
          name: "Portuguese",
          nativeNames: const ["Português"],
        );
}

class LangQue extends NaturalLanguage {
  const LangQue()
      : super(
          code: "qu",
          terminologicalCode: "que",
          family: const Quechuan(),
          name: "Quechua",
          nativeNames: const ["Runa Simi", "Kichwa"],
        );
}

class LangRoh extends NaturalLanguage {
  const LangRoh()
      : super(
          code: "rm",
          terminologicalCode: "roh",
          name: "Romansh",
          nativeNames: const ["rumantsch grischun"],
        );
}

class LangRun extends NaturalLanguage {
  const LangRun()
      : super(
          code: "rn",
          terminologicalCode: "run",
          family: const NigerCongo(),
          name: "Kirundi",
          nativeNames: const ["Ikirundi"],
        );
}

class LangRon extends NaturalLanguage {
  const LangRon()
      : super(
          code: "ro",
          terminologicalCode: "ron",
          bibliographicCode: "rum",
          name: "Romanian",
          nativeNames: const ["Română"],
        );
}

class LangRus extends NaturalLanguage {
  const LangRus()
      : super(
          code: "ru",
          terminologicalCode: "rus",
          name: "Russian",
          nativeNames: const ["Русский"],
        );
}

class LangSan extends NaturalLanguage {
  const LangSan()
      : super(
          code: "sa",
          terminologicalCode: "san",
          name: "Sanskrit (Saṁskṛta)",
          nativeNames: const ["संस्कृतम्"],
        );
}

class LangSrd extends NaturalLanguage {
  const LangSrd()
      : super(
          code: "sc",
          terminologicalCode: "srd",
          name: "Sardinian",
          nativeNames: const ["sardu"],
        );
}

class LangSnd extends NaturalLanguage {
  const LangSnd()
      : super(
          code: "sd",
          terminologicalCode: "snd",
          name: "Sindhi",
          nativeNames: const ["सिन्धी, سنڌي، سندھی‎"],
          isRightToLeft: true,
        );
}

class LangSme extends NaturalLanguage {
  const LangSme()
      : super(
          code: "se",
          terminologicalCode: "sme",
          family: const Uralic(),
          name: "Northern Sami",
          nativeNames: const ["Davvisámegiella"],
        );
}

class LangSag extends NaturalLanguage {
  const LangSag()
      : super(
          code: "sg",
          terminologicalCode: "sag",
          family: const Creole(),
          name: "Sango",
          nativeNames: const ["yângâ tî sängö"],
        );
}

class LangSin extends NaturalLanguage {
  const LangSin()
      : super(
          code: "si",
          terminologicalCode: "sin",
          name: "Sinhalese (Sinhala)",
          nativeNames: const ["සිංහල"],
        );
}

class LangSlk extends NaturalLanguage {
  const LangSlk()
      : super(
          code: "sk",
          terminologicalCode: "slk",
          bibliographicCode: "slo",
          name: "Slovak",
          nativeNames: const ["slovenčina"],
        );
}

class LangSlv extends NaturalLanguage {
  const LangSlv()
      : super(
          code: "sl",
          terminologicalCode: "slv",
          name: "Slovene",
          nativeNames: const ["slovenščina"],
        );
}

class LangSmo extends NaturalLanguage {
  const LangSmo()
      : super(
          code: "sm",
          terminologicalCode: "smo",
          family: const Austronesian(),
          name: "Samoan",
          nativeNames: const ["gagana fa'a Samoa"],
        );
}

class LangSna extends NaturalLanguage {
  const LangSna()
      : super(
          code: "sn",
          terminologicalCode: "sna",
          family: const NigerCongo(),
          name: "Shona",
          nativeNames: const ["chiShona"],
        );
}

class LangSom extends NaturalLanguage {
  const LangSom()
      : super(
          code: "so",
          terminologicalCode: "som",
          family: const AfroAsiatic(),
          name: "Somali",
          nativeNames: const ["Soomaaliga"],
        );
}

class LangSpa extends NaturalLanguage {
  const LangSpa()
      : super(
          code: "es",
          terminologicalCode: "spa",
          name: "Spanish",
          nativeNames: const ["Español"],
        );
}

class LangSqi extends NaturalLanguage {
  const LangSqi()
      : super(
          code: "sq",
          terminologicalCode: "sqi",
          bibliographicCode: "alb",
          name: "Albanian",
          nativeNames: const ["Shqip"],
        );
}

class LangSrp extends NaturalLanguage {
  const LangSrp()
      : super(
          code: "sr",
          terminologicalCode: "srp",
          name: "Serbian",
          nativeNames: const ["српски језик"],
        );
}

class LangSsw extends NaturalLanguage {
  const LangSsw()
      : super(
          code: "ss",
          terminologicalCode: "ssw",
          family: const NigerCongo(),
          name: "Swati",
          nativeNames: const ["SiSwati"],
        );
}

class LangSot extends NaturalLanguage {
  const LangSot()
      : super(
          code: "st",
          terminologicalCode: "sot",
          family: const NigerCongo(),
          name: "Southern Sotho",
          nativeNames: const ["Sesotho"],
        );
}

class LangSun extends NaturalLanguage {
  const LangSun()
      : super(
          code: "su",
          terminologicalCode: "sun",
          family: const Austronesian(),
          name: "Sundanese",
          nativeNames: const ["Basa Sunda"],
        );
}

class LangSwe extends NaturalLanguage {
  const LangSwe()
      : super(
          code: "sv",
          terminologicalCode: "swe",
          name: "Swedish",
          nativeNames: const ["svenska"],
        );
}

class LangSwa extends NaturalLanguage {
  const LangSwa()
      : super(
          code: "sw",
          terminologicalCode: "swa",
          family: const NigerCongo(),
          name: "Swahili",
          nativeNames: const ["Kiswahili"],
        );
}

class LangTam extends NaturalLanguage {
  const LangTam()
      : super(
          code: "ta",
          terminologicalCode: "tam",
          family: const Dravidian(),
          name: "Tamil",
          nativeNames: const ["தமிழ்"],
        );
}

class LangTel extends NaturalLanguage {
  const LangTel()
      : super(
          code: "te",
          terminologicalCode: "tel",
          family: const Dravidian(),
          name: "Telugu",
          nativeNames: const ["తెలుగు"],
        );
}

class LangTgk extends NaturalLanguage {
  const LangTgk()
      : super(
          code: "tg",
          terminologicalCode: "tgk",
          name: "Tajik",
          nativeNames: const ["тоҷикӣ", "تاجیکی‎", "toçikī"],
        );
}

class LangTha extends NaturalLanguage {
  const LangTha()
      : super(
          code: "th",
          terminologicalCode: "tha",
          family: const TaiKadai(),
          name: "Thai",
          nativeNames: const ["ไทย"],
        );
}

class LangTir extends NaturalLanguage {
  const LangTir()
      : super(
          code: "ti",
          terminologicalCode: "tir",
          family: const AfroAsiatic(),
          name: "Tigrinya",
          nativeNames: const ["ትግርኛ"],
        );
}

class LangTuk extends NaturalLanguage {
  const LangTuk()
      : super(
          code: "tk",
          terminologicalCode: "tuk",
          family: const Turkic(),
          name: "Turkmen",
          nativeNames: const ["Türkmen", "Түркмен"],
        );
}

class LangTgl extends NaturalLanguage {
  const LangTgl()
      : super(
          code: "tl",
          terminologicalCode: "tgl",
          family: const Austronesian(),
          name: "Tagalog",
          nativeNames: const ["Wikang Tagalog"],
        );
}

class LangTsn extends NaturalLanguage {
  const LangTsn()
      : super(
          code: "tn",
          terminologicalCode: "tsn",
          family: const NigerCongo(),
          name: "Tswana",
          nativeNames: const ["Setswana"],
        );
}

class LangTon extends NaturalLanguage {
  const LangTon()
      : super(
          code: "to",
          terminologicalCode: "ton",
          family: const Austronesian(),
          name: "Tonga (Tonga Islands)",
          nativeNames: const ["faka Tonga"],
        );
}

class LangTur extends NaturalLanguage {
  const LangTur()
      : super(
          code: "tr",
          terminologicalCode: "tur",
          family: const Turkic(),
          name: "Turkish",
          nativeNames: const ["Türkçe"],
        );
}

class LangTso extends NaturalLanguage {
  const LangTso()
      : super(
          code: "ts",
          terminologicalCode: "tso",
          family: const NigerCongo(),
          name: "Tsonga",
          nativeNames: const ["Xitsonga"],
        );
}

class LangTat extends NaturalLanguage {
  const LangTat()
      : super(
          code: "tt",
          terminologicalCode: "tat",
          family: const Turkic(),
          name: "Tatar",
          nativeNames: const ["татар теле", "tatar tele"],
        );
}

class LangTwi extends NaturalLanguage {
  const LangTwi()
      : super(
          code: "tw",
          terminologicalCode: "twi",
          family: const NigerCongo(),
          name: "Twi",
          nativeNames: const ["Twi"],
        );
}

class LangTah extends NaturalLanguage {
  const LangTah()
      : super(
          code: "ty",
          terminologicalCode: "tah",
          family: const Austronesian(),
          name: "Tahitian",
          nativeNames: const ["Reo Tahiti"],
        );
}

class LangUig extends NaturalLanguage {
  const LangUig()
      : super(
          code: "ug",
          terminologicalCode: "uig",
          family: const Turkic(),
          name: "Uyghur",
          nativeNames: const ["ئۇيغۇرچە‎", "Uyghurche"],
        );
}

class LangUkr extends NaturalLanguage {
  const LangUkr()
      : super(
          code: "uk",
          terminologicalCode: "ukr",
          name: "Ukrainian",
          nativeNames: const ["Українська"],
        );
}

class LangUrd extends NaturalLanguage {
  const LangUrd()
      : super(
          code: "ur",
          terminologicalCode: "urd",
          name: "Urdu",
          nativeNames: const ["اردو"],
          isRightToLeft: true,
        );
}

class LangUzb extends NaturalLanguage {
  const LangUzb()
      : super(
          code: "uz",
          terminologicalCode: "uzb",
          family: const Turkic(),
          name: "Uzbek",
          nativeNames: const ["Ўзбек", "أۇزبېك‎", "Oʻzbek"],
        );
}

class LangVen extends NaturalLanguage {
  const LangVen()
      : super(
          code: "ve",
          terminologicalCode: "ven",
          family: const NigerCongo(),
          name: "Venda",
          nativeNames: const ["Tshivenḓa"],
        );
}

class LangVie extends NaturalLanguage {
  const LangVie()
      : super(
          code: "vi",
          terminologicalCode: "vie",
          family: const Austroasiatic(),
          name: "Vietnamese",
          nativeNames: const ["Tiếng Việt"],
        );
}

class LangVol extends NaturalLanguage {
  const LangVol()
      : super(
          code: "vo",
          terminologicalCode: "vol",
          family: const Constructed(),
          name: "Volapük",
          nativeNames: const ["Volapük"],
        );
}

class LangWln extends NaturalLanguage {
  const LangWln()
      : super(
          code: "wa",
          terminologicalCode: "wln",
          name: "Walloon",
          nativeNames: const ["walon"],
        );
}

class LangWol extends NaturalLanguage {
  const LangWol()
      : super(
          code: "wo",
          terminologicalCode: "wol",
          family: const NigerCongo(),
          name: "Wolof",
          nativeNames: const ["Wollof"],
        );
}

class LangXho extends NaturalLanguage {
  const LangXho()
      : super(
          code: "xh",
          terminologicalCode: "xho",
          family: const NigerCongo(),
          name: "Xhosa",
          nativeNames: const ["isiXhosa"],
        );
}

class LangYid extends NaturalLanguage {
  const LangYid()
      : super(
          code: "yi",
          terminologicalCode: "yid",
          name: "Yiddish",
          nativeNames: const ["ייִדיש"],
          isRightToLeft: true,
        );
}

class LangYor extends NaturalLanguage {
  const LangYor()
      : super(
          code: "yo",
          terminologicalCode: "yor",
          family: const NigerCongo(),
          name: "Yoruba",
          nativeNames: const ["Yorùbá"],
        );
}

class LangZha extends NaturalLanguage {
  const LangZha()
      : super(
          code: "za",
          terminologicalCode: "zha",
          family: const TaiKadai(),
          name: "Zhuang (Chuang)",
          nativeNames: const ["Saɯ cueŋƅ", "Saw cuengh"],
        );
}

class LangZho extends NaturalLanguage {
  const LangZho()
      : super(
          code: "zh",
          terminologicalCode: "zho",
          bibliographicCode: "chi",
          family: const SinoTibetan(),
          name: "Chinese",
          nativeNames: const ["中文 (Zhōngwén)", "汉语", "漢語"],
        );
}

class LangZul extends NaturalLanguage {
  const LangZul()
      : super(
          code: "zu",
          terminologicalCode: "zul",
          family: const NigerCongo(),
          name: "Zulu",
          nativeNames: const ["isiZulu"],
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
