import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 106 translations for a Dutch language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
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
/// - Malagasy
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
/// - Oriya
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
/// - Romanian
/// - Romansh
/// - Russian
/// - Sango
/// - Serbian
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
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Yiddish
/// - Zulu.
const nldLanguageTranslations = [
  TranslatedName(LangEng(), name: "Flemish"),
  TranslatedName(LangAfr(), name: "Vlaams"),
  TranslatedName(LangAmh(), name: "ፍሌሚሽ"),
  TranslatedName(LangAra(), name: "الهولندية"),
  TranslatedName(LangAze(), name: "holland"),
  TranslatedName(LangBel(), name: "фламандская"),
  TranslatedName(LangBul(), name: "фламандски"),
  TranslatedName(LangBam(), name: "olandekan"),
  TranslatedName(LangBen(), name: "ফ্লেমিশ"),
  TranslatedName(LangBre(), name: "nederlandeg"),
  TranslatedName(LangBos(), name: "holandski"),
  TranslatedName(LangBos(), name: "холандски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "neerlandès"),
  TranslatedName(LangCes(), name: "vlámština"),
  TranslatedName(LangCym(), name: "Iseldireg"),
  TranslatedName(LangDan(), name: "hollandsk"),
  TranslatedName(LangDeu(), name: "Niederländisch"),
  TranslatedName(LangDzo(), name: "ཕྷེལེ་མིཤ་ཁ"),
  TranslatedName(LangEwe(), name: "hɔlandgbe"),
  TranslatedName(LangEll(), name: "Φλαμανδικά"),
  TranslatedName(LangEpo(), name: "nederlanda"),
  TranslatedName(LangSpa(), name: "neerlandés"),
  TranslatedName(LangEst(), name: "hollandi"),
  TranslatedName(LangEus(), name: "nederlandera"),
  TranslatedName(LangFas(), name: "هلندی"),
  TranslatedName(LangFas(), name: "هالندی", countryCode: "AF"),
  TranslatedName(LangFin(), name: "hollanti"),
  TranslatedName(LangFao(), name: "hollendskt"),
  TranslatedName(LangFra(), name: "néerlandais"),
  TranslatedName(LangFry(), name: "Vlaams"),
  TranslatedName(LangGle(), name: "Pléimeannais"),
  TranslatedName(LangGla(), name: "Flannrais"),
  TranslatedName(LangGlg(), name: "holandés"),
  TranslatedName(LangGuj(), name: "ફ્લેમિશ"),
  TranslatedName(LangHau(), name: "Holanci"),
  TranslatedName(LangHeb(), name: "פלמית"),
  TranslatedName(LangHin(), name: "फ़्लेमिश"),
  TranslatedName(LangHrv(), name: "nizozemski"),
  TranslatedName(LangHun(), name: "holland"),
  TranslatedName(LangHye(), name: "ֆլամանդերեն"),
  TranslatedName(LangIsl(), name: "hollenska"),
  TranslatedName(LangIta(), name: "olandese"),
  TranslatedName(LangJpn(), name: "フレミッシュ語"),
  TranslatedName(LangKat(), name: "ფლამანდიური"),
  TranslatedName(LangKik(), name: "Kiholanzi"),
  TranslatedName(LangKaz(), name: "фламанд тілі"),
  TranslatedName(LangKhm(), name: "ហុល្លង់"),
  TranslatedName(LangKan(), name: "ಫ್ಲೆಮಿಷ್"),
  TranslatedName(LangKor(), name: "플라망어"),
  TranslatedName(LangKas(), name: "فلیٚمِش"),
  TranslatedName(LangKir(), name: "фламандча"),
  TranslatedName(LangLtz(), name: "Hollännesch"),
  TranslatedName(LangLug(), name: "Luholandi"),
  TranslatedName(LangLin(), name: "lifalamá"),
  TranslatedName(LangLao(), name: "ຟລີມິຊ"),
  TranslatedName(LangLit(), name: "olandų"),
  TranslatedName(LangLub(), name: "olandi"),
  TranslatedName(LangLav(), name: "holandiešu"),
  TranslatedName(LangMlg(), name: "Holandey"),
  TranslatedName(LangMal(), name: "ഫ്ലമിഷ്"),
  TranslatedName(LangMon(), name: "фламанд"),
  TranslatedName(LangMar(), name: "फ्लेमिश"),
  TranslatedName(LangMlt(), name: "Olandiż"),
  TranslatedName(LangMya(), name: "ဖလီမစ်ရှ်"),
  TranslatedName(LangNob(), name: "nederlandsk"),
  TranslatedName(LangNde(), name: "isi-Dutch"),
  TranslatedName(LangNep(), name: "फ्लेमिश"),
  TranslatedName(LangNld(), name: "Vlaams"),
  TranslatedName(LangNno(), name: "nederlandsk"),
  TranslatedName(LangNor(), name: "nederlandsk"),
  TranslatedName(LangOri(), name: "ଫ୍ଲେମିଶ୍"),
  TranslatedName(LangPan(), name: "ਫਲੈਮਿਸ਼"),
  TranslatedName(LangPol(), name: "niderlandzki"),
  TranslatedName(LangPor(), name: "holandês"),
  TranslatedName(LangQue(), name: "Neerlandes Simi"),
  TranslatedName(LangRoh(), name: "ollandais"),
  TranslatedName(LangRun(), name: "Igiholandi"),
  TranslatedName(LangRon(), name: "olandeză"),
  TranslatedName(LangRus(), name: "фламандский"),
  TranslatedName(LangKin(), name: "Ikinerilande"),
  TranslatedName(LangSme(), name: "hollánddagiella"),
  TranslatedName(LangSag(), name: "Holandëe"),
  TranslatedName(LangSin(), name: "ෆ්ලෙමිශ්"),
  TranslatedName(LangSlk(), name: "holandčina"),
  TranslatedName(LangSlv(), name: "nizozemščina"),
  TranslatedName(LangSom(), name: "Holandays"),
  TranslatedName(LangSqi(), name: "holandisht"),
  TranslatedName(LangSrp(), name: "холандски"),
  TranslatedName(LangSrp(), name: "holandski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "nederländska"),
  TranslatedName(LangSwa(), name: "Kiholanzi"),
  TranslatedName(LangTam(), name: "பிலெமிஷ்"),
  TranslatedName(LangTel(), name: "ఫ్లెమిష్"),
  TranslatedName(LangTha(), name: "เฟลมิช"),
  TranslatedName(LangTir(), name: "ደች"),
  TranslatedName(LangTon(), name: "lea fakahōlani-pelesiume"),
  TranslatedName(LangTur(), name: "Hollandaca"),
  TranslatedName(LangUkr(), name: "фламандська"),
  TranslatedName(LangUrd(), name: "فلیمِش"),
  TranslatedName(LangUzb(), name: "gollandcha"),
  TranslatedName(LangUzb(), name: "Фламандча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Hà Lan"),
  TranslatedName(LangYid(), name: "פֿלעמיש"),
  TranslatedName(LangZho(), name: "荷兰文"),
  TranslatedName(LangZho(), name: "荷蘭文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Flemish"),
];
