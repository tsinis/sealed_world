import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 64 translations for a Walloon language:
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
/// - Korean
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Northern Sami
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
/// - Western Frisian.
const wlnLanguageTranslations = [
  TranslatedName(LangEng(), name: "Walloon"),
  TranslatedName(LangAra(), name: "الولونية"),
  TranslatedName(LangAze(), name: "valun dili"),
  TranslatedName(LangBul(), name: "валонски"),
  TranslatedName(LangBen(), name: "ওয়ালুন"),
  TranslatedName(LangBre(), name: "walloneg"),
  TranslatedName(LangBos(), name: "valun"),
  TranslatedName(LangBos(), name: "валун", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "való"),
  TranslatedName(LangCes(), name: "valonština"),
  TranslatedName(LangCym(), name: "Walwneg"),
  TranslatedName(LangDan(), name: "vallonsk"),
  TranslatedName(LangDeu(), name: "Wallonisch"),
  TranslatedName(LangEll(), name: "Γουαλούν"),
  TranslatedName(LangSpa(), name: "valón"),
  TranslatedName(LangEst(), name: "vallooni"),
  TranslatedName(LangFas(), name: "والونی"),
  TranslatedName(LangFin(), name: "valloni"),
  TranslatedName(LangFra(), name: "wallon"),
  TranslatedName(LangFry(), name: "Waals"),
  TranslatedName(LangGle(), name: "Vallúnais"),
  TranslatedName(LangGuj(), name: "વાલૂન"),
  TranslatedName(LangHeb(), name: "וואלון"),
  TranslatedName(LangHin(), name: "वाल्लून"),
  TranslatedName(LangHrv(), name: "valonski"),
  TranslatedName(LangHun(), name: "vallon"),
  TranslatedName(LangIsl(), name: "vallónska"),
  TranslatedName(LangIta(), name: "vallone"),
  TranslatedName(LangJpn(), name: "ワロン語"),
  TranslatedName(LangKan(), name: "ವಾಲೂನ್"),
  TranslatedName(LangKor(), name: "왈론어"),
  TranslatedName(LangKas(), name: "وَلوٗن"),
  TranslatedName(LangLtz(), name: "Wallounesch"),
  TranslatedName(LangLao(), name: "ວໍລູມ"),
  TranslatedName(LangLit(), name: "valonų"),
  TranslatedName(LangLav(), name: "valoņu"),
  TranslatedName(LangMkd(), name: "валонски"),
  TranslatedName(LangMal(), name: "വല്ലൂൺ"),
  TranslatedName(LangMar(), name: "वालून"),
  TranslatedName(LangNob(), name: "vallonsk"),
  TranslatedName(LangNld(), name: "Waals"),
  TranslatedName(LangNno(), name: "vallonsk"),
  TranslatedName(LangNor(), name: "vallonsk"),
  TranslatedName(LangOri(), name: "ୱାଲୁନ୍"),
  TranslatedName(LangPol(), name: "waloński"),
  TranslatedName(LangPor(), name: "valão"),
  TranslatedName(LangRoh(), name: "vallon"),
  TranslatedName(LangRon(), name: "valonă"),
  TranslatedName(LangRus(), name: "валлонский"),
  TranslatedName(LangSme(), name: "vallonagiella"),
  TranslatedName(LangSlk(), name: "valónčina"),
  TranslatedName(LangSlv(), name: "valonščina"),
  TranslatedName(LangSrp(), name: "Валун"),
  TranslatedName(LangSrp(), name: "Valun", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "vallonska"),
  TranslatedName(LangTam(), name: "ஒவாலூன்"),
  TranslatedName(LangTel(), name: "వాలూన్"),
  TranslatedName(LangTha(), name: "วาโลนี"),
  TranslatedName(LangTon(), name: "lea fakaʻualonia"),
  TranslatedName(LangTur(), name: "Valonca"),
  TranslatedName(LangUig(), name: "ۋاللۇنچە"),
  TranslatedName(LangUkr(), name: "валлонська"),
  TranslatedName(LangVie(), name: "Tiếng Walloon"),
  TranslatedName(LangZho(), name: "瓦隆文"),
];
