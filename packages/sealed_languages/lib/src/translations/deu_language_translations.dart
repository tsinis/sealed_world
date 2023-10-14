import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 119 translations for a German language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Akan
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Bambara
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
/// - Fula (Fulah/Pulaar/Pular)
/// - Galician
/// - Ganda
/// - Georgian
/// - German
/// - Greek (modern)
/// - Gujarati
/// - Hausa
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Igbo
/// - Indonesian
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
/// - Kikuyu (Gikuyu)
/// - Kinyarwanda
/// - Kirundi
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lingala
/// - Lithuanian
/// - Luba-Katanga
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malagasy
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Northern Ndebele
/// - Northern Sami
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Nuosu
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
/// - Sango
/// - Serbian
/// - Shona
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Somali
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
const deuLanguageTranslations = [
  TranslatedName(LangEng(), name: "German"),
  TranslatedName(LangAfr(), name: "Duits"),
  TranslatedName(LangAka(), name: "Gyaaman"),
  TranslatedName(LangAmh(), name: "ጀርመን"),
  TranslatedName(LangAra(), name: "الألمانية"),
  TranslatedName(LangAze(), name: "alman"),
  TranslatedName(LangAze(), name: "алманҹа", script: ScriptCyrl()),
  TranslatedName(LangBel(), name: "нямецкая"),
  TranslatedName(LangBul(), name: "немски"),
  TranslatedName(LangBam(), name: "alimaɲikan"),
  TranslatedName(LangBen(), name: "জার্মান"),
  TranslatedName(LangBre(), name: "alamaneg"),
  TranslatedName(LangBos(), name: "njemački"),
  TranslatedName(LangBos(), name: "немачки", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "alemany"),
  TranslatedName(LangCes(), name: "němčina"),
  TranslatedName(LangCym(), name: "Almaeneg"),
  TranslatedName(LangDan(), name: "tysk"),
  TranslatedName(LangDeu(), name: "Deutsch"),
  TranslatedName(LangDzo(), name: "ཇཱར་མཱན་ཁ"),
  TranslatedName(LangEwe(), name: "germaniagbe"),
  TranslatedName(LangEll(), name: "Γερμανικά"),
  TranslatedName(LangEpo(), name: "germana"),
  TranslatedName(LangSpa(), name: "alemán"),
  TranslatedName(LangEst(), name: "saksa"),
  TranslatedName(LangEus(), name: "alemana"),
  TranslatedName(LangFas(), name: "آلمانی"),
  TranslatedName(LangFul(), name: "Docceere"),
  TranslatedName(LangFin(), name: "saksa"),
  TranslatedName(LangFao(), name: "týskt"),
  TranslatedName(LangFra(), name: "allemand"),
  TranslatedName(LangFry(), name: "Dútsk"),
  TranslatedName(LangGle(), name: "Gearmáinis"),
  TranslatedName(LangGla(), name: "Gearmailtis"),
  TranslatedName(LangGlg(), name: "alemán"),
  TranslatedName(LangGuj(), name: "જર્મન"),
  TranslatedName(LangHau(), name: "Jamusanci"),
  TranslatedName(LangHeb(), name: "גרמנית"),
  TranslatedName(LangHin(), name: "जर्मन"),
  TranslatedName(LangHrv(), name: "njemački"),
  TranslatedName(LangHun(), name: "német"),
  TranslatedName(LangHye(), name: "գերմաներեն"),
  TranslatedName(LangInd(), name: "Jerman"),
  TranslatedName(LangIbo(), name: "Jamaan"),
  TranslatedName(LangIii(), name: "ꄓꇩꉙ"),
  TranslatedName(LangIsl(), name: "þýska"),
  TranslatedName(LangIta(), name: "tedesco"),
  TranslatedName(LangJpn(), name: "ドイツ語"),
  TranslatedName(LangKat(), name: "გერმანული"),
  TranslatedName(LangKik(), name: "Kĩnjeremani"),
  TranslatedName(LangKaz(), name: "неміс тілі"),
  TranslatedName(LangKhm(), name: "អាល្លឺម៉ង់"),
  TranslatedName(LangKan(), name: "ಜರ್ಮನ್"),
  TranslatedName(LangKor(), name: "독일어"),
  TranslatedName(LangKas(), name: "جٔرمَن"),
  TranslatedName(LangKir(), name: "немисче"),
  TranslatedName(LangLtz(), name: "Däitsch"),
  TranslatedName(LangLug(), name: "Ludaaki"),
  TranslatedName(LangLin(), name: "lialemá"),
  TranslatedName(LangLao(), name: "ເຢຍລະມັນ"),
  TranslatedName(LangLit(), name: "vokiečių"),
  TranslatedName(LangLub(), name: "Lizelumani"),
  TranslatedName(LangLav(), name: "vācu"),
  TranslatedName(LangMlg(), name: "Alemanina"),
  TranslatedName(LangMkd(), name: "германски"),
  TranslatedName(LangMal(), name: "ജർമ്മൻ"),
  TranslatedName(LangMon(), name: "герман"),
  TranslatedName(LangMar(), name: "जर्मन"),
  TranslatedName(LangMsa(), name: "Jerman"),
  TranslatedName(LangMlt(), name: "Ġermaniż"),
  TranslatedName(LangMya(), name: "ဂျာမန်"),
  TranslatedName(LangNob(), name: "tysk"),
  TranslatedName(LangNde(), name: "isi-Jalimani"),
  TranslatedName(LangNep(), name: "जर्मन"),
  TranslatedName(LangNld(), name: "Duits"),
  TranslatedName(LangNno(), name: "tysk"),
  TranslatedName(LangNor(), name: "tysk"),
  TranslatedName(LangOrm(), name: "Afaan Jarmanii"),
  TranslatedName(LangOri(), name: "ଜର୍ମାନ୍"),
  TranslatedName(LangOss(), name: "немыцаг"),
  TranslatedName(LangPan(), name: "ਜਰਮਨ"),
  TranslatedName(LangPol(), name: "niemiecki"),
  TranslatedName(LangPus(), name: "الماني"),
  TranslatedName(LangPor(), name: "alemão"),
  TranslatedName(LangQue(), name: "Aleman Simi"),
  TranslatedName(LangRoh(), name: "tudestg"),
  TranslatedName(LangRun(), name: "Ikidage"),
  TranslatedName(LangRon(), name: "germană"),
  TranslatedName(LangRus(), name: "немецкий"),
  TranslatedName(LangKin(), name: "Ikidage"),
  TranslatedName(LangSme(), name: "duiskkagiella"),
  TranslatedName(LangSag(), name: "Zâmani"),
  TranslatedName(LangSin(), name: "ජර්මන්"),
  TranslatedName(LangSlk(), name: "nemčina"),
  TranslatedName(LangSlv(), name: "nemščina"),
  TranslatedName(LangSna(), name: "chiJerimani"),
  TranslatedName(LangSom(), name: "Jarmal"),
  TranslatedName(LangSqi(), name: "gjermanisht"),
  TranslatedName(LangSrp(), name: "немачки"),
  TranslatedName(LangSrp(), name: "nemački", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "tyska"),
  TranslatedName(LangSwa(), name: "Kijerumani"),
  TranslatedName(LangTam(), name: "ஜெர்மன்"),
  TranslatedName(LangTel(), name: "జర్మన్"),
  TranslatedName(LangTha(), name: "เยอรมัน"),
  TranslatedName(LangTir(), name: "ጀርመን"),
  TranslatedName(LangTon(), name: "lea fakasiamane"),
  TranslatedName(LangTur(), name: "Almanca"),
  TranslatedName(LangUig(), name: "گېرمانچە"),
  TranslatedName(LangUkr(), name: "німецька"),
  TranslatedName(LangUrd(), name: "جرمن"),
  TranslatedName(LangUzb(), name: "nemischa"),
  TranslatedName(LangUzb(), name: "Олмонча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Đức"),
  TranslatedName(LangYid(), name: "דײַטש"),
  TranslatedName(LangYor(), name: "Èdè Ilẹ̀ Gemani"),
  TranslatedName(LangYor(), name: "Èdè Ilɛ̀ Gemani", countryCode: "BJ"),
  TranslatedName(LangZho(), name: "德文"),
  TranslatedName(LangZul(), name: "isi-German"),
];
