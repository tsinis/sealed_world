import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 86 translations for a Dzongkha language:
/// - (Eastern) Punjabi
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
/// - Maltese
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
/// - Tibetan Standard
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Zulu.
const dzoLanguageTranslations = [
  TranslatedName(LangEng(), name: "Dzongkha"),
  TranslatedName(LangAmh(), name: "ድዞንግኻኛ"),
  TranslatedName(LangAra(), name: "الزونخاية"),
  TranslatedName(LangAze(), name: "dzonqa"),
  TranslatedName(LangBul(), name: "дзонха"),
  TranslatedName(LangBen(), name: "জোঙ্গা"),
  TranslatedName(LangBod(), name: "རྫོང་ཁ"),
  TranslatedName(LangBre(), name: "dzongkha"),
  TranslatedName(LangBos(), name: "džonga"),
  TranslatedName(LangBos(), name: "џонга", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "dzongka"),
  TranslatedName(LangCes(), name: "dzongkä"),
  TranslatedName(LangDan(), name: "dzongkha"),
  TranslatedName(LangDeu(), name: "Bhutanisch"),
  TranslatedName(LangDzo(), name: "རྫོང་ཁ"),
  TranslatedName(LangEwe(), name: "dzongkhagbe"),
  TranslatedName(LangEll(), name: "Ντζόνγκχα"),
  TranslatedName(LangEpo(), name: "dzonko"),
  TranslatedName(LangSpa(), name: "dzongkha"),
  TranslatedName(LangEst(), name: "dzongkha"),
  TranslatedName(LangEus(), name: "dzongkha"),
  TranslatedName(LangFas(), name: "جونخایی"),
  TranslatedName(LangFin(), name: "dzongkha"),
  TranslatedName(LangFao(), name: "dzongkha"),
  TranslatedName(LangFra(), name: "dzongkha"),
  TranslatedName(LangGle(), name: "Seoinicis"),
  TranslatedName(LangGlg(), name: "dzongkha"),
  TranslatedName(LangGuj(), name: "ડ્ઝોંગ્ખા"),
  TranslatedName(LangHeb(), name: "דזונקה"),
  TranslatedName(LangHin(), name: "ज़ोन्गखा"),
  TranslatedName(LangHrv(), name: "dzongkha"),
  TranslatedName(LangHun(), name: "butáni"),
  TranslatedName(LangHye(), name: "ջոնգքհա"),
  TranslatedName(LangIsl(), name: "dsongka"),
  TranslatedName(LangIta(), name: "dzongkha"),
  TranslatedName(LangJpn(), name: "ゾンカ語"),
  TranslatedName(LangKat(), name: "ძონგკხა"),
  TranslatedName(LangKaz(), name: "дзонг-кэ"),
  TranslatedName(LangKhm(), name: "ភាសាប៊ូតាន"),
  TranslatedName(LangKan(), name: "ಜೋಂಗ್‌ಖಾ"),
  TranslatedName(LangKor(), name: "종카어"),
  TranslatedName(LangKas(), name: "زونٛگکھا"),
  TranslatedName(LangKir(), name: "жонгуча"),
  TranslatedName(LangLtz(), name: "Bhutanesch"),
  TranslatedName(LangLao(), name: "ດີຊອງຄາ"),
  TranslatedName(LangLit(), name: "botijų"),
  TranslatedName(LangLav(), name: "dzongke"),
  TranslatedName(LangMkd(), name: "ѕонгка"),
  TranslatedName(LangMal(), name: "സോങ്ക"),
  TranslatedName(LangMon(), name: "жонха"),
  TranslatedName(LangMar(), name: "झोंगखा"),
  TranslatedName(LangMlt(), name: "Dżongka"),
  TranslatedName(LangMya(), name: "ဒွန်ကာ"),
  TranslatedName(LangNob(), name: "dzongkha"),
  TranslatedName(LangNep(), name: "जोङ्खा"),
  TranslatedName(LangNno(), name: "dzongkha"),
  TranslatedName(LangNor(), name: "dzongkha"),
  TranslatedName(LangOri(), name: "ଭୂଟାନୀ"),
  TranslatedName(LangPan(), name: "ਜ਼ੋਂਗਖਾ"),
  TranslatedName(LangPol(), name: "dzongkha"),
  TranslatedName(LangPor(), name: "dzonga"),
  TranslatedName(LangRoh(), name: "dzongkha"),
  TranslatedName(LangRon(), name: "dzongkha"),
  TranslatedName(LangRus(), name: "дзонг-кэ"),
  TranslatedName(LangSme(), name: "dzongkhagiella"),
  TranslatedName(LangSin(), name: "ඩිසොන්කා"),
  TranslatedName(LangSlk(), name: "dzongkä"),
  TranslatedName(LangSlv(), name: "dzonka"),
  TranslatedName(LangSqi(), name: "xongka"),
  TranslatedName(LangSrp(), name: "џонга"),
  TranslatedName(LangSrp(), name: "džonga", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "bhutanesiska"),
  TranslatedName(LangSwa(), name: "Kizongkha"),
  TranslatedName(LangTam(), name: "பூடானி"),
  TranslatedName(LangTel(), name: "జొన్ఖా"),
  TranslatedName(LangTha(), name: "ซองคา"),
  TranslatedName(LangTon(), name: "lea fakaputeni"),
  TranslatedName(LangTur(), name: "Butan Dili"),
  TranslatedName(LangUig(), name: "بۇتانچە"),
  TranslatedName(LangUkr(), name: "дзонг-ке"),
  TranslatedName(LangUrd(), name: "ژونگکھا"),
  TranslatedName(LangUzb(), name: "yovoncha"),
  TranslatedName(LangVie(), name: "Tiếng Dzongkha"),
  TranslatedName(LangZho(), name: "不丹文"),
  TranslatedName(LangZho(), name: "宗卡文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Dzongkha"),
];
