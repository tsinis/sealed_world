import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 92 translations for a Malagasy language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Basque
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
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Oriya
/// - Pashto (Pushto)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
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
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Zulu.
const mlgLanguageTranslations = [
  TranslatedName(LangEng(), name: "Malagasy"),
  TranslatedName(LangAfr(), name: "Malgassies"),
  TranslatedName(LangAmh(), name: "ማላጋስኛ"),
  TranslatedName(LangAra(), name: "المالاجاشية"),
  TranslatedName(LangAze(), name: "malaqas"),
  TranslatedName(LangBul(), name: "малгашки"),
  TranslatedName(LangBen(), name: "মালাগাসি"),
  TranslatedName(LangBre(), name: "malgacheg"),
  TranslatedName(LangBos(), name: "malagazijski"),
  TranslatedName(LangBos(), name: "малагасијски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "malgaix"),
  TranslatedName(LangCes(), name: "malgaština"),
  TranslatedName(LangCym(), name: "Malagaseg"),
  TranslatedName(LangDan(), name: "malagassisk"),
  TranslatedName(LangDeu(), name: "Madagassisch"),
  TranslatedName(LangDzo(), name: "མ་ལ་ག་སི་ཁ"),
  TranslatedName(LangEwe(), name: "malagasegbe"),
  TranslatedName(LangEll(), name: "Μαλαγάσι"),
  TranslatedName(LangEpo(), name: "malagasa"),
  TranslatedName(LangSpa(), name: "malgache"),
  TranslatedName(LangEst(), name: "malagassi"),
  TranslatedName(LangEus(), name: "malagasyera"),
  TranslatedName(LangFas(), name: "مالاگاسیایی"),
  TranslatedName(LangFin(), name: "malagassi"),
  TranslatedName(LangFao(), name: "malagasiskt"),
  TranslatedName(LangFra(), name: "malgache"),
  TranslatedName(LangFry(), name: "Malagasysk"),
  TranslatedName(LangGle(), name: "Malagáisis"),
  TranslatedName(LangGla(), name: "Malagasais"),
  TranslatedName(LangGlg(), name: "malgaxe"),
  TranslatedName(LangGuj(), name: "મલાગસી"),
  TranslatedName(LangHeb(), name: "מלגשית"),
  TranslatedName(LangHin(), name: "मालागासी"),
  TranslatedName(LangHrv(), name: "malgaški"),
  TranslatedName(LangHun(), name: "málgas"),
  TranslatedName(LangHye(), name: "մալագասերեն"),
  TranslatedName(LangInd(), name: "Malagasi"),
  TranslatedName(LangIsl(), name: "malagasíska"),
  TranslatedName(LangIta(), name: "malgascio"),
  TranslatedName(LangJpn(), name: "マダガスカル語"),
  TranslatedName(LangKat(), name: "მალაგასიური"),
  TranslatedName(LangKaz(), name: "малагаси"),
  TranslatedName(LangKhm(), name: "ម៉ាឡាហ្គាស៊ី"),
  TranslatedName(LangKan(), name: "ಮಲಗಾಸಿ"),
  TranslatedName(LangKor(), name: "말라가시어"),
  TranslatedName(LangKas(), name: "مَلاگَسی"),
  TranslatedName(LangKir(), name: "малагасча"),
  TranslatedName(LangLtz(), name: "Malagassi-Sprooch"),
  TranslatedName(LangLao(), name: "ມາລາກາສຊີ"),
  TranslatedName(LangLit(), name: "malagasų"),
  TranslatedName(LangLav(), name: "malagasu"),
  TranslatedName(LangMkd(), name: "малгашки"),
  TranslatedName(LangMal(), name: "മലഗാസി"),
  TranslatedName(LangMon(), name: "малагаси"),
  TranslatedName(LangMar(), name: "मलागसी"),
  TranslatedName(LangMlt(), name: "Malagażi"),
  TranslatedName(LangMya(), name: "အာလာဂါစီ"),
  TranslatedName(LangNob(), name: "madagassisk"),
  TranslatedName(LangNep(), name: "मलागासी"),
  TranslatedName(LangNld(), name: "Malagassisch"),
  TranslatedName(LangNno(), name: "madagassisk"),
  TranslatedName(LangNor(), name: "madagassisk"),
  TranslatedName(LangOri(), name: "ମାଲାଗାସୀ"),
  TranslatedName(LangPan(), name: "ਮੇਲੇਗਸੀ"),
  TranslatedName(LangPol(), name: "malgaski"),
  TranslatedName(LangPus(), name: "ملغاسي"),
  TranslatedName(LangPor(), name: "malgaxe"),
  TranslatedName(LangRoh(), name: "malagassi"),
  TranslatedName(LangRon(), name: "malgașă"),
  TranslatedName(LangRus(), name: "малагасийский"),
  TranslatedName(LangSin(), name: "මලගාසි"),
  TranslatedName(LangSlk(), name: "malgaština"),
  TranslatedName(LangSlv(), name: "malagaščina"),
  TranslatedName(LangSqi(), name: "malageze"),
  TranslatedName(LangSrp(), name: "малгашки"),
  TranslatedName(LangSrp(), name: "malgaški", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "malagassiska"),
  TranslatedName(LangSwa(), name: "Malagasi"),
  TranslatedName(LangTam(), name: "மலகாஸி"),
  TranslatedName(LangTel(), name: "మాలాగసి"),
  TranslatedName(LangTha(), name: "มาลากาซี"),
  TranslatedName(LangTon(), name: "lea fakamalakasi"),
  TranslatedName(LangTur(), name: "Malgaşça"),
  TranslatedName(LangUig(), name: "ماداغاسقارچە"),
  TranslatedName(LangUkr(), name: "малагасійська"),
  TranslatedName(LangUrd(), name: "ملاگاسی"),
  TranslatedName(LangUzb(), name: "malagasiycha"),
  TranslatedName(LangUzb(), name: "Малагаси", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Malagasy"),
  TranslatedName(LangZho(), name: "马尔加什文"),
  TranslatedName(LangZho(), name: "馬拉加什文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Malagasy"),
];
