import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 103 translations for a Finnish language:
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
/// - Indonesian
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
/// - Malay
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
/// - Oromo
/// - Ossetian (Ossetic)
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
/// - Welsh
/// - Western Frisian
/// - Yiddish
/// - Yoruba
/// - Zulu.
const finLanguageTranslations = [
  TranslatedName(LangEng(), name: "Finnish"),
  TranslatedName(LangAfr(), name: "Fins"),
  TranslatedName(LangAmh(), name: "ፊኒሽ"),
  TranslatedName(LangAra(), name: "الفنلندية"),
  TranslatedName(LangAze(), name: "fin"),
  TranslatedName(LangBel(), name: "фінская"),
  TranslatedName(LangBul(), name: "фински"),
  TranslatedName(LangBen(), name: "ফিনিশ"),
  TranslatedName(LangBre(), name: "finneg"),
  TranslatedName(LangBos(), name: "finski"),
  TranslatedName(LangBos(), name: "фински", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "finès"),
  TranslatedName(LangCes(), name: "finština"),
  TranslatedName(LangCym(), name: "Ffinneg"),
  TranslatedName(LangDan(), name: "finsk"),
  TranslatedName(LangDeu(), name: "Finnisch"),
  TranslatedName(LangDzo(), name: "ཕི་ནིཤ་ཁ"),
  TranslatedName(LangEwe(), name: "finlanɖgbe"),
  TranslatedName(LangEll(), name: "Φινλανδικά"),
  TranslatedName(LangEpo(), name: "finna"),
  TranslatedName(LangSpa(), name: "finés"),
  TranslatedName(LangEst(), name: "soome"),
  TranslatedName(LangEus(), name: "finlandiera"),
  TranslatedName(LangFas(), name: "فنلاندی"),
  TranslatedName(LangFas(), name: "فنلندی", countryCode: "AF"),
  TranslatedName(LangFin(), name: "suomi"),
  TranslatedName(LangFao(), name: "finskt"),
  TranslatedName(LangFra(), name: "finnois"),
  TranslatedName(LangFry(), name: "Finsk"),
  TranslatedName(LangGle(), name: "Fionlainnis"),
  TranslatedName(LangGla(), name: "Fionnlannais"),
  TranslatedName(LangGlg(), name: "finés"),
  TranslatedName(LangGuj(), name: "ફિનિશ"),
  TranslatedName(LangHeb(), name: "פינית"),
  TranslatedName(LangHin(), name: "फ़िनिश"),
  TranslatedName(LangHrv(), name: "finski"),
  TranslatedName(LangHun(), name: "finn"),
  TranslatedName(LangHye(), name: "ֆիններեն"),
  TranslatedName(LangInd(), name: "Suomi"),
  TranslatedName(LangIsl(), name: "finnska"),
  TranslatedName(LangIta(), name: "finlandese"),
  TranslatedName(LangJpn(), name: "フィンランド語"),
  TranslatedName(LangKat(), name: "ფინური"),
  TranslatedName(LangKaz(), name: "фин"),
  TranslatedName(LangKhm(), name: "ហ្វាំងឡង់"),
  TranslatedName(LangKan(), name: "ಫಿನ್ನಿಶ್"),
  TranslatedName(LangKor(), name: "핀란드어"),
  TranslatedName(LangKas(), name: "فِنِش"),
  TranslatedName(LangKir(), name: "финче"),
  TranslatedName(LangLtz(), name: "Finnesch"),
  TranslatedName(LangLao(), name: "ຟິນນິຊ"),
  TranslatedName(LangLit(), name: "suomių"),
  TranslatedName(LangLav(), name: "somu"),
  TranslatedName(LangMkd(), name: "фински"),
  TranslatedName(LangMal(), name: "ഫിന്നിഷ്"),
  TranslatedName(LangMon(), name: "финлянд"),
  TranslatedName(LangMar(), name: "फिन्निश"),
  TranslatedName(LangMsa(), name: "Finland"),
  TranslatedName(LangMlt(), name: "Finlandiż"),
  TranslatedName(LangMya(), name: "ဖင်နစ်ရှ်"),
  TranslatedName(LangNob(), name: "finsk"),
  TranslatedName(LangNep(), name: "फिनिश"),
  TranslatedName(LangNld(), name: "Fins"),
  TranslatedName(LangNno(), name: "finsk"),
  TranslatedName(LangNor(), name: "finsk"),
  TranslatedName(LangOrm(), name: "Afaan Fiilaandi"),
  TranslatedName(LangOri(), name: "ଫିନ୍ନିସ୍"),
  TranslatedName(LangOss(), name: "финнаг"),
  TranslatedName(LangPan(), name: "ਫਿਨਿਸ਼"),
  TranslatedName(LangPol(), name: "fiński"),
  TranslatedName(LangPus(), name: "فینلنډي"),
  TranslatedName(LangPor(), name: "finlandês"),
  TranslatedName(LangQue(), name: "Fines Simi"),
  TranslatedName(LangRoh(), name: "finlandais"),
  TranslatedName(LangRon(), name: "finlandeză"),
  TranslatedName(LangRus(), name: "финский"),
  TranslatedName(LangKin(), name: "Igifinilande"),
  TranslatedName(LangSme(), name: "suomagiella"),
  TranslatedName(LangSin(), name: "ෆින්ලන්ත"),
  TranslatedName(LangSlk(), name: "fínčina"),
  TranslatedName(LangSlv(), name: "finščina"),
  TranslatedName(LangSqi(), name: "finlandisht"),
  TranslatedName(LangSrp(), name: "фински"),
  TranslatedName(LangSrp(), name: "finski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "finska"),
  TranslatedName(LangSwa(), name: "Kifinlandi"),
  TranslatedName(LangTam(), name: "ஃபின்னிஷ்"),
  TranslatedName(LangTel(), name: "ఫిన్నిష్"),
  TranslatedName(LangTha(), name: "ฟินแลนด์"),
  TranslatedName(LangTir(), name: "ፊኒሽ"),
  TranslatedName(LangTon(), name: "lea fakafinilani"),
  TranslatedName(LangTur(), name: "Fince"),
  TranslatedName(LangUig(), name: "فىنچە"),
  TranslatedName(LangUkr(), name: "фінська"),
  TranslatedName(LangUrd(), name: "فینیش"),
  TranslatedName(LangUzb(), name: "fincha"),
  TranslatedName(LangUzb(), name: "Финча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Phần Lan"),
  TranslatedName(LangYid(), name: "פֿיניש"),
  TranslatedName(LangYor(), name: "Èdè Finisi"),
  TranslatedName(LangZho(), name: "芬兰文"),
  TranslatedName(LangZho(), name: "芬蘭文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Finnish"),
];
