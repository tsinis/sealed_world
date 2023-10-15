import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 62 translations for a Komi language:
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
/// - Marathi (Marāṭhī)
/// - Northern Sami
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
/// - Swahili
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tonga (Tonga Islands)
/// - Ukrainian
/// - Uyghur
/// - Vietnamese
/// - Welsh.
const komLanguageTranslations = [
  TranslatedName(LangEng(), name: "Komi"),
  TranslatedName(LangAra(), name: "الكومي"),
  TranslatedName(LangAze(), name: "komi dili"),
  TranslatedName(LangBul(), name: "Коми"),
  TranslatedName(LangBen(), name: "কোমি"),
  TranslatedName(LangBos(), name: "komi"),
  TranslatedName(LangBos(), name: "коми", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "komi"),
  TranslatedName(LangCes(), name: "komijština"),
  TranslatedName(LangCym(), name: "Comi"),
  TranslatedName(LangDan(), name: "komi"),
  TranslatedName(LangDeu(), name: "Komi-Sprache"),
  TranslatedName(LangEll(), name: "Κόμι"),
  TranslatedName(LangSpa(), name: "komi"),
  TranslatedName(LangEst(), name: "komi"),
  TranslatedName(LangFas(), name: "کومیایی"),
  TranslatedName(LangFin(), name: "komi"),
  TranslatedName(LangFra(), name: "komi"),
  TranslatedName(LangGle(), name: "Coimis"),
  TranslatedName(LangGuj(), name: "કોમી"),
  TranslatedName(LangHeb(), name: "קומי"),
  TranslatedName(LangHin(), name: "कोमी"),
  TranslatedName(LangHrv(), name: "komi"),
  TranslatedName(LangHun(), name: "komi"),
  TranslatedName(LangIsl(), name: "komíska"),
  TranslatedName(LangIta(), name: "komi"),
  TranslatedName(LangJpn(), name: "コミ語"),
  TranslatedName(LangKat(), name: "კომი"),
  TranslatedName(LangKan(), name: "ಕೋಮಿ"),
  TranslatedName(LangKor(), name: "코미어"),
  TranslatedName(LangKas(), name: "کومی"),
  TranslatedName(LangLtz(), name: "Komi-Sprooch"),
  TranslatedName(LangLao(), name: "ໂຄມິ"),
  TranslatedName(LangLit(), name: "komi"),
  TranslatedName(LangLav(), name: "komiešu"),
  TranslatedName(LangMkd(), name: "коми"),
  TranslatedName(LangMal(), name: "കോമി"),
  TranslatedName(LangMar(), name: "कोमी"),
  TranslatedName(LangNob(), name: "komi"),
  TranslatedName(LangNno(), name: "komi"),
  TranslatedName(LangNor(), name: "komi"),
  TranslatedName(LangOri(), name: "କୋମି"),
  TranslatedName(LangPol(), name: "komi"),
  TranslatedName(LangPor(), name: "komi"),
  TranslatedName(LangRoh(), name: "komi"),
  TranslatedName(LangRon(), name: "komi"),
  TranslatedName(LangRus(), name: "коми"),
  TranslatedName(LangSme(), name: "komigiella"),
  TranslatedName(LangSlk(), name: "komijčina"),
  TranslatedName(LangSlv(), name: "komijščina"),
  TranslatedName(LangSrp(), name: "Коми"),
  TranslatedName(LangSwe(), name: "kome"),
  TranslatedName(LangSwa(), name: "Kikomi"),
  TranslatedName(LangTam(), name: "கோமி"),
  TranslatedName(LangTel(), name: "కోమి"),
  TranslatedName(LangTha(), name: "โกมิ"),
  TranslatedName(LangTon(), name: "lea fakakomi"),
  TranslatedName(LangUig(), name: "كومىچە"),
  TranslatedName(LangUkr(), name: "комі"),
  TranslatedName(LangVie(), name: "Tiếng Komi"),
  TranslatedName(LangZho(), name: "科米文"),

  /// Added manually:
  TranslatedName(LangBre(), name: "komieg"),
];
