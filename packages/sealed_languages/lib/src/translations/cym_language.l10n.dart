import "../data/scripts.data.dart";
import "../model/language/language.dart";
import "../model/translated_name.dart";

/// Provides 115 translations for a Welsh language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Assamese
/// - Azerbaijani
/// - Basque
/// - Belarusian
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Burmese
/// - Catalan
/// - Chechen
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
/// - Georgian
/// - German
/// - Greek (modern)
/// - Gujarati
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Igbo
/// - Indonesian
/// - Interlingua
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
/// - Kinyarwanda
/// - Korean
/// - Kurdish
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
/// - Māori
/// - Nepali
/// - Northern Sami
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Oromo
/// - Pashto (Pushto)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
/// - Romanian
/// - Romansh
/// - Russian
/// - Sardinian
/// - Serbian
/// - Sindhi
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Spanish
/// - Swahili
/// - Swedish
/// - Tagalog
/// - Tajik
/// - Tamil
/// - Tatar
/// - Telugu
/// - Thai
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Turkmen
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Wolof
/// - Yiddish
/// - Yoruba
/// - Zulu.
const cymLanguageTranslations = [
  TranslatedName(LangEng(), name: "Welsh"),
  TranslatedName(LangAfr(), name: "Wallies"),
  TranslatedName(LangAmh(), name: "ወልሽ"),
  TranslatedName(LangAra(), name: "الولزية"),
  TranslatedName(LangAze(), name: "uels"),
  TranslatedName(LangBel(), name: "валійская"),
  TranslatedName(LangBul(), name: "уелски"),
  TranslatedName(LangBen(), name: "ওয়েলশ"),
  TranslatedName(LangBre(), name: "kembraeg"),
  TranslatedName(LangBos(), name: "cy"),
  TranslatedName(LangBos(), name: "велшки", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "gal·lès"),
  TranslatedName(LangCes(), name: "velština"),
  TranslatedName(LangCym(), name: "Cymraeg"),
  TranslatedName(LangDan(), name: "walisisk"),
  TranslatedName(LangDeu(), name: "Walisisch"),
  TranslatedName(LangDzo(), name: "ཝེལཤ་ཁ"),
  TranslatedName(LangEwe(), name: "walesgbe"),
  TranslatedName(LangEll(), name: "Ουαλικά"),
  TranslatedName(LangEpo(), name: "kimra"),
  TranslatedName(LangSpa(), name: "galés"),
  TranslatedName(LangEst(), name: "kõmri"),
  TranslatedName(LangEus(), name: "galesera"),
  TranslatedName(LangFas(), name: "ویلزی"),
  TranslatedName(LangFin(), name: "kymri"),
  TranslatedName(LangFao(), name: "valisiskt"),
  TranslatedName(LangFra(), name: "gallois"),
  TranslatedName(LangFry(), name: "Welsk"),
  TranslatedName(LangGle(), name: "Breatnais"),
  TranslatedName(LangGla(), name: "Cuimris"),
  TranslatedName(LangGlg(), name: "galés"),
  TranslatedName(LangGuj(), name: "વેલ્શ"),
  TranslatedName(LangHeb(), name: "ולשית"),
  TranslatedName(LangHin(), name: "वेल्श"),
  TranslatedName(LangHrv(), name: "velški"),
  TranslatedName(LangHun(), name: "walesi"),
  TranslatedName(LangHye(), name: "ուելսերեն"),
  TranslatedName(LangIsl(), name: "velska"),
  TranslatedName(LangIta(), name: "gallese"),
  TranslatedName(LangJpn(), name: "ウェールズ語"),
  TranslatedName(LangKat(), name: "უელსური"),
  TranslatedName(LangKaz(), name: "валлий"),
  TranslatedName(LangKhm(), name: "វេល"),
  TranslatedName(LangKan(), name: "ವೆಲ್ಶ್"),
  TranslatedName(LangKor(), name: "웨일스어"),
  TranslatedName(LangKas(), name: "ویٚلش"),
  TranslatedName(LangKir(), name: "уелшче"),
  TranslatedName(LangLtz(), name: "Walisesch"),
  TranslatedName(LangLao(), name: "ເວວ"),
  TranslatedName(LangLit(), name: "valų"),
  TranslatedName(LangLav(), name: "velsiešu"),
  TranslatedName(LangMkd(), name: "велшки"),
  TranslatedName(LangMal(), name: "വെൽഷ്"),
  TranslatedName(LangMon(), name: "уэлс"),
  TranslatedName(LangMar(), name: "वेल्श"),
  TranslatedName(LangMsa(), name: "Wales"),
  TranslatedName(LangMlt(), name: "Welx"),
  TranslatedName(LangMya(), name: "ဝေလ"),
  TranslatedName(LangNob(), name: "walisisk"),
  TranslatedName(LangNep(), name: "वेल्श"),
  TranslatedName(LangNno(), name: "walisisk"),
  TranslatedName(LangNor(), name: "walisisk"),
  TranslatedName(LangOrm(), name: "Welishiffaa"),
  TranslatedName(LangOri(), name: "ୱେଲ୍ସ"),
  TranslatedName(LangPan(), name: "ਵੈਲਜ਼"),
  TranslatedName(LangPol(), name: "walijski"),
  TranslatedName(LangPor(), name: "galês"),
  TranslatedName(LangQue(), name: "Gales Simi"),
  TranslatedName(LangRoh(), name: "kimric"),
  TranslatedName(LangRon(), name: "galeză"),
  TranslatedName(LangRus(), name: "валлийский"),
  TranslatedName(LangKin(), name: "Ikigaluwa"),
  TranslatedName(LangSme(), name: "kymragiella"),
  TranslatedName(LangSin(), name: "වේල්ස්"),
  TranslatedName(LangSlk(), name: "waleština"),
  TranslatedName(LangSlv(), name: "valižanščina"),
  TranslatedName(LangSqi(), name: "uellsisht"),
  TranslatedName(LangSrp(), name: "велшки"),
  TranslatedName(LangSrp(), name: "velški", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "walesiska"),
  TranslatedName(LangSwa(), name: "Kiwelisi"),
  TranslatedName(LangTam(), name: "வெல்ஷ்"),
  TranslatedName(LangTel(), name: "వెల్ష్"),
  TranslatedName(LangTha(), name: "เวลส์"),
  TranslatedName(LangTir(), name: "ወልሽ"),
  TranslatedName(LangTon(), name: "lea fakauēlesi"),
  TranslatedName(LangTur(), name: "Galce"),
  TranslatedName(LangUig(), name: "ۋېلشچە"),
  TranslatedName(LangUkr(), name: "валлійська"),
  TranslatedName(LangUrd(), name: "ویلش"),
  TranslatedName(LangUzb(), name: "uelscha"),
  TranslatedName(LangUzb(), name: "Уэлсча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Wales"),
  TranslatedName(LangYid(), name: "וועלשיש"),
  TranslatedName(LangYor(), name: "Èdè Welshi"),
  TranslatedName(LangZho(), name: "威尔士文"),
  TranslatedName(LangZho(), name: "威爾斯文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Welsh"),
  TranslatedName(LangAsm(), name: "ৱেলচ"),
  TranslatedName(LangChe(), name: "валлийн"),
  TranslatedName(LangFul(), name: "𞤘𞤢𞤤𞤭𞤲𞤳𞤮𞥅𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangIna(), name: "gallese"),
  TranslatedName(LangIbo(), name: "Wesh"),
  TranslatedName(LangKur(), name: "weylsî"),
  TranslatedName(LangMri(), name: "Werehi"),
  TranslatedName(LangPus(), name: "ويلشي"),
  TranslatedName(LangSrd(), name: "gallesu"),
  TranslatedName(LangSnd(), name: "ويلش"),
  TranslatedName(LangTgk(), name: "валлӣ"),
  TranslatedName(LangTuk(), name: "walliý dili"),
  TranslatedName(LangTat(), name: "уэльс"),
  TranslatedName(LangWol(), name: "Wels"),
  TranslatedName(LangInd(), name: "Welsh"),
  TranslatedName(LangNld(), name: "Welsh"),
  TranslatedName(LangTgl(), name: "Welsh"),
];
