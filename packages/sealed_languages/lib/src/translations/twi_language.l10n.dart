import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 68 translations for a Twi language:
/// - (Eastern) Punjabi
/// - Amharic
/// - Arabic
/// - Azerbaijani
/// - Basque
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
/// - Esperanto
/// - Estonian
/// - Faroese
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
/// - Kinyarwanda
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Macedonian
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
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
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Uyghur
/// - Vietnamese.
const twiLanguageTranslations = [
  TranslatedName(LangEng(), name: "Twi"),
  TranslatedName(LangAmh(), name: "ትዊኛ"),
  TranslatedName(LangAra(), name: "التوي"),
  TranslatedName(LangAze(), name: "Tvi dili"),
  TranslatedName(LangBul(), name: "туи"),
  TranslatedName(LangBen(), name: "টোয়াই"),
  TranslatedName(LangBre(), name: "twi"),
  TranslatedName(LangBos(), name: "tvi"),
  TranslatedName(LangBos(), name: "тви", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "twi"),
  TranslatedName(LangCes(), name: "twi"),
  TranslatedName(LangDan(), name: "twi"),
  TranslatedName(LangEll(), name: "Τούι"),
  TranslatedName(LangEpo(), name: "tw"),
  TranslatedName(LangSpa(), name: "twi"),
  TranslatedName(LangEst(), name: "tvii"),
  TranslatedName(LangEus(), name: "twia"),
  TranslatedName(LangFas(), name: "توی‌یایی"),
  TranslatedName(LangFin(), name: "twi"),
  TranslatedName(LangFao(), name: "twi"),
  TranslatedName(LangFra(), name: "twi"),
  TranslatedName(LangGle(), name: "Tíbhis"),
  TranslatedName(LangGuj(), name: "ટ્વાઇ"),
  TranslatedName(LangHeb(), name: "טווי"),
  TranslatedName(LangHin(), name: "ट्वी"),
  TranslatedName(LangHrv(), name: "twi"),
  TranslatedName(LangHun(), name: "twi"),
  TranslatedName(LangIsl(), name: "tví"),
  TranslatedName(LangIta(), name: "ci"),
  TranslatedName(LangJpn(), name: "トウィ語"),
  TranslatedName(LangKat(), name: "თუი"),
  TranslatedName(LangKan(), name: "ಟ್ವಿ"),
  TranslatedName(LangKor(), name: "트위어"),
  TranslatedName(LangKas(), name: "توی"),
  TranslatedName(LangKir(), name: "тви"),
  TranslatedName(LangLao(), name: "ທວີ"),
  TranslatedName(LangLit(), name: "tvi"),
  TranslatedName(LangLav(), name: "tvī"),
  TranslatedName(LangMkd(), name: "тви"),
  TranslatedName(LangMal(), name: "ട്വി"),
  TranslatedName(LangMon(), name: "тви"),
  TranslatedName(LangMar(), name: "ट्वी"),
  TranslatedName(LangNob(), name: "twi"),
  TranslatedName(LangNno(), name: "twi"),
  TranslatedName(LangNor(), name: "twi"),
  TranslatedName(LangOri(), name: "ତ୍ୱି"),
  TranslatedName(LangPan(), name: "ਤ੍ਵਿ"),
  TranslatedName(LangPol(), name: "twi"),
  TranslatedName(LangPor(), name: "twi"),
  TranslatedName(LangRoh(), name: "twi"),
  TranslatedName(LangRon(), name: "twi"),
  TranslatedName(LangRus(), name: "тви"),
  TranslatedName(LangKin(), name: "Inyetuwi"),
  TranslatedName(LangSlk(), name: "twi"),
  TranslatedName(LangSlv(), name: "tvi"),
  TranslatedName(LangSrp(), name: "Тви"),
  TranslatedName(LangSrp(), name: "Tvi", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "twi"),
  TranslatedName(LangTam(), name: "ட்வி"),
  TranslatedName(LangTel(), name: "ట్వి"),
  TranslatedName(LangTha(), name: "ทวิ"),
  TranslatedName(LangTir(), name: "ትዊ"),
  TranslatedName(LangTon(), name: "lea fakatusuī"),
  TranslatedName(LangTur(), name: "Tvi"),
  TranslatedName(LangUig(), name: "تىۋىچە"),
  TranslatedName(LangUkr(), name: "тві"),
  TranslatedName(LangVie(), name: "Tiếng Twi"),
  TranslatedName(LangZho(), name: "特威文"),
];
