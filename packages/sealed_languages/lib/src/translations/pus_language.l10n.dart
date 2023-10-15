import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 97 translations for a Pashto (Pushto) language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
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
/// - Kinyarwanda
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
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
/// - Pashto (Pushto)
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
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Western Frisian
/// - Yiddish
/// - Zulu.
const pusLanguageTranslations = [
  TranslatedName(LangEng(), name: "Pashto"),
  TranslatedName(LangAfr(), name: "Pasjto"),
  TranslatedName(LangAmh(), name: "ፓሽቶኛ"),
  TranslatedName(LangAra(), name: "البشتونية"),
  TranslatedName(LangAze(), name: "puştu"),
  TranslatedName(LangBel(), name: "пушту"),
  TranslatedName(LangBul(), name: "пущу"),
  TranslatedName(LangBen(), name: "পাশ্তু"),
  TranslatedName(LangBre(), name: "pachto"),
  TranslatedName(LangBos(), name: "paštunski"),
  TranslatedName(LangBos(), name: "паштунски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "paixtu"),
  TranslatedName(LangCes(), name: "paštština"),
  TranslatedName(LangDan(), name: "pashto"),
  TranslatedName(LangDeu(), name: "Paschtu"),
  TranslatedName(LangDzo(), name: "པཱཤ་ཏོ་ཁ"),
  TranslatedName(LangEwe(), name: "pashtogbe"),
  TranslatedName(LangEll(), name: "Πάστο"),
  TranslatedName(LangEpo(), name: "paŝtoa"),
  TranslatedName(LangSpa(), name: "pastún"),
  TranslatedName(LangEst(), name: "puštu"),
  TranslatedName(LangEus(), name: "paxtuera"),
  TranslatedName(LangFas(), name: "پشتو"),
  TranslatedName(LangFin(), name: "paštu"),
  TranslatedName(LangFao(), name: "afghanskt"),
  TranslatedName(LangFra(), name: "pachto"),
  TranslatedName(LangFry(), name: "Pasjtoe"),
  TranslatedName(LangGle(), name: "Paistis"),
  TranslatedName(LangGla(), name: "Pachtu"),
  TranslatedName(LangGlg(), name: "paxtún"),
  TranslatedName(LangGuj(), name: "પશ્તો"),
  TranslatedName(LangHeb(), name: "פאשטו"),
  TranslatedName(LangHin(), name: "पश्तो"),
  TranslatedName(LangHrv(), name: "paštu"),
  TranslatedName(LangHun(), name: "pastu"),
  TranslatedName(LangHye(), name: "փուշթու"),
  TranslatedName(LangIsl(), name: "pastú"),
  TranslatedName(LangIta(), name: "pashto"),
  TranslatedName(LangJpn(), name: "パシュトゥー語"),
  TranslatedName(LangKat(), name: "პუშტუ"),
  TranslatedName(LangKaz(), name: "пушту"),
  TranslatedName(LangKhm(), name: "បាស្តូ"),
  TranslatedName(LangKan(), name: "ಪಾಷ್ಟೋ"),
  TranslatedName(LangKor(), name: "파슈토어"),
  TranslatedName(LangKas(), name: "پَشتوٗ"),
  TranslatedName(LangKir(), name: "пашточо"),
  TranslatedName(LangLtz(), name: "Paschtu"),
  TranslatedName(LangLao(), name: "ປາສໂຕ"),
  TranslatedName(LangLit(), name: "puštūnų"),
  TranslatedName(LangLav(), name: "puštu"),
  TranslatedName(LangMkd(), name: "паштунски"),
  TranslatedName(LangMal(), name: "പഷ്തു"),
  TranslatedName(LangMon(), name: "пашто"),
  TranslatedName(LangMar(), name: "पश्तो"),
  TranslatedName(LangMlt(), name: "Paxtun"),
  TranslatedName(LangMya(), name: "ပါရှ်တို"),
  TranslatedName(LangNob(), name: "pashto"),
  TranslatedName(LangNep(), name: "पाश्तो"),
  TranslatedName(LangNld(), name: "Pasjtoe"),
  TranslatedName(LangNno(), name: "pashto"),
  TranslatedName(LangNor(), name: "pashto"),
  TranslatedName(LangOri(), name: "ପାସ୍ତୋ"),
  TranslatedName(LangPan(), name: "ਪਸ਼ਤੋ"),
  TranslatedName(LangPol(), name: "paszto"),
  TranslatedName(LangPus(), name: "پښتو"),
  TranslatedName(LangPor(), name: "pashto"),
  TranslatedName(LangPor(), name: "pastó", countryCode: "PT"),
  TranslatedName(LangQue(), name: "Pashto Simi"),
  TranslatedName(LangRoh(), name: "paschto"),
  TranslatedName(LangRon(), name: "paștună"),
  TranslatedName(LangRus(), name: "пушту"),
  TranslatedName(LangKin(), name: "Impashito"),
  TranslatedName(LangSin(), name: "පෂ්ටො"),
  TranslatedName(LangSlk(), name: "paštčina"),
  TranslatedName(LangSlv(), name: "paštunščina"),
  TranslatedName(LangSqi(), name: "pashto"),
  TranslatedName(LangSrp(), name: "паштунски"),
  TranslatedName(LangSrp(), name: "paštunski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "afghanska"),
  TranslatedName(LangSwa(), name: "Kipashto"),
  TranslatedName(LangTam(), name: "பஷ்தோ"),
  TranslatedName(LangTel(), name: "పాష్టో"),
  TranslatedName(LangTha(), name: "พาชตู"),
  TranslatedName(LangTir(), name: "ፓሽቶ"),
  TranslatedName(LangTon(), name: "lea fakapasitō"),
  TranslatedName(LangTur(), name: "Peştuca"),
  TranslatedName(LangUig(), name: "پۇشتۇچە"),
  TranslatedName(LangUkr(), name: "пушту"),
  TranslatedName(LangUrd(), name: "پشتو"),
  TranslatedName(LangUzb(), name: "pushtu tili"),
  TranslatedName(LangUzb(), name: "پشتو", script: ScriptArab()),
  TranslatedName(LangUzb(), name: "Пушту", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Pashto"),
  TranslatedName(LangYid(), name: "פּאַשטאָ"),
  TranslatedName(LangZho(), name: "普什图文"),
  TranslatedName(LangZho(), name: "普什圖文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Pashto"),
];
