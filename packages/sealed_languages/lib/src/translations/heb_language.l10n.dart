import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 101 translations for a Hebrew (modern) language:
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
const hebLanguageTranslations = [
  TranslatedName(LangEng(), name: "Hebrew"),
  TranslatedName(LangAfr(), name: "Hebreeus"),
  TranslatedName(LangAmh(), name: "ዕብራስጥ"),
  TranslatedName(LangAra(), name: "العبرية"),
  TranslatedName(LangAze(), name: "ivrit"),
  TranslatedName(LangBel(), name: "іўрыт"),
  TranslatedName(LangBul(), name: "иврит"),
  TranslatedName(LangBen(), name: "হিব্রু"),
  TranslatedName(LangBre(), name: "hebraeg"),
  TranslatedName(LangBos(), name: "hebrejski"),
  TranslatedName(LangBos(), name: "хебрејски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "hebreu"),
  TranslatedName(LangCes(), name: "hebrejština"),
  TranslatedName(LangCym(), name: "Hebraeg"),
  TranslatedName(LangDan(), name: "hebraisk"),
  TranslatedName(LangDeu(), name: "Hebräisch"),
  TranslatedName(LangDzo(), name: "ཧེ་བྲུ་ཁ"),
  TranslatedName(LangEwe(), name: "hebrigbe"),
  TranslatedName(LangEll(), name: "Εβραϊκά"),
  TranslatedName(LangEpo(), name: "hebrea"),
  TranslatedName(LangSpa(), name: "hebreo"),
  TranslatedName(LangEst(), name: "heebrea"),
  TranslatedName(LangEus(), name: "hebreera"),
  TranslatedName(LangFas(), name: "عبری"),
  TranslatedName(LangFin(), name: "heprea"),
  TranslatedName(LangFao(), name: "hebraiskt"),
  TranslatedName(LangFra(), name: "hébreu"),
  TranslatedName(LangFry(), name: "Hebreeuwsk"),
  TranslatedName(LangGle(), name: "Eabhrais"),
  TranslatedName(LangGla(), name: "Eabhra"),
  TranslatedName(LangGlg(), name: "hebreo"),
  TranslatedName(LangGuj(), name: "હીબ્રુ"),
  TranslatedName(LangHeb(), name: "עברית"),
  TranslatedName(LangHin(), name: "हिब्रू"),
  TranslatedName(LangHrv(), name: "hebrejski"),
  TranslatedName(LangHun(), name: "héber"),
  TranslatedName(LangHye(), name: "եբրայերեն"),
  TranslatedName(LangInd(), name: "Ibrani"),
  TranslatedName(LangIsl(), name: "hebreska"),
  TranslatedName(LangIta(), name: "ebraico"),
  TranslatedName(LangJpn(), name: "ヘブライ語"),
  TranslatedName(LangKat(), name: "ებრაული"),
  TranslatedName(LangKaz(), name: "иврит"),
  TranslatedName(LangKhm(), name: "អ៊ីស្រាអែល"),
  TranslatedName(LangKan(), name: "ಹೀಬ್ರ್ಯೂ"),
  TranslatedName(LangKor(), name: "히브리어"),
  TranslatedName(LangKas(), name: "عبرٲنۍ"),
  TranslatedName(LangKir(), name: "ивритте"),
  TranslatedName(LangLtz(), name: "Hebräesch"),
  TranslatedName(LangLao(), name: "ຮີບຣິວ"),
  TranslatedName(LangLit(), name: "hebrajų"),
  TranslatedName(LangLav(), name: "ivrits"),
  TranslatedName(LangMkd(), name: "хебрејски"),
  TranslatedName(LangMal(), name: "ഹീബ്രു"),
  TranslatedName(LangMon(), name: "еврей"),
  TranslatedName(LangMar(), name: "हिब्रू"),
  TranslatedName(LangMsa(), name: "Ibrani"),
  TranslatedName(LangMlt(), name: "Ebrajk"),
  TranslatedName(LangMya(), name: "ဟီးဘရူး"),
  TranslatedName(LangNob(), name: "hebraisk"),
  TranslatedName(LangNep(), name: "हिब्रु"),
  TranslatedName(LangNld(), name: "Hebreeuws"),
  TranslatedName(LangNno(), name: "hebraisk"),
  TranslatedName(LangNor(), name: "hebraisk"),
  TranslatedName(LangOrm(), name: "Afaan Hebrew"),
  TranslatedName(LangOri(), name: "ହେବ୍ର୍ୟୁ"),
  TranslatedName(LangOss(), name: "уираг"),
  TranslatedName(LangPan(), name: "ਹਿਬਰੂ"),
  TranslatedName(LangPol(), name: "hebrajski"),
  TranslatedName(LangPus(), name: "عبري"),
  TranslatedName(LangPor(), name: "hebraico"),
  TranslatedName(LangQue(), name: "Hebreo Simi"),
  TranslatedName(LangRoh(), name: "ebraic"),
  TranslatedName(LangRon(), name: "ebraică"),
  TranslatedName(LangRus(), name: "иврит"),
  TranslatedName(LangKin(), name: "Igiheburayo"),
  TranslatedName(LangSin(), name: "හීබෲ"),
  TranslatedName(LangSlk(), name: "hebrejčina"),
  TranslatedName(LangSlv(), name: "hebrejščina"),
  TranslatedName(LangSqi(), name: "hebraisht"),
  TranslatedName(LangSrp(), name: "хебрејски"),
  TranslatedName(LangSrp(), name: "hebrejski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "hebreiska"),
  TranslatedName(LangSwa(), name: "Kiebrania"),
  TranslatedName(LangTam(), name: "ஹீப்ரூ"),
  TranslatedName(LangTel(), name: "హీబ్రు"),
  TranslatedName(LangTha(), name: "ฮิบรู"),
  TranslatedName(LangTir(), name: "ዕብራስጥ"),
  TranslatedName(LangTon(), name: "lea fakahepelū"),
  TranslatedName(LangTur(), name: "İbranice"),
  TranslatedName(LangUig(), name: "ئىبرانىچە"),
  TranslatedName(LangUkr(), name: "іврит"),
  TranslatedName(LangUrd(), name: "عبرانی"),
  TranslatedName(LangUzb(), name: "ibroniy"),
  TranslatedName(LangUzb(), name: "Иброний", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Do Thái"),
  TranslatedName(LangYid(), name: "העברעאיש"),
  TranslatedName(LangYor(), name: "Èdè Heberu"),
  TranslatedName(LangZho(), name: "希伯来文"),
  TranslatedName(LangZho(), name: "希伯來文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Hebrew"),
];
