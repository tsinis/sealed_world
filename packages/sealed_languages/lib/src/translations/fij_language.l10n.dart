import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 96 translations for a Fijian language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Basque
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Burmese
/// - Catalan
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - Dutch
/// - Dzongkha
/// - English
/// - Esperanto
/// - Estonian
/// - Ewe
/// - Faroese
/// - Finnish
/// - French
/// - Galician
/// - Georgian
/// - German
/// - Greek (modern)
/// - Gujarati
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Indonesian
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Northern Sami
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Ossetian (Ossetic)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Romanian
/// - Romansh
/// - Russian
/// - Serbian
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Spanish
/// - Swahili
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Yiddish
/// - Zulu.
const fijLanguageTranslations = [
  TranslatedName(LangEng(), name: "Fijian"),
  TranslatedName(LangAfr(), name: "Fidjiaans"),
  TranslatedName(LangAmh(), name: "ፊጂኛ"),
  TranslatedName(LangAra(), name: "الفيجية"),
  TranslatedName(LangAze(), name: "fici"),
  TranslatedName(LangBul(), name: "фиджийски"),
  TranslatedName(LangBen(), name: "ফিজিও"),
  TranslatedName(LangBre(), name: "fidjieg"),
  TranslatedName(LangBos(), name: "fidžijski"),
  TranslatedName(LangBos(), name: "фиджијски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "fijià"),
  TranslatedName(LangCes(), name: "fidžijština"),
  TranslatedName(LangCym(), name: "Ffijïeg"),
  TranslatedName(LangDan(), name: "fijiansk"),
  TranslatedName(LangDeu(), name: "Fidschi"),
  TranslatedName(LangDzo(), name: "ཕི་ཇི་ཡཱན་ཁ"),
  TranslatedName(LangEwe(), name: "fidzigbe"),
  TranslatedName(LangEll(), name: "Φίτζι"),
  TranslatedName(LangEpo(), name: "fiĝia"),
  TranslatedName(LangSpa(), name: "fiyiano"),
  TranslatedName(LangEst(), name: "fidži"),
  TranslatedName(LangEus(), name: "fijiera"),
  TranslatedName(LangFas(), name: "فیجیایی"),
  TranslatedName(LangFin(), name: "fidži"),
  TranslatedName(LangFao(), name: "fidjianskt"),
  TranslatedName(LangFra(), name: "fidjien"),
  TranslatedName(LangFry(), name: "Fijysk"),
  TranslatedName(LangGle(), name: "Fidsis"),
  TranslatedName(LangGla(), name: "Fìdis"),
  TranslatedName(LangGlg(), name: "fixiano"),
  TranslatedName(LangGuj(), name: "ફિજીયન"),
  TranslatedName(LangHeb(), name: "פיג׳ית"),
  TranslatedName(LangHin(), name: "फ़ीजी"),
  TranslatedName(LangHrv(), name: "fidžijski"),
  TranslatedName(LangHun(), name: "fidzsi"),
  TranslatedName(LangHye(), name: "ֆիջիերեն"),
  TranslatedName(LangInd(), name: "Fiji"),
  TranslatedName(LangIsl(), name: "fídjeyska"),
  TranslatedName(LangIta(), name: "figiano"),
  TranslatedName(LangJpn(), name: "フィジー語"),
  TranslatedName(LangKat(), name: "ფიჯი"),
  TranslatedName(LangKaz(), name: "фиджи"),
  TranslatedName(LangKhm(), name: "ហ៊្វីជី"),
  TranslatedName(LangKan(), name: "ಫಿಜಿಯನ್"),
  TranslatedName(LangKor(), name: "피지어"),
  TranslatedName(LangKas(), name: "فِجیَن"),
  TranslatedName(LangKir(), name: "фижиче"),
  TranslatedName(LangLtz(), name: "Fidschianesch"),
  TranslatedName(LangLao(), name: "ຟິຈຽນ"),
  TranslatedName(LangLit(), name: "fidžių"),
  TranslatedName(LangLav(), name: "fidžiešu"),
  TranslatedName(LangMkd(), name: "фиџиски"),
  TranslatedName(LangMal(), name: "ഫിജിയൻ"),
  TranslatedName(LangMon(), name: "фижи"),
  TranslatedName(LangMar(), name: "फिजियन"),
  TranslatedName(LangMsa(), name: "Fiji"),
  TranslatedName(LangMlt(), name: "Fiġi"),
  TranslatedName(LangMya(), name: "ဖီဂျီ"),
  TranslatedName(LangNob(), name: "fijiansk"),
  TranslatedName(LangNep(), name: "फिजियाली"),
  TranslatedName(LangNld(), name: "Fijisch"),
  TranslatedName(LangNno(), name: "fijiansk"),
  TranslatedName(LangNor(), name: "fijiansk"),
  TranslatedName(LangOri(), name: "ଫିଜି"),
  TranslatedName(LangOss(), name: "фиджи"),
  TranslatedName(LangPan(), name: "ਫ਼ਿਜ਼ੀ"),
  TranslatedName(LangPol(), name: "fidżijski"),
  TranslatedName(LangPor(), name: "fijiano"),
  TranslatedName(LangRoh(), name: "fidschian"),
  TranslatedName(LangRon(), name: "fijiană"),
  TranslatedName(LangRus(), name: "фиджи"),
  TranslatedName(LangSme(), name: "fidjigiella"),
  TranslatedName(LangSme(), name: "fižigiella", countryCode: "FI"),
  TranslatedName(LangSin(), name: "ෆීජි"),
  TranslatedName(LangSlk(), name: "fidžijčina"),
  TranslatedName(LangSlv(), name: "fidžijščina"),
  TranslatedName(LangSqi(), name: "fixhiane"),
  TranslatedName(LangSrp(), name: "фиџијски"),
  TranslatedName(LangSrp(), name: "fidžijski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "fijianska"),
  TranslatedName(LangSwa(), name: "Kifiji"),
  TranslatedName(LangTam(), name: "ஃபிஜியன்"),
  TranslatedName(LangTel(), name: "ఫిజియన్"),
  TranslatedName(LangTha(), name: "ฟิจิ"),
  TranslatedName(LangTon(), name: "lea fakafisi"),
  TranslatedName(LangTur(), name: "Fiji Dili"),
  TranslatedName(LangUig(), name: "فىجىچە"),
  TranslatedName(LangUkr(), name: "фіджі"),
  TranslatedName(LangUrd(), name: "فجی"),
  TranslatedName(LangUzb(), name: "fijcha"),
  TranslatedName(LangUzb(), name: "Фижича", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Fiji"),
  TranslatedName(LangYid(), name: "פֿידזשי"),
  TranslatedName(LangZho(), name: "斐济文"),
  TranslatedName(LangZho(), name: "斐濟文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Fijian"),
];
