import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 85 translations for a Māori language:
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
/// - Yiddish
/// - Zulu.
const mriLanguageTranslations = [
  TranslatedName(LangEng(), name: "Maori"),
  TranslatedName(LangAmh(), name: "ማዮሪኛ"),
  TranslatedName(LangAra(), name: "الماورية"),
  TranslatedName(LangAze(), name: "maori"),
  TranslatedName(LangBul(), name: "маорски"),
  TranslatedName(LangBen(), name: "মাওরি"),
  TranslatedName(LangBre(), name: "maori"),
  TranslatedName(LangBos(), name: "maorski"),
  TranslatedName(LangBos(), name: "маорски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "maori"),
  TranslatedName(LangCes(), name: "maorština"),
  TranslatedName(LangDan(), name: "maori"),
  TranslatedName(LangDzo(), name: "མ་ཨོ་རི་ཁ"),
  TranslatedName(LangEwe(), name: "maorgbe"),
  TranslatedName(LangEll(), name: "Μάορι"),
  TranslatedName(LangEpo(), name: "maoria"),
  TranslatedName(LangSpa(), name: "maorí"),
  TranslatedName(LangEst(), name: "maoori"),
  TranslatedName(LangEus(), name: "maoriera"),
  TranslatedName(LangFas(), name: "مائوریایی"),
  TranslatedName(LangFin(), name: "maori"),
  TranslatedName(LangFao(), name: "maoriskt"),
  TranslatedName(LangFra(), name: "maori"),
  TranslatedName(LangGle(), name: "Maorais"),
  TranslatedName(LangGla(), name: "Māori"),
  TranslatedName(LangGlg(), name: "maorí"),
  TranslatedName(LangGuj(), name: "માઓરી"),
  TranslatedName(LangHeb(), name: "מאורית"),
  TranslatedName(LangHin(), name: "माओरी"),
  TranslatedName(LangHrv(), name: "maorski"),
  TranslatedName(LangHun(), name: "maori"),
  TranslatedName(LangHye(), name: "մաորի"),
  TranslatedName(LangIsl(), name: "maorí"),
  TranslatedName(LangIta(), name: "maori"),
  TranslatedName(LangJpn(), name: "マオリ語"),
  TranslatedName(LangKat(), name: "მაორი"),
  TranslatedName(LangKaz(), name: "маори"),
  TranslatedName(LangKhm(), name: "ម៉ោរី"),
  TranslatedName(LangKan(), name: "ಮಾವೋರಿ"),
  TranslatedName(LangKor(), name: "마오리어"),
  TranslatedName(LangKas(), name: "ماوری"),
  TranslatedName(LangKir(), name: "маориче"),
  TranslatedName(LangLao(), name: "ມາວຣິ"),
  TranslatedName(LangLit(), name: "maorių"),
  TranslatedName(LangLav(), name: "maoru"),
  TranslatedName(LangMkd(), name: "маорски"),
  TranslatedName(LangMal(), name: "മവോറി"),
  TranslatedName(LangMon(), name: "маори"),
  TranslatedName(LangMar(), name: "माओरी"),
  TranslatedName(
    LangMya(),
    name: "မောင်းရီ (နယူးဇီလန်ကျွန်းရှိ ပင်ရင်းတိုင်းရင်းသားလူမျိုး)",
  ),
  TranslatedName(LangNob(), name: "maori"),
  TranslatedName(LangNep(), name: "माओरी"),
  TranslatedName(LangNno(), name: "maori"),
  TranslatedName(LangNor(), name: "maori"),
  TranslatedName(LangOri(), name: "ମାଓରୀ"),
  TranslatedName(LangPan(), name: "ਮਾਉਰੀ"),
  TranslatedName(LangPol(), name: "maoryjski"),
  TranslatedName(LangPor(), name: "maori"),
  TranslatedName(LangQue(), name: "Maori Simi"),
  TranslatedName(LangRoh(), name: "maori"),
  TranslatedName(LangRon(), name: "maori"),
  TranslatedName(LangRus(), name: "маори"),
  TranslatedName(LangSme(), name: "maorigiella"),
  TranslatedName(LangSin(), name: "මාවොරි"),
  TranslatedName(LangSlk(), name: "maorijčina"),
  TranslatedName(LangSlv(), name: "maorščina"),
  TranslatedName(LangSqi(), name: "maorisht"),
  TranslatedName(LangSrp(), name: "маорски"),
  TranslatedName(LangSrp(), name: "maorski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "maori"),
  TranslatedName(LangSwa(), name: "Kimaori"),
  TranslatedName(LangTam(), name: "மௌரி"),
  TranslatedName(LangTel(), name: "మయోరి"),
  TranslatedName(LangTha(), name: "เมารี"),
  TranslatedName(LangTon(), name: "lea fakamauli"),
  TranslatedName(LangTur(), name: "Maori Dili"),
  TranslatedName(LangUig(), name: "ماۋرىچە"),
  TranslatedName(LangUkr(), name: "маорі"),
  TranslatedName(LangUrd(), name: "ماؤری"),
  TranslatedName(LangUzb(), name: "maoriycha"),
  TranslatedName(LangUzb(), name: "Маори", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Maori"),
  TranslatedName(LangYid(), name: "מאַאריש"),
  TranslatedName(LangZho(), name: "毛利文"),
  TranslatedName(LangZul(), name: "isi-Maori"),
];
