import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 85 translations for a Quechua language:
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
/// - Dzongkha
/// - English
/// - Esperanto
/// - Estonian
/// - Ewe
/// - Faroese
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
/// - Khmer
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Macedonian
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
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
/// - Zulu.
const queLanguageTranslations = [
  TranslatedName(LangEng(), name: "Quechua"),
  TranslatedName(LangAmh(), name: "ኵቿኛ"),
  TranslatedName(LangAra(), name: "الكويتشوا"),
  TranslatedName(LangAze(), name: "keçua"),
  TranslatedName(LangBul(), name: "кечуа"),
  TranslatedName(LangBen(), name: "কেচুয়া"),
  TranslatedName(LangBre(), name: "kechuaeg"),
  TranslatedName(LangBos(), name: "kvenča"),
  TranslatedName(LangBos(), name: "квенча", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "quítxua"),
  TranslatedName(LangCes(), name: "kečuánština"),
  TranslatedName(LangDan(), name: "quechua"),
  TranslatedName(LangDzo(), name: "ཀྭེ་ཆུ་ཨ་ཁ"),
  TranslatedName(LangEwe(), name: "kwetsuagbe"),
  TranslatedName(LangEll(), name: "Κετσούα"),
  TranslatedName(LangEpo(), name: "keĉua"),
  TranslatedName(LangSpa(), name: "quechua"),
  TranslatedName(LangEst(), name: "ketšua"),
  TranslatedName(LangEus(), name: "quechuera"),
  TranslatedName(LangFas(), name: "کچوایی"),
  TranslatedName(LangFin(), name: "ketšua"),
  TranslatedName(LangFao(), name: "quechua"),
  TranslatedName(LangFra(), name: "quechua"),
  TranslatedName(LangGle(), name: "Ceatsuais"),
  TranslatedName(LangGla(), name: "Ceatsua"),
  TranslatedName(LangGlg(), name: "quechua"),
  TranslatedName(LangGuj(), name: "ક્વેચુઆ"),
  TranslatedName(LangHeb(), name: "קצ׳ואה"),
  TranslatedName(LangHin(), name: "क्वेचुआ"),
  TranslatedName(LangHrv(), name: "kečua"),
  TranslatedName(LangHun(), name: "kecsua"),
  TranslatedName(LangHye(), name: "քեչուա"),
  TranslatedName(LangIsl(), name: "kvesjúa"),
  TranslatedName(LangIta(), name: "quechua"),
  TranslatedName(LangJpn(), name: "ケチュア語"),
  TranslatedName(LangKat(), name: "კეჩუა"),
  TranslatedName(LangKaz(), name: "кечуа"),
  TranslatedName(LangKhm(), name: "កេទជួអា"),
  TranslatedName(LangKan(), name: "ಕ್ವೆಚುವಾ"),
  TranslatedName(LangKor(), name: "케추아어"),
  TranslatedName(LangKas(), name: "کُویشُوا"),
  TranslatedName(LangKir(), name: "кечуача"),
  TranslatedName(LangLao(), name: "ຄີຊົວ"),
  TranslatedName(LangLit(), name: "kečujų"),
  TranslatedName(LangLav(), name: "kečvu"),
  TranslatedName(LangMkd(), name: "кечуански"),
  TranslatedName(LangMal(), name: "ക്വെച്ചുവ"),
  TranslatedName(LangMon(), name: "кечуа"),
  TranslatedName(LangMar(), name: "क्वेचुआ"),
  TranslatedName(LangMlt(), name: "Keċwa"),
  TranslatedName(LangMya(), name: "ခက်ချ်ဝါ"),
  TranslatedName(LangNob(), name: "quechua"),
  TranslatedName(LangNep(), name: "क्वेचुवा"),
  TranslatedName(LangNno(), name: "quechua"),
  TranslatedName(LangNor(), name: "quechua"),
  TranslatedName(LangOri(), name: "କ୍ୱେଚୁଆ"),
  TranslatedName(LangPan(), name: "ਕਕੇਸ਼ੁਆ"),
  TranslatedName(LangPol(), name: "keczua"),
  TranslatedName(LangPor(), name: "quíchua"),
  TranslatedName(LangQue(), name: "Runasimi"),
  TranslatedName(LangRoh(), name: "quechua"),
  TranslatedName(LangRon(), name: "quechua"),
  TranslatedName(LangRus(), name: "кечуа"),
  TranslatedName(LangSin(), name: "ක්වීචුවා"),
  TranslatedName(LangSlk(), name: "kečuánčina"),
  TranslatedName(LangSlv(), name: "kečuanščina"),
  TranslatedName(LangSqi(), name: "keçua"),
  TranslatedName(LangSrp(), name: "кечуа"),
  TranslatedName(LangSrp(), name: "kečua", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "quechua"),
  TranslatedName(LangSwa(), name: "Kiquechua"),
  TranslatedName(LangTam(), name: "கிவேசுவா"),
  TranslatedName(LangTel(), name: "కెషుయా"),
  TranslatedName(LangTha(), name: "ควิชัว"),
  TranslatedName(LangTon(), name: "lea fakakuetisa"),
  TranslatedName(LangTur(), name: "Keçuvaca"),
  TranslatedName(LangUig(), name: "كېچياچە"),
  TranslatedName(LangUkr(), name: "кечуа"),
  TranslatedName(LangUrd(), name: "کویچوآ"),
  TranslatedName(LangUzb(), name: "qvechuancha"),
  TranslatedName(LangUzb(), name: "Квечуа", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Quechua"),
  TranslatedName(LangZho(), name: "盖丘亚文"),
  TranslatedName(LangZho(), name: "蓋楚瓦文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Quechua"),
];
