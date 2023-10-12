import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 92 translations for a Chinese language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
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
/// - Danish
/// - Dutch
/// - Dzongkha
/// - English
/// - Esperanto
/// - Estonian
/// - Ewe
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
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malay
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Northern Sami
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Nuosu
/// - Oriya
/// - Oromo
/// - Ossetian (Ossetic)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Romanian
/// - Romansh
/// - Russian
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
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Welsh
/// - Western Frisian
/// - Zulu.
const zhoLanguageTranslations = [
  TranslatedName(LangEng(), name: "Traditional Chinese"),
  TranslatedName(LangAmh(), name: "ቻይንኛ"),
  TranslatedName(LangAra(), name: "الصينية المبسطة"),
  TranslatedName(LangAze(), name: "sadələşmiş çin"),
  TranslatedName(LangAze(), name: "чинҹә", script: ScriptCyrl()),
  TranslatedName(LangBel(), name: "традыцыйная кітайская"),
  TranslatedName(LangBul(), name: "традиционен китайски"),
  TranslatedName(LangBen(), name: "সরলীকৃত চীনা"),
  TranslatedName(LangBod(), name: "རྒྱ་སྐད་"),
  TranslatedName(LangBre(), name: "sinaeg hengounel"),
  TranslatedName(LangBos(), name: "kineski (tradicionalni)"),
  TranslatedName(
    LangBos(),
    name: "кинески (традиционални)",
    script: ScriptCyrl(),
  ),
  TranslatedName(LangCat(), name: "xinès tradicional"),
  TranslatedName(LangCym(), name: "Tsieineeg Traddodiadol"),
  TranslatedName(LangDan(), name: "traditionelt kinesisk"),
  TranslatedName(LangDeu(), name: "Chinesisch (vereinfacht)"),
  TranslatedName(LangDzo(), name: "སྔ་དུས་ཀྱི་རྒྱ་མི་ཁ"),
  TranslatedName(LangEwe(), name: "tsainagbe"),
  TranslatedName(LangEll(), name: "Παραδοσιακά Κινεζικά"),
  TranslatedName(LangEpo(), name: "ĉina tradicia"),
  TranslatedName(LangSpa(), name: "chino tradicional"),
  TranslatedName(LangEst(), name: "hiina (traditsiooniline)"),
  TranslatedName(LangEus(), name: "txinera tradizionala"),
  TranslatedName(LangFas(), name: "چینی سنتی"),
  TranslatedName(LangFin(), name: "yksinkertaistettu kiina"),
  TranslatedName(LangFra(), name: "chinois traditionnel"),
  TranslatedName(LangFry(), name: "Tradisjoneel Sineesk"),
  TranslatedName(LangGle(), name: "Sínis Thraidisiúnta"),
  TranslatedName(LangGla(), name: "Sìnis Thradaiseanta"),
  TranslatedName(LangGlg(), name: "chinés tradicional"),
  TranslatedName(LangGuj(), name: "સરળીકૃત ચાઇનીઝ"),
  TranslatedName(LangHeb(), name: "סינית מפושטת"),
  TranslatedName(LangHin(), name: "सरलीकृत चीनी"),
  TranslatedName(LangHrv(), name: "kineski (tradicionalni)"),
  TranslatedName(LangHun(), name: "kínai"),
  TranslatedName(LangHye(), name: "պարզեցված չինարեն"),
  TranslatedName(LangInd(), name: "China (Aksara Tradisional)"),
  TranslatedName(LangIii(), name: "ꍏꇩꉙ"),
  TranslatedName(LangIsl(), name: "kínverska (hefðbundin)"),
  TranslatedName(LangIta(), name: "cinese tradizionale"),
  TranslatedName(LangJpn(), name: "繁体中国語"),
  TranslatedName(LangKat(), name: "ჩინური"),
  TranslatedName(LangKaz(), name: "қытай тілі"),
  TranslatedName(LangKhm(), name: "ចិន​អក្សរ​ពេញ"),
  TranslatedName(LangKan(), name: "ಸಾಂಪ್ರದಾಯಿಕ ಚೈನೀಸ್"),
  TranslatedName(LangKor(), name: "중국어(번체)"),
  TranslatedName(LangKas(), name: "سیٚود چیٖنی"),
  TranslatedName(LangKir(), name: "кытайча (салттуу)"),
  TranslatedName(LangLtz(), name: "Chinesesch (vereinfacht)"),
  TranslatedName(LangLao(), name: "ຈີນແບບຮຽບງ່າຍ"),
  TranslatedName(LangLit(), name: "tradicinė kinų"),
  TranslatedName(LangLav(), name: "ķīniešu vienkāršotā"),
  TranslatedName(LangMkd(), name: "традиционален кинески"),
  TranslatedName(LangMal(), name: "ചൈനീസ്"),
  TranslatedName(LangMon(), name: "хятад"),
  TranslatedName(LangMar(), name: "सरलीकृत चीनी"),
  TranslatedName(LangMsa(), name: "Cina Tradisional"),
  TranslatedName(LangMya(), name: "ရှေးရိုးစဉ်လာ တရုတ်"),
  TranslatedName(LangNob(), name: "tradisjonell kinesisk"),
  TranslatedName(LangNep(), name: "सरलिकृत चिनियाँ"),
  TranslatedName(LangNld(), name: "vereenvoudigd Chinees"),
  TranslatedName(LangNno(), name: "tradisjonell kinesisk"),
  TranslatedName(LangNor(), name: "tradisjonell kinesisk"),
  TranslatedName(LangOrm(), name: "Chinese"),
  TranslatedName(LangOri(), name: "ସରଳିକରଣ ଚାଇନୀଜ୍"),
  TranslatedName(LangOss(), name: "традицион китайаг"),
  TranslatedName(LangPan(), name: "ਰਵਾਇਤੀ ਚੀਨੀ"),
  TranslatedName(LangPol(), name: "chiński (uproszczony)"),
  TranslatedName(LangPor(), name: "chinês tradicional"),
  TranslatedName(LangRoh(), name: "chinais tradiziunal"),
  TranslatedName(LangRon(), name: "chineză tradițională"),
  TranslatedName(LangRus(), name: "упрощенный китайский"),
  TranslatedName(LangSme(), name: "kiinnágiella"),
  TranslatedName(LangSin(), name: "සුළුකළ චීන"),
  TranslatedName(LangSlk(), name: "čínština (zjednodušená)"),
  TranslatedName(LangSlv(), name: "tradicionalna kitajščina"),
  TranslatedName(LangSqi(), name: "kinezishte tradicionale"),
  TranslatedName(LangSwe(), name: "traditionell kinesiska"),
  TranslatedName(LangSwa(), name: "Simplified Chinese"),
  TranslatedName(LangTam(), name: "பாரம்பரிய சீனம்"),
  TranslatedName(LangTel(), name: "సాంప్రదాయక చైనీస్"),
  TranslatedName(LangTha(), name: "จีนตัวย่อ"),
  TranslatedName(LangTon(), name: "lea fakasiaina-tukufakaholo"),
  TranslatedName(LangTur(), name: "Geleneksel Çince"),
  TranslatedName(LangUig(), name: "مۇرەككەپ خەنچە"),
  TranslatedName(LangUrd(), name: "روایتی چینی"),
  TranslatedName(LangUzb(), name: "xitoycha"),
  TranslatedName(LangUzb(), name: "Хитойча", script: ScriptCyrl()),
  TranslatedName(LangZho(), name: "中文"),
  TranslatedName(LangZho(), name: "繁体中文", countryCode: "HK"),
  TranslatedName(LangZho(), name: "簡體中文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Traditional Chinese"),
];
