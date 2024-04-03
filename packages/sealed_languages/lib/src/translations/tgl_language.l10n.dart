import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 91 translations for a Tagalog language:
/// - (Eastern) Punjabi
/// - Afrikaans
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
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - Dutch
/// - English
/// - Esperanto
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
/// - Kazakh
/// - Khmer
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malay
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Pashto (Pushto)
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
const tglLanguageTranslations = [
  TranslatedName(LangEng(), name: "Tagalog"),
  TranslatedName(LangAmh(), name: "ታጋሎገኛ"),
  TranslatedName(LangAra(), name: "التاغالوغية"),
  TranslatedName(LangAze(), name: "taqaloq dili"),
  TranslatedName(LangBul(), name: "тагалог"),
  TranslatedName(LangBen(), name: "তাগালগ"),
  TranslatedName(LangBre(), name: "tagalog"),
  TranslatedName(LangBos(), name: "tagalski"),
  TranslatedName(LangBos(), name: "тагалски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "tagàlog"),
  TranslatedName(LangCes(), name: "tagalog"),
  TranslatedName(LangDan(), name: "tagalog"),
  TranslatedName(LangEwe(), name: "tagalogbe"),
  TranslatedName(LangEll(), name: "Ταγκαλόγκ"),
  TranslatedName(LangEpo(), name: "tagaloga"),
  TranslatedName(LangSpa(), name: "tagalo"),
  TranslatedName(LangEst(), name: "tagalogi"),
  TranslatedName(LangEus(), name: "tagalog"),
  TranslatedName(LangFas(), name: "تاگالوگی"),
  TranslatedName(LangFin(), name: "tagalog"),
  TranslatedName(LangFao(), name: "tagalog"),
  TranslatedName(LangFra(), name: "tagalog"),
  TranslatedName(LangGle(), name: "Tagálaigis"),
  TranslatedName(LangGlg(), name: "tagalo"),
  TranslatedName(LangGuj(), name: "ટાગાલોગ"),
  TranslatedName(LangHeb(), name: "טגלוג"),
  TranslatedName(LangHin(), name: "तागालोग"),
  TranslatedName(LangHrv(), name: "tagalog"),
  TranslatedName(LangHun(), name: "tagalog"),
  TranslatedName(LangIsl(), name: "tagalog"),
  TranslatedName(LangIta(), name: "tagalog"),
  TranslatedName(LangJpn(), name: "タガログ語"),
  TranslatedName(LangKan(), name: "ಟ್ಯಾಗಲೋಗ್"),
  TranslatedName(LangKor(), name: "타갈로그어"),
  TranslatedName(LangKas(), name: "تَماشیک"),
  TranslatedName(LangLtz(), name: "Dagalog"),
  TranslatedName(LangLao(), name: "ຕາກາລອກ"),
  TranslatedName(LangLit(), name: "tagalogų"),
  TranslatedName(LangLav(), name: "tagalu"),
  TranslatedName(LangMkd(), name: "тагалог"),
  TranslatedName(LangMal(), name: "തഗാലോഗ്"),
  TranslatedName(LangMar(), name: "टागालोग"),
  TranslatedName(LangNob(), name: "tagalog"),
  TranslatedName(LangNno(), name: "tagalog"),
  TranslatedName(LangNor(), name: "tagalog"),
  TranslatedName(LangOri(), name: "ଟାଗାଲଗ୍"),
  TranslatedName(LangPol(), name: "tagalski"),
  TranslatedName(LangPor(), name: "tagalo"),
  TranslatedName(LangRoh(), name: "tagalog"),
  TranslatedName(LangRon(), name: "tagalog"),
  TranslatedName(LangRus(), name: "тагалог"),
  TranslatedName(LangSlk(), name: "tagalčina"),
  TranslatedName(LangSlv(), name: "tagalogščina"),
  TranslatedName(LangSrp(), name: "Тагалски"),
  TranslatedName(LangSrp(), name: "Tagalski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "tagalog"),
  TranslatedName(LangTam(), name: "டாகாலோக்"),
  TranslatedName(LangTel(), name: "తగలోగ్"),
  TranslatedName(LangTha(), name: "ตากาล็อก"),
  TranslatedName(LangTon(), name: "lea fakatakāloka"),
  TranslatedName(LangTur(), name: "Takalotça"),
  TranslatedName(LangUig(), name: "تاگالوگچە"),
  TranslatedName(LangUkr(), name: "тагальська"),
  TranslatedName(LangVie(), name: "Tiếng Tagalog"),
  TranslatedName(LangYid(), name: "טאַגאַלאג"),
  TranslatedName(LangZho(), name: "塔加洛文"),
  TranslatedName(LangZho(), name: "塔加路族文", script: ScriptHant()),
  TranslatedName(LangHye(), name: "տագալերեն"),
  TranslatedName(LangUrd(), name: "ٹیگا لوگ"),
  TranslatedName(LangAsm(), name: "টাগালগ"),
  TranslatedName(LangBel(), name: "тагальская"),
  TranslatedName(LangDeu(), name: "Tagalog"),
  TranslatedName(LangKat(), name: "ტაგალური"),
  TranslatedName(LangKaz(), name: "тагалог"),
  TranslatedName(LangKhm(), name: "ហ្វីលីពីន"),
  TranslatedName(LangKir(), name: "тагал"),
  TranslatedName(LangMon(), name: "тагалог"),
  TranslatedName(LangMya(), name: "တဂါးလော့ဂ်"),
  TranslatedName(LangNep(), name: "फिलिपिनो"),
  TranslatedName(LangPan(), name: "ਤਗਾਲੋਗ"),
  TranslatedName(LangPus(), name: "ټوی"),
  TranslatedName(LangSin(), name: "ටැගලොග්"),
  TranslatedName(LangSqi(), name: "Tagalogase"),
  TranslatedName(LangSwa(), name: "Kitagalogi"),
  TranslatedName(LangUzb(), name: "tagalog"),
  TranslatedName(LangZul(), name: "isi-Tagalog"),
  TranslatedName(LangCym(), name: "Tagalog"),
  TranslatedName(LangInd(), name: "Tagalog"),
  TranslatedName(LangNld(), name: "Tagalog"),
  TranslatedName(LangMsa(), name: "Tagalog"),
  TranslatedName(LangAfr(), name: "Tagalog"),
];
