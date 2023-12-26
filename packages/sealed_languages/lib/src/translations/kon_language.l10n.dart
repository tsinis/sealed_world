import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 84 translations for a Kongo language:
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
/// - Zulu.
const konLanguageTranslations = [
  TranslatedName(LangEng(), name: "Kongo"),
  TranslatedName(LangAfr(), name: "Kongolees"),
  TranslatedName(LangAmh(), name: "ኮንጎኛ"),
  TranslatedName(LangAra(), name: "الكونغو"),
  TranslatedName(LangAze(), name: "konqo dili"),
  TranslatedName(LangBul(), name: "конгоански"),
  TranslatedName(LangBen(), name: "কঙ্গো"),
  TranslatedName(LangBre(), name: "kongo"),
  TranslatedName(LangBos(), name: "kongo"),
  TranslatedName(LangBos(), name: "конго", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "kongo"),
  TranslatedName(LangCes(), name: "konžština"),
  TranslatedName(LangCym(), name: "Congo"),
  TranslatedName(LangDan(), name: "kongo"),
  TranslatedName(LangDeu(), name: "Kongolesisch"),
  TranslatedName(LangEll(), name: "Κονγκό"),
  TranslatedName(LangSpa(), name: "kongo"),
  TranslatedName(LangEst(), name: "kongo"),
  TranslatedName(LangEus(), name: "Kikongoa"),
  TranslatedName(LangFas(), name: "کنگویی"),
  TranslatedName(LangFin(), name: "kongo"),
  TranslatedName(LangFra(), name: "kongo"),
  TranslatedName(LangGle(), name: "Congóis"),
  TranslatedName(LangGlg(), name: "kongo"),
  TranslatedName(LangGuj(), name: "કોંગો"),
  TranslatedName(LangHeb(), name: "קונגו"),
  TranslatedName(LangHin(), name: "कोंगो"),
  TranslatedName(LangHrv(), name: "kongo"),
  TranslatedName(LangHun(), name: "kongo"),
  TranslatedName(LangIsl(), name: "kongóska"),
  TranslatedName(LangIta(), name: "kongo"),
  TranslatedName(LangJpn(), name: "コンゴ語"),
  TranslatedName(LangKat(), name: "კონგო"),
  TranslatedName(LangKan(), name: "ಕೊಂಗೊ"),
  TranslatedName(LangKor(), name: "콩고어"),
  TranslatedName(LangKas(), name: "کونٛگو"),
  TranslatedName(LangLtz(), name: "Kongolesesch"),
  TranslatedName(LangLao(), name: "ຄອງໂກ"),
  TranslatedName(LangLav(), name: "kongu"),
  TranslatedName(LangMkd(), name: "конго"),
  TranslatedName(LangMal(), name: "കോംഗോ"),
  TranslatedName(LangMar(), name: "काँगो"),
  TranslatedName(LangMya(), name: "ကွန်ဂို"),
  TranslatedName(LangNob(), name: "kikongo"),
  TranslatedName(LangNno(), name: "kikongo"),
  TranslatedName(LangNor(), name: "kikongo"),
  TranslatedName(LangOri(), name: "କଙ୍ଗୋ"),
  TranslatedName(LangPol(), name: "kongo"),
  TranslatedName(LangPor(), name: "congolês"),
  TranslatedName(LangPor(), name: "conguês", countryCode: "PT"),
  TranslatedName(LangRoh(), name: "kongo"),
  TranslatedName(LangRon(), name: "congoleză"),
  TranslatedName(LangRus(), name: "конго"),
  TranslatedName(LangSlk(), name: "kongčina"),
  TranslatedName(LangSlv(), name: "kongovščina"),
  TranslatedName(LangSrp(), name: "Конго"),
  TranslatedName(LangSwe(), name: "kikongo"),
  TranslatedName(LangSwa(), name: "Kikongo"),
  TranslatedName(LangTam(), name: "காங்கோ"),
  TranslatedName(LangTel(), name: "కోంగో"),
  TranslatedName(LangTha(), name: "คองโก"),
  TranslatedName(LangTon(), name: "lea fakakongikō"),
  TranslatedName(LangUig(), name: "كونگوچە"),
  TranslatedName(LangUkr(), name: "конґолезька"),
  TranslatedName(LangUrd(), name: "کانگو"),
  TranslatedName(LangVie(), name: "Tiếng Kongo"),
  TranslatedName(LangZho(), name: "刚果文"),
  TranslatedName(LangZho(), name: "剛果文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "Isi-Kongo"),
  TranslatedName(LangLit(), name: "Kongo"),
  TranslatedName(LangNep(), name: "कोङ्गो"),
  TranslatedName(LangTur(), name: "Kongo dili"),
  TranslatedName(LangAsm(), name: "কঙ্গো"),
  TranslatedName(LangBel(), name: "конга"),
  TranslatedName(LangHye(), name: "կոնգո"),
  TranslatedName(LangKaz(), name: "конго"),
  TranslatedName(LangKhm(), name: "កុងហ្គោ"),
  TranslatedName(LangKir(), name: "конгочо"),
  TranslatedName(LangMon(), name: "конго"),
  TranslatedName(LangPan(), name: "ਕਾਂਗੋ"),
  TranslatedName(LangPus(), name: "ګونګ"),
  TranslatedName(LangSin(), name: "කොංගෝ"),
  TranslatedName(LangSqi(), name: "Kongo"),
  TranslatedName(LangUzb(), name: "kongo"),
];
