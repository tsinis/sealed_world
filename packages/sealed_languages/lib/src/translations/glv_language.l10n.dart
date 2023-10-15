import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 83 translations for a Manx language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
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
/// - English
/// - Estonian
/// - Finnish
/// - French
/// - Galician
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
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Macedonian
/// - Malayalam
/// - Maltese
/// - Manx
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
/// - Western Frisian
/// - Yiddish
/// - Zulu.
const glvLanguageTranslations = [
  TranslatedName(LangEng(), name: "Manx"),
  TranslatedName(LangAmh(), name: "ማንክስኛ"),
  TranslatedName(LangAra(), name: "المنكية"),
  TranslatedName(LangAze(), name: "manks"),
  TranslatedName(LangBul(), name: "манкски"),
  TranslatedName(LangBen(), name: "ম্যাঙ্কস"),
  TranslatedName(LangBre(), name: "manaveg"),
  TranslatedName(LangBos(), name: "manks"),
  TranslatedName(LangBos(), name: "манкс", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "manx"),
  TranslatedName(LangCes(), name: "manština"),
  TranslatedName(LangCym(), name: "Manaweg"),
  TranslatedName(LangDan(), name: "manx"),
  TranslatedName(LangEll(), name: "Μανξ"),
  TranslatedName(LangSpa(), name: "manés"),
  TranslatedName(LangEst(), name: "mänksi"),
  TranslatedName(LangEus(), name: "manxera"),
  TranslatedName(LangFas(), name: "مانی"),
  TranslatedName(LangFin(), name: "manksi"),
  TranslatedName(LangFra(), name: "manx"),
  TranslatedName(LangFry(), name: "Manks"),
  TranslatedName(LangGle(), name: "Manainnis"),
  TranslatedName(LangGla(), name: "Gaelg"),
  TranslatedName(LangGlg(), name: "manx"),
  TranslatedName(LangGuj(), name: "માંક્સ"),
  TranslatedName(LangGlv(), name: "Gaelg"),
  TranslatedName(LangHeb(), name: "מאנית"),
  TranslatedName(LangHin(), name: "मैंक्स"),
  TranslatedName(LangHrv(), name: "manski"),
  TranslatedName(LangHun(), name: "man-szigeti"),
  TranslatedName(LangHye(), name: "մեներեն"),
  TranslatedName(LangIsl(), name: "manska"),
  TranslatedName(LangIta(), name: "manx"),
  TranslatedName(LangJpn(), name: "マン島語"),
  TranslatedName(LangKat(), name: "მენური"),
  TranslatedName(LangKaz(), name: "мэнс"),
  TranslatedName(LangKan(), name: "ಮ್ಯಾಂಕ್ಸ್"),
  TranslatedName(LangKor(), name: "맹크스어"),
  TranslatedName(LangKas(), name: "مینٛکس"),
  TranslatedName(LangKir(), name: "манксыча"),
  TranslatedName(LangLao(), name: "ແມງຊ໌"),
  TranslatedName(LangLit(), name: "meniečių"),
  TranslatedName(LangLav(), name: "meniešu"),
  TranslatedName(LangMkd(), name: "манкс"),
  TranslatedName(LangMal(), name: "മാൻസ്"),
  TranslatedName(LangMon(), name: "манкс"),
  TranslatedName(LangMar(), name: "मांक्स"),
  TranslatedName(LangMlt(), name: "Manks"),
  TranslatedName(LangMya(), name: "မန်းဇ်"),
  TranslatedName(LangNob(), name: "mansk"),
  TranslatedName(LangNep(), name: "मान्क्स"),
  TranslatedName(LangNno(), name: "manx"),
  TranslatedName(LangNor(), name: "mansk"),
  TranslatedName(LangOri(), name: "ମାଁକ୍ସ"),
  TranslatedName(LangPan(), name: "ਮੈਂਕਸ"),
  TranslatedName(LangPol(), name: "manx"),
  TranslatedName(LangPor(), name: "manx"),
  TranslatedName(LangRoh(), name: "manx"),
  TranslatedName(LangRon(), name: "manx"),
  TranslatedName(LangRus(), name: "мэнский"),
  TranslatedName(LangSme(), name: "manksgiella"),
  TranslatedName(LangSin(), name: "මැන්ක්ස්"),
  TranslatedName(LangSlk(), name: "mančina"),
  TranslatedName(LangSlv(), name: "manščina"),
  TranslatedName(LangSqi(), name: "mankse"),
  TranslatedName(LangSrp(), name: "Манкс"),
  TranslatedName(LangSrp(), name: "Manks", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "manx"),
  TranslatedName(LangSwa(), name: "Kimanx"),
  TranslatedName(LangTam(), name: "மேங்க்ஸ்"),
  TranslatedName(LangTel(), name: "మంకస్"),
  TranslatedName(LangTha(), name: "มานซ์"),
  TranslatedName(LangTon(), name: "lea fakamangikī"),
  TranslatedName(LangTur(), name: "Manks"),
  TranslatedName(LangUig(), name: "مانچە"),
  TranslatedName(LangUkr(), name: "менкська"),
  TranslatedName(LangUrd(), name: "مینکس"),
  TranslatedName(LangUzb(), name: "mencha"),
  TranslatedName(LangVie(), name: "Tiếng Manx"),
  TranslatedName(LangYid(), name: "מאַנקס"),
  TranslatedName(LangZho(), name: "马恩岛文"),
  TranslatedName(LangZho(), name: "曼島文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Manx"),
];
