import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 64 translations for a Bihari language:
/// - (Eastern) Punjabi
/// - Arabic
/// - Azerbaijani
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Catalan
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - English
/// - Estonian
/// - Finnish
/// - French
/// - Georgian
/// - German
/// - Greek (modern)
/// - Gujarati
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Korean
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Romanian
/// - Romansh
/// - Russian
/// - Serbian
/// - Slovak
/// - Slovene
/// - Spanish
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Uyghur
/// - Vietnamese.
const bihLanguageTranslations = [
  TranslatedName(LangEng(), name: "Bhojpuri"),
  TranslatedName(LangAra(), name: "البهوجبورية"),
  TranslatedName(LangAze(), name: "bxoçpuri dili"),
  TranslatedName(LangBul(), name: "божпури"),
  TranslatedName(LangBen(), name: "ভোজপুরি"),
  TranslatedName(LangBre(), name: "bhojpuri"),
  TranslatedName(LangBos(), name: "bojpuri"),
  TranslatedName(LangBos(), name: "бојпури", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "bhojpuri"),
  TranslatedName(LangCes(), name: "bhojpurština"),
  TranslatedName(LangDan(), name: "bhojpuri"),
  TranslatedName(LangDeu(), name: "Bhodschpuri"),
  TranslatedName(LangEll(), name: "Μποζπούρι"),
  TranslatedName(LangSpa(), name: "bhojpuri"),
  TranslatedName(LangEst(), name: "bhodžpuri"),
  TranslatedName(LangFas(), name: "بوجپوری"),
  TranslatedName(LangFin(), name: "bhodžpuri"),
  TranslatedName(LangFra(), name: "bhojpuri"),
  TranslatedName(LangGuj(), name: "ભોજપુરી"),
  TranslatedName(LangHeb(), name: "בוג׳פורי"),
  TranslatedName(LangHin(), name: "भोजपुरी"),
  TranslatedName(LangHrv(), name: "bhojpuri"),
  TranslatedName(LangHun(), name: "bodzspuri"),
  TranslatedName(LangIsl(), name: "bojpúrí"),
  TranslatedName(LangIta(), name: "bhojpuri"),
  TranslatedName(LangJpn(), name: "ボージュプリー語"),
  TranslatedName(LangKat(), name: "ბოჯპური"),
  TranslatedName(LangKan(), name: "ಭೋಜಪುರಿ"),
  TranslatedName(LangKor(), name: "호즈푸리어"),
  TranslatedName(LangKas(), name: "بوجپوٗری"),
  TranslatedName(LangLtz(), name: "Bhodschpuri"),
  TranslatedName(LangLao(), name: "ໂບພູຣິ"),
  TranslatedName(LangLit(), name: "baučpuri"),
  TranslatedName(LangLav(), name: "bhodžpūru"),
  TranslatedName(LangMkd(), name: "боџпури"),
  TranslatedName(LangMal(), name: "ഭോജ്‌പൂരി"),
  TranslatedName(LangMar(), name: "भोजपुरी"),
  TranslatedName(LangMlt(), name: "Bojpuri"),
  TranslatedName(LangNob(), name: "bhojpuri"),
  TranslatedName(LangNno(), name: "bhojpuri"),
  TranslatedName(LangNor(), name: "bhojpuri"),
  TranslatedName(LangOri(), name: "ଭୋଜପୁରୀ"),
  TranslatedName(LangPan(), name: "ਭੋਜਪੁਰੀ"),
  TranslatedName(LangPol(), name: "bhodźpuri"),
  TranslatedName(LangPor(), name: "bhojpuri"),
  TranslatedName(LangRoh(), name: "bhojpuri"),
  TranslatedName(LangRon(), name: "bhojpuri"),
  TranslatedName(LangRus(), name: "бходжпури"),
  TranslatedName(LangSlk(), name: "bhódžpurčina"),
  TranslatedName(LangSlv(), name: "bodžpuri"),
  TranslatedName(LangSrp(), name: "Бојпури"),
  TranslatedName(LangSrp(), name: "Bojpuri", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "bhojpuri"),
  TranslatedName(LangTam(), name: "போஜ்பூரி"),
  TranslatedName(LangTel(), name: "భోజ్ పూరి"),
  TranslatedName(LangTha(), name: "โภชปุรี"),
  TranslatedName(LangTon(), name: "lea fakaposipuli"),
  TranslatedName(LangTur(), name: "Arayanice"),
  TranslatedName(LangUig(), name: "بوجپۇرىچە"),
  TranslatedName(LangUkr(), name: "бходжпурі"),
  TranslatedName(LangVie(), name: "Tiếng Bhojpuri"),
  TranslatedName(LangZho(), name: "博杰普尔文"),
  TranslatedName(LangZho(), name: "博傑普爾文", script: ScriptHant()),

  /// Added manually:
  TranslatedName(LangGle(), name: "Bihairis"),
];
