import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 104 translations for a Marshallese language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
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
/// - Chechen
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - Dutch
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
/// - Igbo
/// - Indonesian
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
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malay
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
/// - Tagalog
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
/// - Western Frisian
/// - Yoruba
/// - Zulu.
const mahLanguageTranslations = [
  TranslatedName(LangEng(), name: "Marshallese"),
  TranslatedName(LangAra(), name: "المارشالية"),
  TranslatedName(LangAze(), name: "marşal dili"),
  TranslatedName(LangBul(), name: "маршалезе"),
  TranslatedName(LangBen(), name: "মার্শালিজ"),
  TranslatedName(LangBre(), name: "marshall"),
  TranslatedName(LangBos(), name: "maršalski"),
  TranslatedName(LangBos(), name: "маршалски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "marshallès"),
  TranslatedName(LangCes(), name: "maršálština"),
  TranslatedName(LangCym(), name: "Marsialeg"),
  TranslatedName(LangDan(), name: "marshallese"),
  TranslatedName(LangDeu(), name: "Marschallesisch"),
  TranslatedName(LangEll(), name: "Μάρσαλ"),
  TranslatedName(LangSpa(), name: "marshalés"),
  TranslatedName(LangEst(), name: "maršalli"),
  TranslatedName(LangFas(), name: "مارشالی"),
  TranslatedName(LangFin(), name: "marshall"),
  TranslatedName(LangFra(), name: "marshall"),
  TranslatedName(LangFry(), name: "Marshallees"),
  TranslatedName(LangGle(), name: "Mairsillis"),
  TranslatedName(LangGla(), name: "Marshallais"),
  TranslatedName(LangGuj(), name: "માર્શલીઝ"),
  TranslatedName(LangHeb(), name: "מרשאלס"),
  TranslatedName(LangHin(), name: "मार्शलीज़"),
  TranslatedName(LangHrv(), name: "maršalski"),
  TranslatedName(LangHun(), name: "marshalli"),
  TranslatedName(LangInd(), name: "Marshall"),
  TranslatedName(LangIsl(), name: "marshallska"),
  TranslatedName(LangIta(), name: "marshallese"),
  TranslatedName(LangJpn(), name: "マーシャル語"),
  TranslatedName(LangKan(), name: "ಮಾರ್ಶಲ್ಲೀಸ್"),
  TranslatedName(LangKor(), name: "마셜제도어"),
  TranslatedName(LangKas(), name: "مارشَلیٖز"),
  TranslatedName(LangLtz(), name: "Marschallesesch"),
  TranslatedName(LangLao(), name: "ມາຊານເລັດ"),
  TranslatedName(LangLit(), name: "Maršalo Salų"),
  TranslatedName(LangLav(), name: "māršaliešu"),
  TranslatedName(LangMkd(), name: "маршалски"),
  TranslatedName(LangMal(), name: "മാർഷല്ലീസ്"),
  TranslatedName(LangMar(), name: "मार्शलीज"),
  TranslatedName(LangMlt(), name: "Marxall"),
  TranslatedName(LangNob(), name: "marshallesisk"),
  TranslatedName(LangNld(), name: "Marshallees"),
  TranslatedName(LangNno(), name: "marshallesisk"),
  TranslatedName(LangNor(), name: "marshallesisk"),
  TranslatedName(LangOri(), name: "ମାର୍ଶାଲୀଜ୍"),
  TranslatedName(LangPol(), name: "marshall"),
  TranslatedName(LangPor(), name: "marshalês"),
  TranslatedName(LangRoh(), name: "marschallais"),
  TranslatedName(LangRon(), name: "marshalleză"),
  TranslatedName(LangRus(), name: "маршалльский"),
  TranslatedName(LangSlk(), name: "kajin-majol"),
  TranslatedName(LangSlv(), name: "marshallovščina"),
  TranslatedName(LangSrp(), name: "Маршалски"),
  TranslatedName(LangSrp(), name: "Maršalski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "marshalliska"),
  TranslatedName(LangTam(), name: "மார்ஷெலிஷ்"),
  TranslatedName(LangTel(), name: "మార్షలీస్"),
  TranslatedName(LangTha(), name: "มาร์แชลลิส"),
  TranslatedName(LangTon(), name: "lea fakamāsolo"),
  TranslatedName(LangTur(), name: "Marshall Adaları Dili"),
  TranslatedName(LangUig(), name: "مارشالچە"),
  TranslatedName(LangUkr(), name: "маршалльська"),
  TranslatedName(LangVie(), name: "Tiếng Marshall"),
  TranslatedName(LangZho(), name: "马绍尔文"),
  TranslatedName(LangZho(), name: "馬紹爾文", script: ScriptHant()),
  TranslatedName(LangAfr(), name: "Marshallees"),
  TranslatedName(LangAmh(), name: "ማርሻሊዝ"),
  TranslatedName(LangAsm(), name: "মাৰ্চলিজ"),
  TranslatedName(LangBel(), name: "маршальская"),
  TranslatedName(LangChe(), name: "маршаллийн"),
  TranslatedName(LangEus(), name: "marshallera"),
  TranslatedName(LangFul(), name: "𞤃𞤢𞤪𞤧𞤢𞤤𞤫𞥅𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangFao(), name: "marshallesiskt"),
  TranslatedName(LangGlg(), name: "marshalés"),
  TranslatedName(LangHye(), name: "մարշալերեն"),
  TranslatedName(LangIna(), name: "marshallese"),
  TranslatedName(LangIbo(), name: "Marshalese"),
  TranslatedName(LangKat(), name: "მარშალური"),
  TranslatedName(LangKaz(), name: "маршалл тілі"),
  TranslatedName(LangKhm(), name: "ម៉ាស់សល"),
  TranslatedName(LangKur(), name: "marşalî"),
  TranslatedName(LangKir(), name: "маршаллча"),
  TranslatedName(LangMri(), name: "Mararīhi"),
  TranslatedName(LangMon(), name: "маршалл"),
  TranslatedName(LangMsa(), name: "Marshall"),
  TranslatedName(LangMya(), name: "မာရှယ်လိဇ်"),
  TranslatedName(LangNep(), name: "मार्साली"),
  TranslatedName(LangPan(), name: "ਮਾਰਸ਼ਲੀਜ਼"),
  TranslatedName(LangPus(), name: "مارشلیز"),
  TranslatedName(LangQue(), name: "Marshallese Simi"),
  TranslatedName(LangSrd(), name: "marshallesu"),
  TranslatedName(LangSnd(), name: "مارشليز"),
  TranslatedName(LangSin(), name: "මාශලීස්"),
  TranslatedName(LangSqi(), name: "marshallisht"),
  TranslatedName(LangSwa(), name: "Kimashale"),
  TranslatedName(LangTir(), name: "ማርሻሊዝኛ"),
  TranslatedName(LangTuk(), name: "marşall dili"),
  TranslatedName(LangUrd(), name: "مارشلیز"),
  TranslatedName(LangUzb(), name: "marshall"),
  TranslatedName(LangYor(), name: "Èdè Mashali"),
  TranslatedName(LangZul(), name: "isi-Marshallese"),
  TranslatedName(LangTgl(), name: "Marshallese"),
];
