import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 59 translations for a Pāli language:
/// - (Eastern) Punjabi
/// - Arabic
/// - Azerbaijani
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
/// - English
/// - Estonian
/// - Finnish
/// - French
/// - Georgian
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
/// - Macedonian
/// - Malayalam
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
/// - Ukrainian
/// - Uyghur
/// - Vietnamese.
const pliLanguageTranslations = [
  TranslatedName(LangEng(), name: "Pali"),
  TranslatedName(LangAra(), name: "البالية"),
  TranslatedName(LangAze(), name: "pali dili"),
  TranslatedName(LangBul(), name: "пали"),
  TranslatedName(LangBen(), name: "পালি"),
  TranslatedName(LangBre(), name: "pali"),
  TranslatedName(LangBos(), name: "pali"),
  TranslatedName(LangBos(), name: "пали", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "pali"),
  TranslatedName(LangCes(), name: "pálí"),
  TranslatedName(LangDan(), name: "pali"),
  TranslatedName(LangEll(), name: "Πάλι"),
  TranslatedName(LangSpa(), name: "pali"),
  TranslatedName(LangEst(), name: "paali"),
  TranslatedName(LangFas(), name: "پالی"),
  TranslatedName(LangFin(), name: "paali"),
  TranslatedName(LangFra(), name: "pali"),
  TranslatedName(LangGle(), name: "Páilis"),
  TranslatedName(LangGuj(), name: "પાલી"),
  TranslatedName(LangHeb(), name: "פאלי"),
  TranslatedName(LangHin(), name: "पाली"),
  TranslatedName(LangHrv(), name: "pali"),
  TranslatedName(LangHun(), name: "pali"),
  TranslatedName(LangIsl(), name: "palí"),
  TranslatedName(LangIta(), name: "pali"),
  TranslatedName(LangJpn(), name: "パーリ語"),
  TranslatedName(LangKat(), name: "პალი"),
  TranslatedName(LangKan(), name: "ಪಾಲಿ"),
  TranslatedName(LangKor(), name: "팔리어"),
  TranslatedName(LangKas(), name: "پالی"),
  TranslatedName(LangLao(), name: "ປາລີ"),
  TranslatedName(LangLit(), name: "pali"),
  TranslatedName(LangLav(), name: "pāli"),
  TranslatedName(LangMkd(), name: "пали"),
  TranslatedName(LangMal(), name: "പാലി"),
  TranslatedName(LangMar(), name: "पाली"),
  TranslatedName(LangMya(), name: "ပါဠိ"),
  TranslatedName(LangNob(), name: "pali"),
  TranslatedName(LangNno(), name: "pali"),
  TranslatedName(LangNor(), name: "pali"),
  TranslatedName(LangOri(), name: "ପାଲି"),
  TranslatedName(LangPan(), name: "ਪਲੀ"),
  TranslatedName(LangPol(), name: "palijski"),
  TranslatedName(LangPor(), name: "páli"),
  TranslatedName(LangRoh(), name: "pali"),
  TranslatedName(LangRon(), name: "pali"),
  TranslatedName(LangRus(), name: "пали"),
  TranslatedName(LangSlk(), name: "pálí"),
  TranslatedName(LangSlv(), name: "palijščina"),
  TranslatedName(LangSrp(), name: "Пали"),
  TranslatedName(LangSwe(), name: "pali"),
  TranslatedName(LangTam(), name: "பாலி"),
  TranslatedName(LangTel(), name: "పాలీ"),
  TranslatedName(LangTha(), name: "บาลี"),
  TranslatedName(LangTon(), name: "lea fakapāli"),
  TranslatedName(LangUig(), name: "پالىچە"),
  TranslatedName(LangUkr(), name: "палі"),
  TranslatedName(LangVie(), name: "Tiếng Pali"),
  TranslatedName(LangZho(), name: "巴利文"),
];
