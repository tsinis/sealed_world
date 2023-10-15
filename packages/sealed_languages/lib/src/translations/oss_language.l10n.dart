import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 80 translations for a Ossetian (Ossetic) language:
/// - Afrikaans
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
/// - Dutch
/// - English
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
/// - Korean
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
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
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Yiddish
/// - Zulu.
const ossLanguageTranslations = [
  TranslatedName(LangEng(), name: "Ossetic"),
  TranslatedName(LangAfr(), name: "Osseties"),
  TranslatedName(LangAmh(), name: "ኦሴቲክ"),
  TranslatedName(LangAra(), name: "الأوسيتيك"),
  TranslatedName(LangAze(), name: "osetik dili"),
  TranslatedName(LangBul(), name: "осетски"),
  TranslatedName(LangBen(), name: "ওসেটিক"),
  TranslatedName(LangBre(), name: "oseteg"),
  TranslatedName(LangBos(), name: "osetski"),
  TranslatedName(LangBos(), name: "осетски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "osset"),
  TranslatedName(LangCes(), name: "osetština"),
  TranslatedName(LangCym(), name: "Oseteg"),
  TranslatedName(LangDan(), name: "ossetisk"),
  TranslatedName(LangDeu(), name: "Ossetisch"),
  TranslatedName(LangEwe(), name: "ossetiagbe"),
  TranslatedName(LangEll(), name: "Οσετικά"),
  TranslatedName(LangSpa(), name: "osético"),
  TranslatedName(LangEst(), name: "osseedi"),
  TranslatedName(LangEus(), name: "osetiera"),
  TranslatedName(LangFas(), name: "آسی"),
  TranslatedName(LangFin(), name: "osseetti"),
  TranslatedName(LangFao(), name: "ossetiskt"),
  TranslatedName(LangFra(), name: "ossète"),
  TranslatedName(LangFry(), name: "Ossetysk"),
  TranslatedName(LangGle(), name: "Oiséitis"),
  TranslatedName(LangGlg(), name: "osetio"),
  TranslatedName(LangGuj(), name: "ઓસ્સેટિક"),
  TranslatedName(LangHeb(), name: "אוסטית"),
  TranslatedName(LangHin(), name: "ओस्सेटिक"),
  TranslatedName(LangHrv(), name: "osetski"),
  TranslatedName(LangHun(), name: "oszét"),
  TranslatedName(LangInd(), name: "Ossetia"),
  TranslatedName(LangIsl(), name: "ossetíska"),
  TranslatedName(LangIta(), name: "ossetico"),
  TranslatedName(LangJpn(), name: "オセット語"),
  TranslatedName(LangKat(), name: "ოსური"),
  TranslatedName(LangKan(), name: "ಒಸ್ಸೆಟಿಕ್"),
  TranslatedName(LangKor(), name: "오세트어"),
  TranslatedName(LangKas(), name: "اوٚسیٚٹِک"),
  TranslatedName(LangLtz(), name: "Ossetesch"),
  TranslatedName(LangLao(), name: "ອອດເຊຕິກ"),
  TranslatedName(LangLit(), name: "osetinų"),
  TranslatedName(LangLav(), name: "osetīnu"),
  TranslatedName(LangMkd(), name: "осетски"),
  TranslatedName(LangMal(), name: "ഒസ്സെറ്റിക്"),
  TranslatedName(LangMar(), name: "ओस्सेटिक"),
  TranslatedName(LangMsa(), name: "Ossete"),
  TranslatedName(LangMlt(), name: "Ossettiku"),
  TranslatedName(LangNob(), name: "ossetisk"),
  TranslatedName(LangNld(), name: "Ossetisch"),
  TranslatedName(LangNno(), name: "ossetisk"),
  TranslatedName(LangNor(), name: "ossetisk"),
  TranslatedName(LangOri(), name: "ଓସେଟିକ୍"),
  TranslatedName(LangOss(), name: "ирон"),
  TranslatedName(LangPol(), name: "osetyjski"),
  TranslatedName(LangPor(), name: "ossetic"),
  TranslatedName(LangPor(), name: "ossético", countryCode: "PT"),
  TranslatedName(LangRoh(), name: "ossetic"),
  TranslatedName(LangRon(), name: "osetă"),
  TranslatedName(LangRus(), name: "осетинский"),
  TranslatedName(LangSlk(), name: "osetčina"),
  TranslatedName(LangSlv(), name: "osetinščina"),
  TranslatedName(LangSrp(), name: "Осетски"),
  TranslatedName(LangSrp(), name: "Osetski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "ossetiska"),
  TranslatedName(LangSwa(), name: "Kiosetia"),
  TranslatedName(LangTam(), name: "ஒசெட்டிக்"),
  TranslatedName(LangTel(), name: "ఒసేటిక్"),
  TranslatedName(LangTha(), name: "ออสเซเตีย"),
  TranslatedName(LangTon(), name: "lea fakaʻosetiki"),
  TranslatedName(LangTur(), name: "Osetçe"),
  TranslatedName(LangUig(), name: "ئوسسېتچەچە"),
  TranslatedName(LangUkr(), name: "осетинська"),
  TranslatedName(LangUrd(), name: "اوسیٹک"),
  TranslatedName(LangVie(), name: "Tiếng Ossetic"),
  TranslatedName(LangYid(), name: "אסעטיש"),
  TranslatedName(LangZho(), name: "奥塞梯文"),
  TranslatedName(LangZho(), name: "奧塞提文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Ossetic"),
];
