import "../model/language/language.dart";
import "../model/script/writing_system.dart";
import "../model/translated_name.dart";

/// Provides 100 translations for a Kanuri language:
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
/// - Tajik
/// - Tamil
/// - Tatar
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
const kauLanguageTranslations = [
  TranslatedName(LangEng(), name: "Kanuri"),
  TranslatedName(LangAra(), name: "الكانيوري"),
  TranslatedName(LangAze(), name: "kanur dili"),
  TranslatedName(LangBul(), name: "канури"),
  TranslatedName(LangBen(), name: "কানুরি"),
  TranslatedName(LangBre(), name: "kanouri"),
  TranslatedName(LangBos(), name: "kanuri"),
  TranslatedName(LangBos(), name: "канури", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "kanuri"),
  TranslatedName(LangCes(), name: "kanuri"),
  TranslatedName(LangCym(), name: "Canwri"),
  TranslatedName(LangDan(), name: "kanuri"),
  TranslatedName(LangDeu(), name: "Kanuri-Sprache"),
  TranslatedName(LangEll(), name: "Κανούρι"),
  TranslatedName(LangSpa(), name: "kanuri"),
  TranslatedName(LangEst(), name: "kanuri"),
  TranslatedName(LangFas(), name: "کانوریایی"),
  TranslatedName(LangFin(), name: "kanuri"),
  TranslatedName(LangFra(), name: "kanouri"),
  TranslatedName(LangGle(), name: "Canúiris"),
  TranslatedName(LangGuj(), name: "કનુરી"),
  TranslatedName(LangHeb(), name: "קאנורי"),
  TranslatedName(LangHin(), name: "कनुरी"),
  TranslatedName(LangHrv(), name: "kanuri"),
  TranslatedName(LangHun(), name: "kanuri"),
  TranslatedName(LangIsl(), name: "kanúrí"),
  TranslatedName(LangIta(), name: "kanuri"),
  TranslatedName(LangJpn(), name: "カヌリ語"),
  TranslatedName(LangKat(), name: "კანური"),
  TranslatedName(LangKan(), name: "ಕನುರಿ"),
  TranslatedName(LangKor(), name: "칸누리어"),
  TranslatedName(LangKas(), name: "کَنوٗری"),
  TranslatedName(LangLtz(), name: "Kanuri-Sprooch"),
  TranslatedName(LangLao(), name: "ຄານຸລິ"),
  TranslatedName(LangLit(), name: "kanuri"),
  TranslatedName(LangLav(), name: "kanuru"),
  TranslatedName(LangMkd(), name: "канури"),
  TranslatedName(LangMal(), name: "കനൂറി"),
  TranslatedName(LangMar(), name: "कनुरी"),
  TranslatedName(LangNob(), name: "kanuri"),
  TranslatedName(LangNno(), name: "kanuri"),
  TranslatedName(LangNor(), name: "kanuri"),
  TranslatedName(LangOri(), name: "କନୁରୀ"),
  TranslatedName(LangPol(), name: "kanuri"),
  TranslatedName(LangPor(), name: "canúri"),
  TranslatedName(LangRoh(), name: "kanuri"),
  TranslatedName(LangRon(), name: "kanuri"),
  TranslatedName(LangRus(), name: "канури"),
  TranslatedName(LangSlk(), name: "kanurijčina"),
  TranslatedName(LangSlv(), name: "kanurščina"),
  TranslatedName(LangSrp(), name: "Канури"),
  TranslatedName(LangSwe(), name: "kanuri"),
  TranslatedName(LangTam(), name: "கனுரி"),
  TranslatedName(LangTel(), name: "కానురి"),
  TranslatedName(LangTha(), name: "คานูรี"),
  TranslatedName(LangTon(), name: "lea fakakanuli"),
  TranslatedName(LangUig(), name: "كانۇرىچە"),
  TranslatedName(LangUkr(), name: "канурі"),
  TranslatedName(LangVie(), name: "Tiếng Kanuri"),
  TranslatedName(LangZho(), name: "卡努里文"),
  TranslatedName(LangZho(), name: "卡努裡文", script: ScriptHant()),
  TranslatedName(LangAmh(), name: "ካኑሪ"),
  TranslatedName(LangAsm(), name: "কানুৰি"),
  TranslatedName(LangBel(), name: "кануры"),
  TranslatedName(LangChe(), name: "канури"),
  TranslatedName(LangEus(), name: "kanuriera"),
  TranslatedName(LangFul(), name: "𞤑𞤮𞥅𞤤𞤫𞥅𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangFao(), name: "kanuri"),
  TranslatedName(LangGlg(), name: "kanuri"),
  TranslatedName(LangHye(), name: "կանուրի"),
  TranslatedName(LangIna(), name: "kanuri"),
  TranslatedName(LangKaz(), name: "канури тілі"),
  TranslatedName(LangKhm(), name: "កានូរី"),
  TranslatedName(LangKur(), name: "kanuriyî"),
  TranslatedName(LangKir(), name: "кануриче"),
  TranslatedName(LangMon(), name: "канури"),
  TranslatedName(LangMya(), name: "ကနူရီ"),
  TranslatedName(LangNep(), name: "कानुरी"),
  TranslatedName(LangPan(), name: "ਕਨੂਰੀ"),
  TranslatedName(LangPus(), name: "کنوری"),
  TranslatedName(LangQue(), name: "Kanuri Simi"),
  TranslatedName(LangSrd(), name: "kanuri"),
  TranslatedName(LangSnd(), name: "ڪنوري"),
  TranslatedName(LangSin(), name: "කනුරි"),
  TranslatedName(LangSqi(), name: "kanurisht"),
  TranslatedName(LangSwa(), name: "Kikanuri"),
  TranslatedName(LangTgk(), name: "канурӣ"),
  TranslatedName(LangTir(), name: "ካኑሪ"),
  TranslatedName(LangTuk(), name: "kanuri"),
  TranslatedName(LangTur(), name: "Kanuri dili"),
  TranslatedName(LangTat(), name: "канури"),
  TranslatedName(LangUrd(), name: "کنوری"),
  TranslatedName(LangUzb(), name: "kanuri"),
  TranslatedName(LangYor(), name: "Èdè Kanuri"),
  TranslatedName(LangZul(), name: "isi-Kanuri"),
  TranslatedName(LangAfr(), name: "Kanuri"),
  TranslatedName(LangInd(), name: "Kanuri"),
  TranslatedName(LangMsa(), name: "Kanuri"),
  TranslatedName(LangNld(), name: "Kanuri"),
  TranslatedName(LangTgl(), name: "Kanuri"),
];
