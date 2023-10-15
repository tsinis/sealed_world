import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 88 translations for a (Scottish) Gaelic language:
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Amharic
/// - Arabic
/// - Azerbaijani
/// - Basque
/// - Belarusian
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Catalan
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - Dutch
/// - English
/// - Esperanto
/// - Estonian
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
/// - Khmer
/// - Kinyarwanda
/// - Korean
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
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Oromo
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
/// - Romanian
/// - Romansh
/// - Russian
/// - Serbian
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
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Yiddish
/// - Yoruba
/// - Zulu.
const glaLanguageTranslations = [
  TranslatedName(LangEng(), name: "Scottish Gaelic"),
  TranslatedName(LangAfr(), name: "Skotse Gallies"),
  TranslatedName(LangAmh(), name: "እስኮትስ ጌልክኛ"),
  TranslatedName(LangAra(), name: "الغيلية الأسكتلندية"),
  TranslatedName(LangAze(), name: "skot gaelik dili"),
  TranslatedName(LangBel(), name: "шатландская гэльская"),
  TranslatedName(LangBul(), name: "шотландски галски"),
  TranslatedName(LangBen(), name: "স্কটস-গ্যেলিক"),
  TranslatedName(LangBre(), name: "skoseg"),
  TranslatedName(LangBos(), name: "škotski galski"),
  TranslatedName(LangBos(), name: "шкотски галски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "gaèlic escocès"),
  TranslatedName(LangCes(), name: "skotská gaelština"),
  TranslatedName(LangCym(), name: "Gaeleg yr Alban"),
  TranslatedName(LangDan(), name: "skotsk gælisk"),
  TranslatedName(LangDeu(), name: "Schottisches Gälisch"),
  TranslatedName(LangEll(), name: "Σκωτικά Κελτικά"),
  TranslatedName(LangEpo(), name: "gaela"),
  TranslatedName(LangSpa(), name: "gaélico escocés"),
  TranslatedName(LangEst(), name: "gaeli"),
  TranslatedName(LangEus(), name: "eskoziako gaelikoa"),
  TranslatedName(LangFas(), name: "گیلی اسکاتلندی"),
  TranslatedName(LangFin(), name: "gaeli"),
  TranslatedName(LangFao(), name: "skotskt gæliskt"),
  TranslatedName(LangFra(), name: "gaélique écossais"),
  TranslatedName(LangFry(), name: "Schotsk Gaelic"),
  TranslatedName(LangGle(), name: "Gaeilge na hAlban"),
  TranslatedName(LangGla(), name: "Gàidhlig"),
  TranslatedName(LangGlg(), name: "gaélico escocés"),
  TranslatedName(LangGuj(), name: "સ્કોટ્સ ગેલિક"),
  TranslatedName(LangHeb(), name: "גאלית סקוטית"),
  TranslatedName(LangHin(), name: "स्काट्स् गायेलिक्"),
  TranslatedName(LangHrv(), name: "škotski-galski"),
  TranslatedName(LangHun(), name: "skót gael"),
  TranslatedName(LangInd(), name: "Gaelik Skotlandia"),
  TranslatedName(LangIsl(), name: "skosk gelíska"),
  TranslatedName(LangIta(), name: "gaelico scozzese"),
  TranslatedName(LangJpn(), name: "スコットランド・ゲール語"),
  TranslatedName(LangKat(), name: "შოტლანდიური გელური"),
  TranslatedName(LangKhm(), name: "ភាសាហ្កែលិគ (gd)"),
  TranslatedName(LangKan(), name: "ಸ್ಕಾಟಿಶ್ ಗ್ಯಾಲಿಕ್"),
  TranslatedName(LangKor(), name: "스코틀랜드 게일어"),
  TranslatedName(LangKas(), name: "سکوٹِش گیےلِک"),
  TranslatedName(LangLtz(), name: "Schottescht Gällesch"),
  TranslatedName(LangLao(), name: "ສະກັອດເກລິກ"),
  TranslatedName(LangLit(), name: "škotų (gėlų)"),
  TranslatedName(LangLav(), name: "gēlu"),
  TranslatedName(LangMkd(), name: "шкотски гелски"),
  TranslatedName(LangMal(), name: "സ്കോട്ടിഷ് ഗൈലിക്"),
  TranslatedName(LangMon(), name: "шотланд келт"),
  TranslatedName(LangMar(), name: "स्कॉट्स गेलिक"),
  TranslatedName(LangMsa(), name: "Scots Gaelic"),
  TranslatedName(LangMlt(), name: "Galliku Skoċċiż"),
  TranslatedName(LangNob(), name: "skotsk gælisk"),
  TranslatedName(LangNld(), name: "Schots-Gaelisch"),
  TranslatedName(LangNno(), name: "skotsk-gælisk"),
  TranslatedName(LangNor(), name: "skotsk gælisk"),
  TranslatedName(LangOrm(), name: "Scots Gaelic"),
  TranslatedName(LangOri(), name: "ସ୍କଟିସ୍ ଗାଏଲିକ୍"),
  TranslatedName(LangPol(), name: "szkocki gaelicki"),
  TranslatedName(LangPor(), name: "gaélico escocês"),
  TranslatedName(LangQue(), name: "Gaelico Escoces Simi"),
  TranslatedName(LangRoh(), name: "gaelic scot"),
  TranslatedName(LangRon(), name: "gaelică scoțiană"),
  TranslatedName(LangRus(), name: "гэльский"),
  TranslatedName(LangKin(), name: "Ikigaluwa cy’Igisweduwa"),
  TranslatedName(LangSlk(), name: "škótska gaelčina"),
  TranslatedName(LangSlv(), name: "škotska gelščina"),
  TranslatedName(LangSrp(), name: "Шкотски Галски"),
  TranslatedName(LangSrp(), name: "Škotski Galski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "skotsk gäliska"),
  TranslatedName(LangSwa(), name: "Kigaeli cha Uskoti"),
  TranslatedName(LangTam(), name: "ஸ்காட்ஸ் கேலிக்"),
  TranslatedName(LangTel(), name: "స్కాటిష్ గేలిక్"),
  TranslatedName(LangTha(), name: "สกอตส์กาลิก"),
  TranslatedName(LangTir(), name: "እስኮትስ ጌልክኛ"),
  TranslatedName(LangTgl(), name: "Scots Gaelic"),
  TranslatedName(LangTon(), name: "lea fakakaeliki"),
  TranslatedName(LangTur(), name: "İskoç Gal Dili"),
  TranslatedName(LangUig(), name: "سكوتچە"),
  TranslatedName(LangUkr(), name: "гаельська"),
  TranslatedName(LangUrd(), name: "سکاٹ گیلِک"),
  TranslatedName(LangVie(), name: "Tiếng Xentơ (Xcốt len)"),
  TranslatedName(LangYid(), name: "סקאטיש געליש"),
  TranslatedName(LangYor(), name: "Èdè Gaelik ti Ilu Scotland"),
  TranslatedName(LangZho(), name: "苏格兰盖尔文"),
  TranslatedName(LangZho(), name: "蘇格蘭蓋爾文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "i-Scottish Gaelic"),
];
