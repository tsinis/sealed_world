import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 95 translations for a Navajo (Navaho) language:
/// - (Eastern) Punjabi
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Assamese
/// - Azerbaijani
/// - Basque
/// - Belarusian
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Burmese
/// - Catalan
/// - Chechen
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - English
/// - Estonian
/// - Faroese
/// - Finnish
/// - French
/// - Fula (Fulah/Pulaar/Pular)
/// - Galician
/// - Georgian
/// - German
/// - Greek (modern)
/// - Gujarati
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Interlingua
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
/// - Korean
/// - Kurdish
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Macedonian
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Māori
/// - Nepali
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Pashto (Pushto)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
/// - Romanian
/// - Romansh
/// - Russian
/// - Sardinian
/// - Serbian
/// - Sindhi
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Spanish
/// - Swahili
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Turkmen
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Yoruba
/// - Zulu.
const navLanguageTranslations = [
  TranslatedName(LangEng(), name: "Navajo"),
  TranslatedName(LangAra(), name: "النافاجو"),
  TranslatedName(LangAze(), name: "navayo dili"),
  TranslatedName(LangBul(), name: "навахо"),
  TranslatedName(LangBen(), name: "নাভাজো"),
  TranslatedName(LangBre(), name: "navacʼho"),
  TranslatedName(LangBos(), name: "navaho"),
  TranslatedName(LangBos(), name: "навахо", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "navaho"),
  TranslatedName(LangCes(), name: "navažština"),
  TranslatedName(LangCym(), name: "Nafaho"),
  TranslatedName(LangDan(), name: "navajo"),
  TranslatedName(LangEll(), name: "Νάβαχο"),
  TranslatedName(LangSpa(), name: "navajo"),
  TranslatedName(LangEst(), name: "navaho"),
  TranslatedName(LangFas(), name: "ناواهویی"),
  TranslatedName(LangFin(), name: "navajo"),
  TranslatedName(LangFra(), name: "navaho"),
  TranslatedName(LangGle(), name: "Navachóis"),
  TranslatedName(LangGuj(), name: "નાવાજો"),
  TranslatedName(LangHeb(), name: "נבחו"),
  TranslatedName(LangHin(), name: "नावाजो"),
  TranslatedName(LangHrv(), name: "navajo"),
  TranslatedName(LangHun(), name: "navahó"),
  TranslatedName(LangIsl(), name: "navahó"),
  TranslatedName(LangIta(), name: "navajo"),
  TranslatedName(LangJpn(), name: "ナバホ語"),
  TranslatedName(LangKat(), name: "ნავახო"),
  TranslatedName(LangKan(), name: "ನವಾಜೊ"),
  TranslatedName(LangKor(), name: "나바호어"),
  TranslatedName(LangKas(), name: "نَواجو"),
  TranslatedName(LangLao(), name: "ນາວາໂຈ"),
  TranslatedName(LangLit(), name: "navajų"),
  TranslatedName(LangLav(), name: "navahu"),
  TranslatedName(LangMkd(), name: "навахо"),
  TranslatedName(LangMal(), name: "നവാഹൊ"),
  TranslatedName(LangMar(), name: "नावाजो"),
  TranslatedName(LangMlt(), name: "Navaħo"),
  TranslatedName(LangNob(), name: "navajo"),
  TranslatedName(LangNno(), name: "navajo"),
  TranslatedName(LangNor(), name: "navajo"),
  TranslatedName(LangOri(), name: "ନାଭାଜୋ"),
  TranslatedName(LangPol(), name: "nawaho"),
  TranslatedName(LangPor(), name: "navajo"),
  TranslatedName(LangRoh(), name: "navajo"),
  TranslatedName(LangRon(), name: "navajo"),
  TranslatedName(LangRus(), name: "навахо"),
  TranslatedName(LangSlk(), name: "navajo"),
  TranslatedName(LangSlv(), name: "navajščina"),
  TranslatedName(LangSrp(), name: "Навахо"),
  TranslatedName(LangSrp(), name: "Navaho", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "navaho"),
  TranslatedName(LangTam(), name: "நவாஜோ"),
  TranslatedName(LangTel(), name: "నవాహో"),
  TranslatedName(LangTha(), name: "นาวาโฮ"),
  TranslatedName(LangTon(), name: "lea fakanavaho"),
  TranslatedName(LangTur(), name: "Navaho Dili"),
  TranslatedName(LangUig(), name: "ناۋاخوچە"),
  TranslatedName(LangUkr(), name: "навахо"),
  TranslatedName(LangVie(), name: "Tiếng Navajo"),
  TranslatedName(LangZho(), name: "纳瓦霍文"),
  TranslatedName(LangZho(), name: "納瓦霍文", script: ScriptHant()),
  TranslatedName(LangAmh(), name: "ናቫጆ"),
  TranslatedName(LangAsm(), name: "নাভাজো"),
  TranslatedName(LangBel(), name: "наваха"),
  TranslatedName(LangChe(), name: "навахо"),
  TranslatedName(LangEus(), name: "navajoera"),
  TranslatedName(
    LangFul(),
    name: "𞤐𞤢𞤬𞤱𞤢𞤸𞤮𞥅𞤪𞤫",
    script: ScriptAdlm(),
  ),
  TranslatedName(LangFao(), name: "navajo"),
  TranslatedName(LangGlg(), name: "navajo"),
  TranslatedName(LangHye(), name: "նավախո"),
  TranslatedName(LangIna(), name: "navajo"),
  TranslatedName(LangKaz(), name: "навахо тілі"),
  TranslatedName(LangKhm(), name: "ណាវ៉ាចូ"),
  TranslatedName(LangKur(), name: "navajoyî"),
  TranslatedName(LangKir(), name: "наваджочо"),
  TranslatedName(LangMri(), name: "Nawahō"),
  TranslatedName(LangMon(), name: "навахо"),
  TranslatedName(LangMya(), name: "နာဗာဟို"),
  TranslatedName(LangNep(), name: "नाभाजो"),
  TranslatedName(LangPan(), name: "ਨਵਾਜੋ"),
  TranslatedName(LangPus(), name: "نواجو"),
  TranslatedName(LangQue(), name: "Navajo Simi"),
  TranslatedName(LangSrd(), name: "navajo"),
  TranslatedName(LangSnd(), name: "نواجو"),
  TranslatedName(LangSin(), name: "නවාජො"),
  TranslatedName(LangSqi(), name: "navahoisht"),
  TranslatedName(LangSwa(), name: "Kinavajo"),
  TranslatedName(LangTir(), name: "ናቫሆ"),
  TranslatedName(LangTuk(), name: "nawaho dili"),
  TranslatedName(LangUrd(), name: "نواجو"),
  TranslatedName(LangUzb(), name: "navaxo"),
  TranslatedName(LangYor(), name: "Èdè Nafajo"),
  TranslatedName(LangZul(), name: "isi-Navajo"),
  TranslatedName(LangDeu(), name: "Navajo"),
];
