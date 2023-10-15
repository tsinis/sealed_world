import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 84 translations for a Yiddish language:
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
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
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
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Yiddish
/// - Yoruba
/// - Zulu.
const yidLanguageTranslations = [
  TranslatedName(LangEng(), name: "Yiddish"),
  TranslatedName(LangAfr(), name: "Jiddisj"),
  TranslatedName(LangAmh(), name: "ይዲሽኛ"),
  TranslatedName(LangAra(), name: "اليديشية"),
  TranslatedName(LangAze(), name: "Yahudi dili"),
  TranslatedName(LangBel(), name: "ідыш"),
  TranslatedName(LangBul(), name: "идиш"),
  TranslatedName(LangBen(), name: "য়িদ্দিশ"),
  TranslatedName(LangBre(), name: "yiddish"),
  TranslatedName(LangBos(), name: "jidiš"),
  TranslatedName(LangBos(), name: "јидиш", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "jiddisch"),
  TranslatedName(LangCes(), name: "jidiš"),
  TranslatedName(LangCym(), name: "Iddew-Almaeneg"),
  TranslatedName(LangDan(), name: "jiddisch"),
  TranslatedName(LangDeu(), name: "Jiddisch"),
  TranslatedName(LangEll(), name: "Γίντις"),
  TranslatedName(LangEpo(), name: "jida"),
  TranslatedName(LangSpa(), name: "yídish"),
  TranslatedName(LangEst(), name: "jidiši"),
  TranslatedName(LangEus(), name: "Jiddisha"),
  TranslatedName(LangFas(), name: "یدی"),
  TranslatedName(LangFin(), name: "jiddiš"),
  TranslatedName(LangFao(), name: "jiddiskt"),
  TranslatedName(LangFra(), name: "yiddish"),
  TranslatedName(LangFry(), name: "Jiddysk"),
  TranslatedName(LangGle(), name: "Giúdais"),
  TranslatedName(LangGla(), name: "Iùdhais"),
  TranslatedName(LangGlg(), name: "yiddish"),
  TranslatedName(LangGuj(), name: "યિદ્દિશ"),
  TranslatedName(LangHeb(), name: "יידיש"),
  TranslatedName(LangHin(), name: "येहुदी"),
  TranslatedName(LangHrv(), name: "jidiš"),
  TranslatedName(LangHun(), name: "jiddis"),
  TranslatedName(LangIsl(), name: "jiddíska"),
  TranslatedName(LangIta(), name: "yiddish"),
  TranslatedName(LangJpn(), name: "イディッシュ語"),
  TranslatedName(LangKat(), name: "იდიში"),
  TranslatedName(LangKhm(), name: "ភាសាយីឌីហ្ស"),
  TranslatedName(LangKan(), name: "ಯಡ್ಡಿಶ್"),
  TranslatedName(LangKor(), name: "이디시어"),
  TranslatedName(LangKas(), name: "یِدِش"),
  TranslatedName(LangKir(), name: "идишче"),
  TranslatedName(LangLtz(), name: "Jiddesch"),
  TranslatedName(LangLao(), name: "ຢິວ"),
  TranslatedName(LangLit(), name: "jidiš"),
  TranslatedName(LangLav(), name: "jidišs"),
  TranslatedName(LangMkd(), name: "јидиш"),
  TranslatedName(LangMal(), name: "യിദ്ദിഷ്"),
  TranslatedName(LangMon(), name: "иддиш"),
  TranslatedName(LangMar(), name: "यिद्दिश"),
  TranslatedName(LangMlt(), name: "Jiddix"),
  TranslatedName(LangNob(), name: "jiddisk"),
  TranslatedName(LangNld(), name: "Jiddisch"),
  TranslatedName(LangNno(), name: "jiddisk"),
  TranslatedName(LangNor(), name: "jiddisk"),
  TranslatedName(LangOri(), name: "ୟିଡିସ୍"),
  TranslatedName(LangPol(), name: "jidysz"),
  TranslatedName(LangPor(), name: "iídiche"),
  TranslatedName(LangRoh(), name: "jiddic"),
  TranslatedName(LangRon(), name: "idiș"),
  TranslatedName(LangRus(), name: "идиш"),
  TranslatedName(LangKin(), name: "Inyeyidishi"),
  TranslatedName(LangSlk(), name: "jidiš"),
  TranslatedName(LangSlv(), name: "jidiš"),
  TranslatedName(LangSrp(), name: "Јидиш"),
  TranslatedName(LangSrp(), name: "Jidiš", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "jiddisch"),
  TranslatedName(LangSwa(), name: "Kiyidi"),
  TranslatedName(LangTam(), name: "இத்திஷ்"),
  TranslatedName(LangTel(), name: "ఇడ్డిష్"),
  TranslatedName(LangTha(), name: "ยิว"),
  TranslatedName(LangTir(), name: "ዪዲሽ"),
  TranslatedName(LangTon(), name: "lea fakaītisi"),
  TranslatedName(LangTur(), name: "Yidiş"),
  TranslatedName(LangUig(), name: "يىددىشچە"),
  TranslatedName(LangUkr(), name: "ідиш"),
  TranslatedName(LangUrd(), name: "یدش"),
  TranslatedName(LangVie(), name: "Tiếng Y-đit"),
  TranslatedName(LangYid(), name: "ייִדיש"),
  TranslatedName(LangYor(), name: "Èdè Yiddishi"),
  TranslatedName(LangZho(), name: "依地文"),
  TranslatedName(LangZho(), name: "意第緒文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "Isi-Yidish"),
];
