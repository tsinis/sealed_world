import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 89 translations for a Akan language:
/// - (Eastern) Punjabi
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Bambara
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
/// - English
/// - Estonian
/// - Ewe
/// - Finnish
/// - French
/// - Fula (Fulah/Pulaar/Pular)
/// - Galician
/// - Ganda
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
/// - Kazakh
/// - Kikuyu (Gikuyu)
/// - Kirundi
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lingala
/// - Lithuanian
/// - Luba-Katanga
/// - Macedonian
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Northern Ndebele
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
/// - Sango
/// - Serbian
/// - Shona
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
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Yoruba
/// - Zulu.
const akaLanguageTranslations = [
  TranslatedName(LangEng(), name: "Akan"),
  TranslatedName(LangAmh(), name: "አካንኛ"),
  TranslatedName(LangAra(), name: "الأكانية"),
  TranslatedName(LangAze(), name: "akanca"),
  TranslatedName(LangBul(), name: "акан"),
  TranslatedName(LangBam(), name: "akankan"),
  TranslatedName(LangBen(), name: "আকান"),
  TranslatedName(LangBre(), name: "akan"),
  TranslatedName(LangBos(), name: "akan"),
  TranslatedName(LangBos(), name: "акан", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "àkan"),
  TranslatedName(LangCes(), name: "akanština"),
  TranslatedName(LangCym(), name: "Acaneg"),
  TranslatedName(LangDan(), name: "akan"),
  TranslatedName(LangEwe(), name: "blugbe"),
  TranslatedName(LangEll(), name: "Ακάν"),
  TranslatedName(LangSpa(), name: "akan"),
  TranslatedName(LangEst(), name: "akani"),
  TranslatedName(LangEus(), name: "akanera"),
  TranslatedName(LangFas(), name: "آکان"),
  TranslatedName(LangFul(), name: "Akaan"),
  TranslatedName(LangFin(), name: "akan"),
  TranslatedName(LangFra(), name: "akan"),
  TranslatedName(LangGle(), name: "Acáinis"),
  TranslatedName(LangGlg(), name: "akán"),
  TranslatedName(LangGuj(), name: "અકાન"),
  TranslatedName(LangHeb(), name: "אקאן"),
  TranslatedName(LangHin(), name: "अकन"),
  TranslatedName(LangHrv(), name: "akanski"),
  TranslatedName(LangHun(), name: "akan"),
  TranslatedName(LangHye(), name: "աքաներեն"),
  TranslatedName(LangIsl(), name: "akan"),
  TranslatedName(LangIta(), name: "akan"),
  TranslatedName(LangJpn(), name: "アカン語"),
  TranslatedName(LangKat(), name: "აკანი"),
  TranslatedName(LangKik(), name: "Kiakan"),
  TranslatedName(LangKaz(), name: "акан"),
  TranslatedName(LangKan(), name: "ಅಕಾನ್"),
  TranslatedName(LangKor(), name: "아칸어"),
  TranslatedName(LangKas(), name: "اَکان"),
  TranslatedName(LangKir(), name: "аканча"),
  TranslatedName(LangLug(), name: "Lu-akaani"),
  TranslatedName(LangLin(), name: "akan"),
  TranslatedName(LangLao(), name: "ອາການ"),
  TranslatedName(LangLit(), name: "akanų"),
  TranslatedName(LangLub(), name: "Liakan"),
  TranslatedName(LangLav(), name: "akanu"),
  TranslatedName(LangMkd(), name: "акански"),
  TranslatedName(LangMal(), name: "അകാൻ‌"),
  TranslatedName(LangMon(), name: "акан"),
  TranslatedName(LangMar(), name: "अकान"),
  TranslatedName(LangMya(), name: "အာကိန်"),
  TranslatedName(LangNob(), name: "akan"),
  TranslatedName(LangNde(), name: "isi-Akhani"),
  TranslatedName(LangNep(), name: "आकान"),
  TranslatedName(LangNno(), name: "akan"),
  TranslatedName(LangNor(), name: "akan"),
  TranslatedName(LangOri(), name: "ଅକନ୍"),
  TranslatedName(LangPan(), name: "ਅਕਾਨ"),
  TranslatedName(LangPol(), name: "akan"),
  TranslatedName(LangPor(), name: "akan"),
  TranslatedName(LangRoh(), name: "akan"),
  TranslatedName(LangRun(), name: "Igikani"),
  TranslatedName(LangRon(), name: "akan"),
  TranslatedName(LangRus(), name: "акан"),
  TranslatedName(LangSag(), name: "Akâan"),
  TranslatedName(LangSin(), name: "අකාන්"),
  TranslatedName(LangSlk(), name: "akančina"),
  TranslatedName(LangSlv(), name: "akanščina"),
  TranslatedName(LangSna(), name: "chiAkani"),
  TranslatedName(LangSqi(), name: "akanisht"),
  TranslatedName(LangSrp(), name: "акан"),
  TranslatedName(LangSrp(), name: "akan", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "akan"),
  TranslatedName(LangSwa(), name: "Kiakani"),
  TranslatedName(LangSwa(), name: "Kiakan", countryCode: "CD"),
  TranslatedName(LangTam(), name: "அகான்"),
  TranslatedName(LangTel(), name: "అకాన్"),
  TranslatedName(LangTha(), name: "อาคัน"),
  TranslatedName(LangTon(), name: "lea fakaʻakani"),
  TranslatedName(LangUig(), name: "ئاكانچە"),
  TranslatedName(LangUkr(), name: "акан"),
  TranslatedName(LangUrd(), name: "اکان"),
  TranslatedName(LangUzb(), name: "akancha"),
  TranslatedName(LangVie(), name: "Tiếng Akan"),
  TranslatedName(LangYor(), name: "Èdè Akani"),
  TranslatedName(LangZho(), name: "阿肯文"),
  TranslatedName(LangZho(), name: "阿坎文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Akan"),
];
