import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 86 translations for a Cornish language:
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
/// - Cornish
/// - Croatian
/// - Czech
/// - Danish
/// - English
/// - Estonian
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
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
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
/// - Yiddish
/// - Zulu.
const corLanguageTranslations = [
  TranslatedName(LangEng(), name: "Cornish"),
  TranslatedName(LangAfr(), name: "Kornies"),
  TranslatedName(LangAmh(), name: "ኮርኒሽ"),
  TranslatedName(LangAra(), name: "الكورنية"),
  TranslatedName(LangAze(), name: "korn"),
  TranslatedName(LangBul(), name: "корнуолски"),
  TranslatedName(LangBen(), name: "কর্ণিশ"),
  TranslatedName(LangBre(), name: "kerneveureg"),
  TranslatedName(LangBos(), name: "korniški"),
  TranslatedName(LangBos(), name: "корнишки", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "còrnic"),
  TranslatedName(LangCes(), name: "kornština"),
  TranslatedName(LangCym(), name: "Cernyweg"),
  TranslatedName(LangDan(), name: "cornisk"),
  TranslatedName(LangDeu(), name: "Kornisch"),
  TranslatedName(LangEll(), name: "Κόρνις"),
  TranslatedName(LangSpa(), name: "córnico"),
  TranslatedName(LangEst(), name: "korni"),
  TranslatedName(LangEus(), name: "kornubiera"),
  TranslatedName(LangFas(), name: "کرنوالی"),
  TranslatedName(LangFin(), name: "korni"),
  TranslatedName(LangFra(), name: "cornique"),
  TranslatedName(LangGle(), name: "Coirnis"),
  TranslatedName(LangGla(), name: "Còrnais"),
  TranslatedName(LangGlg(), name: "córnico"),
  TranslatedName(LangGuj(), name: "કોર્નિશ"),
  TranslatedName(LangHeb(), name: "קורנית"),
  TranslatedName(LangHin(), name: "कोर्निश"),
  TranslatedName(LangHrv(), name: "kornski"),
  TranslatedName(LangHun(), name: "korni"),
  TranslatedName(LangHye(), name: "կոռներեն"),
  TranslatedName(LangInd(), name: "Kornish"),
  TranslatedName(LangIsl(), name: "kornbreska"),
  TranslatedName(LangIta(), name: "cornico"),
  TranslatedName(LangJpn(), name: "コーンウォール語"),
  TranslatedName(LangKat(), name: "კორნული"),
  TranslatedName(LangKaz(), name: "корниш"),
  TranslatedName(LangKan(), name: "ಕೋರ್ನಿಷ್"),
  TranslatedName(LangKor(), name: "콘월어"),
  TranslatedName(LangKas(), name: "کورنِش"),
  TranslatedName(LangCor(), name: "kernewek"),
  TranslatedName(LangKir(), name: "корнишче"),
  TranslatedName(LangLtz(), name: "Kornesch"),
  TranslatedName(LangLao(), name: "ຄໍນິຊ"),
  TranslatedName(LangLit(), name: "kornų"),
  TranslatedName(LangLav(), name: "korniešu"),
  TranslatedName(LangMkd(), name: "корнски"),
  TranslatedName(LangMal(), name: "കോർണിഷ്"),
  TranslatedName(LangMon(), name: "корны"),
  TranslatedName(LangMar(), name: "कोर्निश"),
  TranslatedName(LangMlt(), name: "Korniku"),
  TranslatedName(LangMya(), name: "ခိုနီရှ်"),
  TranslatedName(LangNob(), name: "kornisk"),
  TranslatedName(LangNep(), name: "कोर्निश"),
  TranslatedName(LangNno(), name: "kornisk"),
  TranslatedName(LangNor(), name: "kornisk"),
  TranslatedName(LangOri(), name: "କୋର୍ନିସ୍"),
  TranslatedName(LangPan(), name: "ਕੋਰਨਿਸ਼"),
  TranslatedName(LangPol(), name: "kornijski"),
  TranslatedName(LangPor(), name: "córnico"),
  TranslatedName(LangRoh(), name: "cornic"),
  TranslatedName(LangRon(), name: "cornică"),
  TranslatedName(LangRus(), name: "корнийский"),
  TranslatedName(LangSme(), name: "kornagiella"),
  TranslatedName(LangSin(), name: "කෝනීසියානු"),
  TranslatedName(LangSlk(), name: "kornčina"),
  TranslatedName(LangSlv(), name: "kornijščina"),
  TranslatedName(LangSqi(), name: "kornisht"),
  TranslatedName(LangSrp(), name: "корнволски"),
  TranslatedName(LangSrp(), name: "kornvolski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "korniska"),
  TranslatedName(LangSwa(), name: "Kikorni"),
  TranslatedName(LangTam(), name: "கார்னிஷ்"),
  TranslatedName(LangTel(), name: "కోర్నిష్"),
  TranslatedName(LangTha(), name: "คอร์นิช"),
  TranslatedName(LangTon(), name: "lea fakakoniuali"),
  TranslatedName(LangTur(), name: "Kernevekçe"),
  TranslatedName(LangUig(), name: "كورنىشچە"),
  TranslatedName(LangUkr(), name: "корнійська"),
  TranslatedName(LangUrd(), name: "کورنش"),
  TranslatedName(LangUzb(), name: "kornishcha"),
  TranslatedName(LangVie(), name: "Tiếng Cornwall"),
  TranslatedName(LangYid(), name: "קארניש"),
  TranslatedName(LangZho(), name: "凯尔特文"),
  TranslatedName(LangZho(), name: "康瓦耳文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Cornish"),
];
