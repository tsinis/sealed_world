import "../data/scripts.data.dart";
import "../model/language/language.dart";
import "../model/translated_name.dart";

/// Provides 110 translations for a Malayalam language:
/// - (Eastern) Punjabi
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
/// - Hausa
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
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
/// - Macedonian
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Māori
/// - Nepali
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
/// - Yiddish
/// - Yoruba
/// - Zulu.
const malLanguageTranslations = [
  TranslatedName(LangEng(), name: "Malayalam"),
  TranslatedName(LangAfr(), name: "Malabaars"),
  TranslatedName(LangAmh(), name: "ማላያላምኛ"),
  TranslatedName(LangAra(), name: "الماليالام"),
  TranslatedName(LangAze(), name: "malayalam"),
  TranslatedName(LangBel(), name: "малаяламская"),
  TranslatedName(LangBul(), name: "малаялам"),
  TranslatedName(LangBen(), name: "মালায়ালাম"),
  TranslatedName(LangBre(), name: "malayalam"),
  TranslatedName(LangBos(), name: "malajalam"),
  TranslatedName(LangBos(), name: "малајалам", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "malaiàlam"),
  TranslatedName(LangCes(), name: "malajálamština"),
  TranslatedName(LangDan(), name: "malayalam"),
  TranslatedName(LangDzo(), name: "མ་ལ་ཡ་ལམ་ཁ"),
  TranslatedName(LangEwe(), name: "malayagbe"),
  TranslatedName(LangEll(), name: "Μαλαγιαλάμ"),
  TranslatedName(LangEpo(), name: "malajalama"),
  TranslatedName(LangSpa(), name: "malayalam"),
  TranslatedName(LangEst(), name: "malajalami"),
  TranslatedName(LangEus(), name: "malayalamera"),
  TranslatedName(LangFas(), name: "مالایالامی"),
  TranslatedName(LangFin(), name: "malajalam"),
  TranslatedName(LangFao(), name: "malayalam"),
  TranslatedName(LangFra(), name: "malayalam"),
  TranslatedName(LangGle(), name: "Mailéalaimis"),
  TranslatedName(LangGlg(), name: "malabar"),
  TranslatedName(LangGuj(), name: "મલયાલમ"),
  TranslatedName(LangHeb(), name: "מלאיאלם"),
  TranslatedName(LangHin(), name: "मलयालम"),
  TranslatedName(LangHrv(), name: "malajalamski"),
  TranslatedName(LangHun(), name: "malajálam"),
  TranslatedName(LangHye(), name: "մալայալամ"),
  TranslatedName(LangIsl(), name: "malajalam"),
  TranslatedName(LangIta(), name: "malayalam"),
  TranslatedName(LangJpn(), name: "マラヤーラム語"),
  TranslatedName(LangKat(), name: "მალაიალამური"),
  TranslatedName(LangKaz(), name: "малайялам"),
  TranslatedName(LangKhm(), name: "មលយាល័ម"),
  TranslatedName(LangKan(), name: "ಮಲಯಾಳಂ"),
  TranslatedName(LangKor(), name: "말라얄람어"),
  TranslatedName(LangKas(), name: "مٔلیالَم"),
  TranslatedName(LangKir(), name: "малайаламча"),
  TranslatedName(LangLao(), name: "ມາເລອາລຳ"),
  TranslatedName(LangLit(), name: "malajalių"),
  TranslatedName(LangLav(), name: "malajalu"),
  TranslatedName(LangMkd(), name: "малајалам"),
  TranslatedName(LangMal(), name: "മലയാളം"),
  TranslatedName(LangMon(), name: "малайлам"),
  TranslatedName(LangMar(), name: "मल्याळम"),
  TranslatedName(LangMlt(), name: "Malajalam"),
  TranslatedName(LangMya(), name: "မလေးရာလမ်"),
  TranslatedName(LangNob(), name: "malayalam"),
  TranslatedName(LangNep(), name: "मलयालम"),
  TranslatedName(LangNno(), name: "malayalam"),
  TranslatedName(LangNor(), name: "malayalam"),
  TranslatedName(LangOrm(), name: "Malayaalamiffaa"),
  TranslatedName(LangOri(), name: "ମାଲାୟଲମ୍"),
  TranslatedName(LangPan(), name: "ਮਲਿਆਲਮ"),
  TranslatedName(LangPol(), name: "malajalam"),
  TranslatedName(LangPor(), name: "malaiala"),
  TranslatedName(LangQue(), name: "Malayalam Simi"),
  TranslatedName(LangRoh(), name: "malayalam"),
  TranslatedName(LangRon(), name: "malayalam"),
  TranslatedName(LangRus(), name: "малаялам"),
  TranslatedName(LangKin(), name: "Ikimalayalami"),
  TranslatedName(LangSin(), name: "මලයාලම්"),
  TranslatedName(LangSlk(), name: "malajálamčina"),
  TranslatedName(LangSlv(), name: "malajalamščina"),
  TranslatedName(LangSqi(), name: "malajalame"),
  TranslatedName(LangSrp(), name: "малајалам"),
  TranslatedName(LangSrp(), name: "malajalam", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "malayalam"),
  TranslatedName(LangSwa(), name: "Kimalayalam"),
  TranslatedName(LangTam(), name: "மலையாளம்"),
  TranslatedName(LangTel(), name: "మలయాళం"),
  TranslatedName(LangTha(), name: "มาลายาลัม"),
  TranslatedName(LangTir(), name: "ማላያላምኛ"),
  TranslatedName(LangTon(), name: "lea fakaʻinitia-malāialami"),
  TranslatedName(LangUig(), name: "مالايامچە"),
  TranslatedName(LangUkr(), name: "малаялам"),
  TranslatedName(LangUrd(), name: "مالایالم"),
  TranslatedName(LangUzb(), name: "malayamcha"),
  TranslatedName(LangUzb(), name: "Малайалам", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Malayalam"),
  TranslatedName(LangYid(), name: "מאַלאַיאַלאַם"),
  TranslatedName(LangZho(), name: "马拉雅拉姆文"),
  TranslatedName(LangZho(), name: "馬來亞拉姆文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Malayalam"),
  TranslatedName(LangAsm(), name: "মালায়ালম"),
  TranslatedName(LangChe(), name: "малаялам"),
  TranslatedName(
    LangFul(),
    name: "𞤃𞤢𞤤𞤢𞤴𞤢𞤤𞤢𞤥𞤪𞤫",
    script: ScriptAdlm(),
  ),
  TranslatedName(LangHau(), name: "Malayalamci"),
  TranslatedName(LangIna(), name: "malayalam"),
  TranslatedName(LangKur(), name: "malayalamî"),
  TranslatedName(LangMri(), name: "Mareiārama"),
  TranslatedName(LangPus(), name: "مالايالم"),
  TranslatedName(LangSrd(), name: "malayalam"),
  TranslatedName(LangSnd(), name: "مليالم"),
  TranslatedName(LangTgk(), name: "малаяламӣ"),
  TranslatedName(LangTuk(), name: "malaýalam dili"),
  TranslatedName(LangTur(), name: "Malayalam dili"),
  TranslatedName(LangTat(), name: "малаялам"),
  TranslatedName(LangYor(), name: "Málàyálámù"),
  TranslatedName(LangDeu(), name: "Malayalam"),
  TranslatedName(LangCym(), name: "Malaialameg"),
  TranslatedName(LangInd(), name: "Malayalam"),
  TranslatedName(LangMsa(), name: "Malayalam"),
  TranslatedName(LangNld(), name: "Malayalam"),
  TranslatedName(LangTgl(), name: "Malayalam"),
];
