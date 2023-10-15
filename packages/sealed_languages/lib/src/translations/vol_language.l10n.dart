import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 62 translations for a Volapük language:
/// - Amharic
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
/// - Esperanto
/// - Estonian
/// - Finnish
/// - French
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
/// - Korean
/// - Lao
/// - Latvian
/// - Lithuanian
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
/// - Ukrainian
/// - Uyghur
/// - Vietnamese
/// - Yiddish.
const volLanguageTranslations = [
  TranslatedName(LangEng(), name: "Volapük"),
  TranslatedName(LangAmh(), name: "ቮላፑክኛ"),
  TranslatedName(LangAra(), name: "لغة الفولابوك"),
  TranslatedName(LangAze(), name: "volapük dili"),
  TranslatedName(LangBul(), name: "волапюк"),
  TranslatedName(LangBen(), name: "ভোলাপুক"),
  TranslatedName(LangBre(), name: "volapük"),
  TranslatedName(LangBos(), name: "volapük"),
  TranslatedName(LangBos(), name: "волапук", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "volapük"),
  TranslatedName(LangCes(), name: "volapük"),
  TranslatedName(LangDan(), name: "volapyk"),
  TranslatedName(LangEll(), name: "Βόλαπικ"),
  TranslatedName(LangEpo(), name: "volapuko"),
  TranslatedName(LangSpa(), name: "volapük"),
  TranslatedName(LangEst(), name: "volapüki"),
  TranslatedName(LangFas(), name: "ولاپوک"),
  TranslatedName(LangFin(), name: "volapük"),
  TranslatedName(LangFra(), name: "volapuk"),
  TranslatedName(LangGuj(), name: "વોલાપુક"),
  TranslatedName(LangHeb(), name: "‏וולאפיק"),
  TranslatedName(LangHin(), name: "वोलापुक"),
  TranslatedName(LangHrv(), name: "volapük"),
  TranslatedName(LangHun(), name: "volapük"),
  TranslatedName(LangInd(), name: "Volapuk"),
  TranslatedName(LangIta(), name: "volapük"),
  TranslatedName(LangJpn(), name: "ヴォラピュク語"),
  TranslatedName(LangKan(), name: "ವೋಲಾಪುಕ್"),
  TranslatedName(LangKor(), name: "볼라퓌크어"),
  TranslatedName(LangKas(), name: "وولَپُک"),
  TranslatedName(LangLao(), name: "ໂວລາພັກ"),
  TranslatedName(LangLit(), name: "volapiuk"),
  TranslatedName(LangLav(), name: "volapiks"),
  TranslatedName(LangMkd(), name: "волапик"),
  TranslatedName(LangMal(), name: "വോളാപുക്"),
  TranslatedName(LangMar(), name: "ओलापुक"),
  TranslatedName(LangMlt(), name: "Volapuk"),
  TranslatedName(LangNob(), name: "volapyk"),
  TranslatedName(LangNno(), name: "volapyk"),
  TranslatedName(LangNor(), name: "volapyk"),
  TranslatedName(LangOri(), name: "ବୋଲାପୁକ"),
  TranslatedName(LangPol(), name: "volapuk"),
  TranslatedName(LangPor(), name: "volapuque"),
  TranslatedName(LangRoh(), name: "volapuk"),
  TranslatedName(LangRon(), name: "volapuk"),
  TranslatedName(LangRus(), name: "волапюк"),
  TranslatedName(LangSlk(), name: "volapük"),
  TranslatedName(LangSlv(), name: "volapuk"),
  TranslatedName(LangSrp(), name: "Волапук"),
  TranslatedName(LangSrp(), name: "Volapuk", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "volapük"),
  TranslatedName(LangTam(), name: "ஒலாபூக்"),
  TranslatedName(LangTel(), name: "వోలాపుక్"),
  TranslatedName(LangTha(), name: "โวลาพึค"),
  TranslatedName(LangTon(), name: "lea fakavolapiki"),
  TranslatedName(LangUig(), name: "ۋولاپۇكچە"),
  TranslatedName(LangUkr(), name: "волап’юк"),
  TranslatedName(LangVie(), name: "Tiếng Volapük"),
  TranslatedName(LangYid(), name: "וואלאַפּוק"),
  TranslatedName(LangZho(), name: "沃拉普克文"),

  /// Added manually:
  TranslatedName(LangIsl(), name: "volapük"),
  TranslatedName(LangGle(), name: "Volapük"),
];
