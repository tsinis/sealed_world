import "../data/scripts.data.dart";
import "../model/language/language.dart";
import "../model/translated_name.dart";

/// Provides 108 translations for a Aragonese language:
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
/// - English
/// - Estonian
/// - Faroese
/// - Finnish
/// - French
/// - Fula (Fulah/Pulaar/Pular)
/// - Galician
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
/// - Interlingua
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
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
/// - Somali
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
/// - Turkmen
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
const argLanguageTranslations = [
  TranslatedName(LangEng(), name: "Aragonese"),
  TranslatedName(LangAra(), name: "الأراغونية"),
  TranslatedName(LangAze(), name: "aragonca"),
  TranslatedName(LangBel(), name: "арагонская"),
  TranslatedName(LangBul(), name: "арагонски"),
  TranslatedName(LangBen(), name: "আর্গোনিজ"),
  TranslatedName(LangBre(), name: "aragoneg"),
  TranslatedName(LangBos(), name: "aragonežanski"),
  TranslatedName(LangBos(), name: "арагонежански", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "aragonès"),
  TranslatedName(LangCes(), name: "aragonština"),
  TranslatedName(LangCym(), name: "Aragoneg"),
  TranslatedName(LangDan(), name: "aragonesisk"),
  TranslatedName(LangDeu(), name: "Aragonesisch"),
  TranslatedName(LangEll(), name: "Αραγκονικά"),
  TranslatedName(LangSpa(), name: "aragonés"),
  TranslatedName(LangEst(), name: "aragoni"),
  TranslatedName(LangFas(), name: "آراگونی"),
  TranslatedName(LangFin(), name: "aragonia"),
  TranslatedName(LangFra(), name: "aragonais"),
  TranslatedName(LangFry(), name: "Aragoneesk"),
  TranslatedName(LangGle(), name: "Aragóinis"),
  TranslatedName(LangGla(), name: "Aragonais"),
  TranslatedName(LangGlg(), name: "aragonés"),
  TranslatedName(LangGuj(), name: "અર્ગોનીઝ"),
  TranslatedName(LangHeb(), name: "אראגונית"),
  TranslatedName(LangHin(), name: "अर्गोनी"),
  TranslatedName(LangHrv(), name: "aragonski"),
  TranslatedName(LangHun(), name: "aragonéz"),
  TranslatedName(LangInd(), name: "Aragon"),
  TranslatedName(LangIsl(), name: "aragonska"),
  TranslatedName(LangIta(), name: "aragonese"),
  TranslatedName(LangJpn(), name: "アラゴン語"),
  TranslatedName(LangKat(), name: "არაგონული"),
  TranslatedName(LangKhm(), name: "ភាសាអារ៉ាហ្គោន"),
  TranslatedName(LangKan(), name: "ಅರಗೊನೀಸ್"),
  TranslatedName(LangKor(), name: "아라곤어"),
  TranslatedName(LangKas(), name: "اَراگونی"),
  TranslatedName(LangLtz(), name: "Aragonesesch"),
  TranslatedName(LangLao(), name: "ອາຣາໂກເນັດ"),
  TranslatedName(LangLit(), name: "aragonesų"),
  TranslatedName(LangLav(), name: "aragoniešu"),
  TranslatedName(LangMkd(), name: "арагонски"),
  TranslatedName(LangMal(), name: "അരഗോണീസ്"),
  TranslatedName(LangMar(), name: "अर्गोनीज"),
  TranslatedName(LangNob(), name: "aragonsk"),
  TranslatedName(LangNld(), name: "Aragonees"),
  TranslatedName(LangNno(), name: "aragonsk"),
  TranslatedName(LangNor(), name: "aragonsk"),
  TranslatedName(LangOri(), name: "ଆର୍ଗୋନୀ"),
  TranslatedName(LangPol(), name: "aragoński"),
  TranslatedName(LangPor(), name: "aragonês"),
  TranslatedName(LangRoh(), name: "aragonais"),
  TranslatedName(LangRon(), name: "aragoneză"),
  TranslatedName(LangRus(), name: "арагонский"),
  TranslatedName(LangSme(), name: "aragoniagiella"),
  TranslatedName(LangSlk(), name: "aragónčina"),
  TranslatedName(LangSlv(), name: "aragonščina"),
  TranslatedName(LangSrp(), name: "Арагонежански"),
  TranslatedName(LangSrp(), name: "Aragonežanski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "aragonesiska"),
  TranslatedName(LangTam(), name: "ஆர்கோனீஸ்"),
  TranslatedName(LangTel(), name: "అరగోనిస్"),
  TranslatedName(LangTha(), name: "อารากอน"),
  TranslatedName(LangTon(), name: "lea fakaʻalakoni"),
  TranslatedName(LangTur(), name: "Aragonca"),
  TranslatedName(LangUig(), name: "ئاراگونچە"),
  TranslatedName(LangUkr(), name: "арагонська"),
  TranslatedName(LangVie(), name: "Tiếng Aragon"),
  TranslatedName(LangYid(), name: "אַראַגאניש"),
  TranslatedName(LangZho(), name: "阿拉贡文"),
  TranslatedName(LangZho(), name: "阿拉貢文", script: ScriptHant()),
  TranslatedName(LangAfr(), name: "Aragonees"),
  TranslatedName(LangAmh(), name: "አራጎንስ"),
  TranslatedName(LangAsm(), name: "আৰ্গোনিজ"),
  TranslatedName(LangChe(), name: "арагонойн"),
  TranslatedName(LangEus(), name: "aragoiera"),
  TranslatedName(LangFul(), name: "𞤀𞤪𞤢𞤺𞤮𞤲𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangFao(), name: "aragoniskt"),
  TranslatedName(LangHau(), name: "Aragonesanci"),
  TranslatedName(LangHye(), name: "արագոներեն"),
  TranslatedName(LangIna(), name: "aragonese"),
  TranslatedName(LangIbo(), name: "Aragonisị"),
  TranslatedName(LangKaz(), name: "арагон тілі"),
  TranslatedName(LangKur(), name: "aragonî"),
  TranslatedName(LangKir(), name: "арагончо"),
  TranslatedName(LangMri(), name: "Arakonihi"),
  TranslatedName(LangMon(), name: "арагон"),
  TranslatedName(LangMsa(), name: "Aragon"),
  TranslatedName(LangMlt(), name: "Aragoniż"),
  TranslatedName(LangMya(), name: "အာရာဂွန်"),
  TranslatedName(LangNep(), name: "अरागोनी"),
  TranslatedName(LangPan(), name: "ਅਰਾਗੋਨੀ"),
  TranslatedName(LangPus(), name: "اراگونېسي"),
  TranslatedName(LangQue(), name: "Aragonesa"),
  TranslatedName(LangSrd(), name: "aragonesu"),
  TranslatedName(LangSnd(), name: "ارگني"),
  TranslatedName(LangSin(), name: "ඇරගොනීස්"),
  TranslatedName(LangSom(), name: "U dhashay Aragon"),
  TranslatedName(LangSqi(), name: "aragonezisht"),
  TranslatedName(LangSwa(), name: "Kiaragoni"),
  TranslatedName(LangTir(), name: "ኣራጎንኛ"),
  TranslatedName(LangTuk(), name: "aragon dili"),
  TranslatedName(LangUrd(), name: "اراگونیز"),
  TranslatedName(LangUzb(), name: "aragon"),
  TranslatedName(LangYor(), name: "Èdè Aragoni"),
  TranslatedName(LangZul(), name: "isi-Aragonese"),
  TranslatedName(LangTgl(), name: "Aragonese"),
];
