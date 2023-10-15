import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 95 translations for a Breton language:
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
const breLanguageTranslations = [
  TranslatedName(LangEng(), name: "Breton"),
  TranslatedName(LangAfr(), name: "Bretons"),
  TranslatedName(LangAmh(), name: "ብሬቶንኛ"),
  TranslatedName(LangAra(), name: "البريتونية"),
  TranslatedName(LangAze(), name: "Bretonca"),
  TranslatedName(LangBel(), name: "брэтонская"),
  TranslatedName(LangBul(), name: "бретонски"),
  TranslatedName(LangBen(), name: "ব্রেটন"),
  TranslatedName(LangBre(), name: "brezhoneg"),
  TranslatedName(LangBos(), name: "bretonski"),
  TranslatedName(LangBos(), name: "бретонски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "bretó"),
  TranslatedName(LangCes(), name: "bretonština"),
  TranslatedName(LangCym(), name: "Llydaweg"),
  TranslatedName(LangDan(), name: "bretonsk"),
  TranslatedName(LangDeu(), name: "Bretonisch"),
  TranslatedName(LangEwe(), name: "bretongbe"),
  TranslatedName(LangEll(), name: "Βρετονικά"),
  TranslatedName(LangEpo(), name: "bretona"),
  TranslatedName(LangSpa(), name: "bretón"),
  TranslatedName(LangEst(), name: "bretooni"),
  TranslatedName(LangEus(), name: "bretoiera"),
  TranslatedName(LangFas(), name: "برتانیایی"),
  TranslatedName(LangFin(), name: "bretoni"),
  TranslatedName(LangFao(), name: "bretonskt"),
  TranslatedName(LangFra(), name: "breton"),
  TranslatedName(LangFry(), name: "Bretonsk"),
  TranslatedName(LangGle(), name: "Briotáinis"),
  TranslatedName(LangGla(), name: "Breatnais"),
  TranslatedName(LangGlg(), name: "bretón"),
  TranslatedName(LangGuj(), name: "બ્રેટોન"),
  TranslatedName(LangHeb(), name: "ברטונית"),
  TranslatedName(LangHin(), name: "ब्रेटन"),
  TranslatedName(LangHrv(), name: "bretonski"),
  TranslatedName(LangHun(), name: "breton"),
  TranslatedName(LangHye(), name: "բրետոներեն"),
  TranslatedName(LangIsl(), name: "bretónska"),
  TranslatedName(LangIta(), name: "bretone"),
  TranslatedName(LangJpn(), name: "ブルトン語"),
  TranslatedName(LangKat(), name: "ბრეტონული"),
  TranslatedName(LangKaz(), name: "бретон тілі"),
  TranslatedName(LangKhm(), name: "ប្រីស្តុន"),
  TranslatedName(LangKan(), name: "ಬ್ರೆಟನ್"),
  TranslatedName(LangKor(), name: "브르타뉴어"),
  TranslatedName(LangKas(), name: "بریٹَن"),
  TranslatedName(LangKir(), name: "бретончо"),
  TranslatedName(LangLtz(), name: "Bretonesch"),
  TranslatedName(LangLao(), name: "ເບຣຕັນ"),
  TranslatedName(LangLit(), name: "bretonų"),
  TranslatedName(LangLav(), name: "bretoņu"),
  TranslatedName(LangMkd(), name: "бретонски"),
  TranslatedName(LangMal(), name: "ബ്രെട്ടൺ"),
  TranslatedName(LangMon(), name: "бретон"),
  TranslatedName(LangMar(), name: "ब्रेतॉन"),
  TranslatedName(LangMlt(), name: "Brenton"),
  TranslatedName(LangMya(), name: "ဘရီတွန်"),
  TranslatedName(LangNob(), name: "bretonsk"),
  TranslatedName(LangNep(), name: "ब्रेटन"),
  TranslatedName(LangNld(), name: "Bretons"),
  TranslatedName(LangNno(), name: "bretonsk"),
  TranslatedName(LangNor(), name: "bretonsk"),
  TranslatedName(LangOri(), name: "ବ୍ରେଟନ୍"),
  TranslatedName(LangPan(), name: "ਬਰੇਟਨ"),
  TranslatedName(LangPol(), name: "bretoński"),
  TranslatedName(LangPor(), name: "bretão"),
  TranslatedName(LangQue(), name: "Breton Simi"),
  TranslatedName(LangRoh(), name: "breton"),
  TranslatedName(LangRon(), name: "bretonă"),
  TranslatedName(LangRus(), name: "бретонский"),
  TranslatedName(LangKin(), name: "Inyebiritoni"),
  TranslatedName(LangSme(), name: "bretonagiella"),
  TranslatedName(LangSin(), name: "බ්‍රේටොන්"),
  TranslatedName(LangSlk(), name: "bretónčina"),
  TranslatedName(LangSlv(), name: "bretonščina"),
  TranslatedName(LangSqi(), name: "bretone"),
  TranslatedName(LangSrp(), name: "бретонски"),
  TranslatedName(LangSrp(), name: "bretonski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "bretonska"),
  TranslatedName(LangSwa(), name: "Kibretoni"),
  TranslatedName(LangTam(), name: "பிரெட்டன்"),
  TranslatedName(LangTel(), name: "బ్రెటన్"),
  TranslatedName(LangTha(), name: "เบรตัน"),
  TranslatedName(LangTir(), name: "ብሬቶን"),
  TranslatedName(LangTon(), name: "lea fakapeletoni"),
  TranslatedName(LangTur(), name: "Bretonca"),
  TranslatedName(LangUig(), name: "بىرېتونچە"),
  TranslatedName(LangUkr(), name: "бретонська"),
  TranslatedName(LangUrd(), name: "بریٹن"),
  TranslatedName(LangUzb(), name: "bretoncha"),
  TranslatedName(LangVie(), name: "Tiếng Breton"),
  TranslatedName(LangYid(), name: "ברעטאניש"),
  TranslatedName(LangYor(), name: "Èdè Bretoni"),
  TranslatedName(LangZho(), name: "布里多尼文"),
  TranslatedName(LangZho(), name: "布列塔尼文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "Isi-Breton"),
];
