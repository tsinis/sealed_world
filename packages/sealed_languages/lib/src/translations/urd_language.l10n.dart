import "../model/language/language.dart";
import "../model/script/writing_system.dart";
import "../model/translated_name.dart";

/// Provides 123 translations for a Urdu language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Akan
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Assamese
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
/// - Interlingua
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
/// - Kurdish
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lingala
/// - Lithuanian
/// - Macedonian
/// - Malagasy
/// - Malay
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Māori
/// - Nepali
/// - Northern Ndebele
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
/// - Sango
/// - Sardinian
/// - Serbian
/// - Shona
/// - Sindhi
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Somali
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
const urdLanguageTranslations = [
  TranslatedName(LangEng(), name: "Urdu"),
  TranslatedName(LangAfr(), name: "Oerdoe"),
  TranslatedName(LangAka(), name: "Urdu kasa"),
  TranslatedName(LangAmh(), name: "ኡርዱኛ"),
  TranslatedName(LangAra(), name: "الأردية"),
  TranslatedName(LangAze(), name: "urdu"),
  TranslatedName(LangBel(), name: "урду"),
  TranslatedName(LangBul(), name: "урду"),
  TranslatedName(LangBam(), name: "urudukan"),
  TranslatedName(LangBen(), name: "উর্দু"),
  TranslatedName(LangBre(), name: "ourdou"),
  TranslatedName(LangBos(), name: "urdu"),
  TranslatedName(LangBos(), name: "урду", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "urdú"),
  TranslatedName(LangCes(), name: "urdština"),
  TranslatedName(LangCym(), name: "Wrdw"),
  TranslatedName(LangDan(), name: "urdu"),
  TranslatedName(LangDzo(), name: "ཨུར་དུ་ཁ"),
  TranslatedName(LangEwe(), name: "urdugbe"),
  TranslatedName(LangEll(), name: "Ουρντού"),
  TranslatedName(LangEpo(), name: "urduo"),
  TranslatedName(LangSpa(), name: "urdu"),
  TranslatedName(LangEst(), name: "urdu"),
  TranslatedName(LangEus(), name: "urdua"),
  TranslatedName(LangFas(), name: "اردو"),
  TranslatedName(LangFin(), name: "urdu"),
  TranslatedName(LangFao(), name: "urdu"),
  TranslatedName(LangFra(), name: "ourdou"),
  TranslatedName(LangGle(), name: "Urdúis"),
  TranslatedName(LangGla(), name: "Ùrdu"),
  TranslatedName(LangGlg(), name: "urdú"),
  TranslatedName(LangGuj(), name: "ઉર્દૂ"),
  TranslatedName(LangHau(), name: "Harshen Urdu"),
  TranslatedName(LangHeb(), name: "אורדו"),
  TranslatedName(LangHin(), name: "उर्दू"),
  TranslatedName(LangHrv(), name: "urdski"),
  TranslatedName(LangHun(), name: "urdu"),
  TranslatedName(LangHye(), name: "ուրդու"),
  TranslatedName(LangIbo(), name: "Urudu"),
  TranslatedName(LangIsl(), name: "úrdú"),
  TranslatedName(LangIta(), name: "urdu"),
  TranslatedName(LangJpn(), name: "ウルドゥー語"),
  TranslatedName(LangKat(), name: "ურდუ"),
  TranslatedName(LangKik(), name: "Kiurdu"),
  TranslatedName(LangKaz(), name: "урду"),
  TranslatedName(LangKhm(), name: "អ៊ូរឌូ"),
  TranslatedName(LangKan(), name: "ಉರ್ದು"),
  TranslatedName(LangKor(), name: "우르두어"),
  TranslatedName(LangKas(), name: "اُردوٗ"),
  TranslatedName(LangKir(), name: "урдуча"),
  TranslatedName(LangLug(), name: "Lu-urudu"),
  TranslatedName(LangLin(), name: "liurdu"),
  TranslatedName(LangLao(), name: "ອູຣະດູ"),
  TranslatedName(LangLit(), name: "urdų"),
  TranslatedName(LangLav(), name: "urdu"),
  TranslatedName(LangMlg(), name: "Ordò"),
  TranslatedName(LangMkd(), name: "урду"),
  TranslatedName(LangMal(), name: "ഉറുദു"),
  TranslatedName(LangMon(), name: "урду"),
  TranslatedName(LangMar(), name: "उर्दू"),
  TranslatedName(LangMya(), name: "အော်ဒူ"),
  TranslatedName(LangNob(), name: "urdu"),
  TranslatedName(LangNde(), name: "isi-Udu"),
  TranslatedName(LangNep(), name: "उर्दु"),
  TranslatedName(LangNno(), name: "urdu"),
  TranslatedName(LangNor(), name: "urdu"),
  TranslatedName(LangOrm(), name: "Afaan Urdu"),
  TranslatedName(LangOri(), name: "ଉର୍ଦ୍ଦୁ"),
  TranslatedName(LangPan(), name: "ਉਰਦੂ"),
  TranslatedName(LangPol(), name: "urdu"),
  TranslatedName(LangPor(), name: "urdu"),
  TranslatedName(LangQue(), name: "Urdu Simi"),
  TranslatedName(LangRoh(), name: "urdu"),
  TranslatedName(LangRun(), name: "Inyeyurudu"),
  TranslatedName(LangRon(), name: "urdu"),
  TranslatedName(LangRus(), name: "урду"),
  TranslatedName(LangKin(), name: "Inyeyurudu"),
  TranslatedName(LangSme(), name: "urdugiella"),
  TranslatedName(LangSag(), name: "Ûrdu"),
  TranslatedName(LangSin(), name: "උර්දු"),
  TranslatedName(LangSlk(), name: "urdčina"),
  TranslatedName(LangSlv(), name: "urdujščina"),
  TranslatedName(LangSna(), name: "chiUrdu"),
  TranslatedName(LangSom(), name: "Urduu"),
  TranslatedName(LangSqi(), name: "urdu"),
  TranslatedName(LangSrp(), name: "урду"),
  TranslatedName(LangSrp(), name: "urdu", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "urdu"),
  TranslatedName(LangSwa(), name: "Kiurdu"),
  TranslatedName(LangTam(), name: "உருது"),
  TranslatedName(LangTel(), name: "ఉర్దూ"),
  TranslatedName(LangTha(), name: "อูรดู"),
  TranslatedName(LangTir(), name: "ኡርዱኛ"),
  TranslatedName(LangTon(), name: "lea fakaʻūtū"),
  TranslatedName(LangTur(), name: "Urduca"),
  TranslatedName(LangUig(), name: "ئوردوچە"),
  TranslatedName(LangUkr(), name: "урду"),
  TranslatedName(LangUrd(), name: "اردو"),
  TranslatedName(LangUzb(), name: "urducha"),
  TranslatedName(LangUzb(), name: "Урду", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Uđu"),
  TranslatedName(LangYid(), name: "אורדו"),
  TranslatedName(LangYor(), name: "Èdè Udu"),
  TranslatedName(LangZho(), name: "乌尔都文"),
  TranslatedName(LangZho(), name: "烏都文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Urdu"),
  TranslatedName(LangAsm(), name: "উৰ্দু"),
  TranslatedName(LangChe(), name: "урду"),
  TranslatedName(LangFul(), name: "𞤓𞤪𞤣𞤵𞥅𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangIna(), name: "urdu"),
  TranslatedName(LangKur(), name: "urdûyî"),
  TranslatedName(LangMri(), name: "Ūrutu"),
  TranslatedName(LangPus(), name: "اردو"),
  TranslatedName(LangSrd(), name: "urdu"),
  TranslatedName(LangSnd(), name: "اردو"),
  TranslatedName(LangTgk(), name: "урду"),
  TranslatedName(LangTuk(), name: "urdu"),
  TranslatedName(LangTat(), name: "урду"),
  TranslatedName(LangDeu(), name: "Urdu"),
  TranslatedName(LangInd(), name: "Urdu"),
  TranslatedName(LangMsa(), name: "Urdu"),
  TranslatedName(LangNld(), name: "Oerdoe"),
  TranslatedName(LangTgl(), name: "Urdu"),
];
