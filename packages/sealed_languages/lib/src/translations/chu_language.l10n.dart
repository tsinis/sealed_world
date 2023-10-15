import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 70 translations for a (Old) Church Slavonic language:
/// - (Scottish) Gaelic
/// - Arabic
/// - Azerbaijani
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
/// - Indonesian
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
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
/// - Slovak
/// - Slovene
/// - Spanish
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Uyghur
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Yiddish.
const chuLanguageTranslations = [
  TranslatedName(LangEng(), name: "Church Slavic"),
  TranslatedName(LangAra(), name: "سلافية كنسية"),
  TranslatedName(LangAze(), name: "kilsə slav dili"),
  TranslatedName(LangBul(), name: "църковно славянски"),
  TranslatedName(LangBen(), name: "চার্চ স্লাভিক"),
  TranslatedName(LangBre(), name: "slavoneg iliz"),
  TranslatedName(LangBos(), name: "staroslovenski"),
  TranslatedName(LangBos(), name: "старословенски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "eslau eclesiàstic"),
  TranslatedName(LangCes(), name: "staroslověnština"),
  TranslatedName(LangCym(), name: "Hen Slafoneg"),
  TranslatedName(LangDan(), name: "kirkeslavisk"),
  TranslatedName(LangDeu(), name: "Kirchenslawisch"),
  TranslatedName(LangEll(), name: "Εκκλησιαστικά Σλαβικά"),
  TranslatedName(LangSpa(), name: "eslavo eclesiástico"),
  TranslatedName(LangEst(), name: "kirikuslaavi"),
  TranslatedName(LangFas(), name: "اسلاوی کلیسایی"),
  TranslatedName(LangFin(), name: "kirkkoslaavi"),
  TranslatedName(LangFra(), name: "slavon d’église"),
  TranslatedName(LangFry(), name: "Kerkslavysk"),
  TranslatedName(LangGle(), name: "Slavais na hEaglaise"),
  TranslatedName(LangGla(), name: "Slàbhais na h-Eaglaise"),
  TranslatedName(LangGlg(), name: "eslavo eclesiástico"),
  TranslatedName(LangGuj(), name: "ચર્ચ સ્લાવિક"),
  TranslatedName(LangHeb(), name: "סלאבית כנסייתית עתיקה"),
  TranslatedName(LangHin(), name: "चर्च साल्विक"),
  TranslatedName(LangHrv(), name: "crkvenoslavenski"),
  TranslatedName(LangHun(), name: "egyházi szláv"),
  TranslatedName(LangInd(), name: "Bahasa Gereja Slavonia"),
  TranslatedName(LangIsl(), name: "kirkjuslavneska"),
  TranslatedName(LangIta(), name: "slavo della Chiesa"),
  TranslatedName(LangJpn(), name: "教会スラブ語"),
  TranslatedName(LangKat(), name: "საეკლესიო სლავური"),
  TranslatedName(LangKan(), name: "ಚರ್ಚ್ ಸ್ಲಾವಿಕ್"),
  TranslatedName(LangKor(), name: "교회 슬라브어"),
  TranslatedName(LangKas(), name: "چٔرچ سلاوِک"),
  TranslatedName(LangLtz(), name: "Kiercheslawesch"),
  TranslatedName(LangLao(), name: "ໂບດສລາວິກ"),
  TranslatedName(LangLit(), name: "bažnytinė slavų"),
  TranslatedName(LangLav(), name: "baznīcslāvu"),
  TranslatedName(LangMkd(), name: "црковнословенски"),
  TranslatedName(LangMal(), name: "ചർച്ച് സ്ലാവിക്"),
  TranslatedName(LangMar(), name: "चर्च स्लाव्हिक"),
  TranslatedName(LangMsa(), name: "Slavik Gereja"),
  TranslatedName(LangMlt(), name: "Slaviku tal-Knisja"),
  TranslatedName(LangNob(), name: "kirkeslavisk"),
  TranslatedName(LangNld(), name: "Kerkslavisch"),
  TranslatedName(LangNno(), name: "kyrkjeslavisk"),
  TranslatedName(LangNor(), name: "kirkeslavisk"),
  TranslatedName(LangOri(), name: "ଚର୍ଚ୍ଚ ସ୍ଲାଭିକ୍"),
  TranslatedName(LangPol(), name: "staro-cerkiewno-słowiański"),
  TranslatedName(LangPor(), name: "eslavo eclesiástico"),
  TranslatedName(LangRoh(), name: "slav da baselgia"),
  TranslatedName(LangRon(), name: "slavonă"),
  TranslatedName(LangRus(), name: "церковнославянский"),
  TranslatedName(LangSlk(), name: "cirkevná slovančina"),
  TranslatedName(LangSlv(), name: "stara cerkvena slovanščina"),
  TranslatedName(LangSrp(), name: "Старословенски"),
  TranslatedName(LangSrp(), name: "Staroslovenski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "kyrkslaviska"),
  TranslatedName(LangTam(), name: "சர்ச் ஸ்லாவிக்"),
  TranslatedName(LangTel(), name: "చర్చ స్లావిక్"),
  TranslatedName(LangTha(), name: "เชอร์ชสลาวิก"),
  TranslatedName(LangTon(), name: "lea fakasilavia-fakasiasi"),
  TranslatedName(LangTur(), name: "Kilise Slavcası"),
  TranslatedName(LangUig(), name: "قەدىمكى سلاۋيانچە"),
  TranslatedName(LangUkr(), name: "церковнослов’янська"),
  TranslatedName(LangVie(), name: "Tiếng Slavơ Nhà thờ"),
  TranslatedName(LangYid(), name: "קלויסטער־סלאַוויש"),
  TranslatedName(LangZho(), name: "宗教斯拉夫文"),
];
