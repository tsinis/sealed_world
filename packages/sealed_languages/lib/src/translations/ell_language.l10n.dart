import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 128 translations for a Greek (modern) language:
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
/// - Javanese
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
/// - Luba-Katanga
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malagasy
/// - Malayalam
/// - Maltese
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
const ellLanguageTranslations = [
  TranslatedName(LangEng(), name: "Greek"),
  TranslatedName(LangAfr(), name: "Grieks"),
  TranslatedName(LangAka(), name: "Greek kasa"),
  TranslatedName(LangAmh(), name: "ግሪክኛ"),
  TranslatedName(LangAra(), name: "اليونانية"),
  TranslatedName(LangAze(), name: "yunan"),
  TranslatedName(LangBel(), name: "грэцкая"),
  TranslatedName(LangBul(), name: "гръцки"),
  TranslatedName(LangBam(), name: "gɛrɛsikan"),
  TranslatedName(LangBen(), name: "গ্রিক"),
  TranslatedName(LangBre(), name: "gresianeg"),
  TranslatedName(LangBos(), name: "grčki"),
  TranslatedName(LangBos(), name: "грчки", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "grec"),
  TranslatedName(LangCes(), name: "řečtina"),
  TranslatedName(LangCym(), name: "Groeg"),
  TranslatedName(LangDan(), name: "græsk"),
  TranslatedName(LangDeu(), name: "Griechisch"),
  TranslatedName(LangDzo(), name: "གྲིཀ་ཁ"),
  TranslatedName(LangEwe(), name: "grisigbe"),
  TranslatedName(LangEll(), name: "Ελληνικά"),
  TranslatedName(LangEpo(), name: "greka"),
  TranslatedName(LangSpa(), name: "griego"),
  TranslatedName(LangEst(), name: "kreeka"),
  TranslatedName(LangEus(), name: "greziera"),
  TranslatedName(LangFas(), name: "یونانی"),
  TranslatedName(LangFul(), name: "Gerke"),
  TranslatedName(LangFin(), name: "kreikka"),
  TranslatedName(LangFao(), name: "grikiskt"),
  TranslatedName(LangFra(), name: "grec"),
  TranslatedName(LangFry(), name: "Gryks"),
  TranslatedName(LangGle(), name: "Gréigis"),
  TranslatedName(LangGla(), name: "Greugais"),
  TranslatedName(LangGlg(), name: "grego"),
  TranslatedName(LangGuj(), name: "ગ્રીક"),
  TranslatedName(LangHau(), name: "Girkanci"),
  TranslatedName(LangHeb(), name: "יוונית"),
  TranslatedName(LangHin(), name: "यूनानी"),
  TranslatedName(LangHrv(), name: "grčki"),
  TranslatedName(LangHun(), name: "görög"),
  TranslatedName(LangHye(), name: "հունարեն"),
  TranslatedName(LangInd(), name: "Yunani"),
  TranslatedName(LangIbo(), name: "Giriikị"),
  TranslatedName(LangIsl(), name: "gríska"),
  TranslatedName(LangIta(), name: "greco"),
  TranslatedName(LangJpn(), name: "ギリシャ語"),
  TranslatedName(LangKat(), name: "ბერძნული"),
  TranslatedName(LangKik(), name: "Kigiriki"),
  TranslatedName(LangKaz(), name: "грек тілі"),
  TranslatedName(LangKhm(), name: "ក្រិច"),
  TranslatedName(LangKan(), name: "ಗ್ರೀಕ್"),
  TranslatedName(LangKor(), name: "그리스어"),
  TranslatedName(LangKas(), name: "یوٗنٲنی"),
  TranslatedName(LangKir(), name: "грекче"),
  TranslatedName(LangLtz(), name: "Griichesch"),
  TranslatedName(LangLug(), name: "Lugereeki/Luyonaani"),
  TranslatedName(LangLin(), name: "ligeleki"),
  TranslatedName(LangLao(), name: "ກຣີກ"),
  TranslatedName(LangLit(), name: "graikų"),
  TranslatedName(LangLub(), name: "Giliki"),
  TranslatedName(LangLav(), name: "grieķu"),
  TranslatedName(LangMlg(), name: "Grika"),
  TranslatedName(LangMkd(), name: "грчки"),
  TranslatedName(LangMal(), name: "ഗ്രീക്ക്"),
  TranslatedName(LangMon(), name: "грек"),
  TranslatedName(LangMar(), name: "ग्रीक"),
  TranslatedName(LangMlt(), name: "Grieg"),
  TranslatedName(LangMya(), name: "ဂရိ"),
  TranslatedName(LangNob(), name: "gresk"),
  TranslatedName(LangNde(), name: "isi-Giliki"),
  TranslatedName(LangNep(), name: "ग्रीक"),
  TranslatedName(LangNld(), name: "Grieks"),
  TranslatedName(LangNno(), name: "gresk"),
  TranslatedName(LangNor(), name: "gresk"),
  TranslatedName(LangOrm(), name: "Afaan Giriiki"),
  TranslatedName(LangOri(), name: "ଗ୍ରୀକ୍"),
  TranslatedName(LangOss(), name: "бердзейнаг"),
  TranslatedName(LangPan(), name: "ਯੂਨਾਨੀ"),
  TranslatedName(LangPol(), name: "grecki"),
  TranslatedName(LangPus(), name: "یوناني"),
  TranslatedName(LangPor(), name: "grego"),
  TranslatedName(LangQue(), name: "Griego Simi"),
  TranslatedName(LangRoh(), name: "grec"),
  TranslatedName(LangRun(), name: "Ikigereki"),
  TranslatedName(LangRon(), name: "greacă"),
  TranslatedName(LangRus(), name: "греческий"),
  TranslatedName(LangKin(), name: "Ikigereki"),
  TranslatedName(LangSme(), name: "greikkagiella"),
  TranslatedName(LangSag(), name: "Gerêki"),
  TranslatedName(LangSin(), name: "ග්‍රීක"),
  TranslatedName(LangSlk(), name: "gréčtina"),
  TranslatedName(LangSlv(), name: "grščina"),
  TranslatedName(LangSna(), name: "chiGreek"),
  TranslatedName(LangSom(), name: "Giriik"),
  TranslatedName(LangSqi(), name: "greqisht"),
  TranslatedName(LangSrp(), name: "грчки"),
  TranslatedName(LangSrp(), name: "grčki", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "grekiska"),
  TranslatedName(LangSwa(), name: "Kigiriki"),
  TranslatedName(LangTam(), name: "கிரேக்கம்"),
  TranslatedName(LangTel(), name: "గ్రీక్"),
  TranslatedName(LangTha(), name: "กรีก"),
  TranslatedName(LangTir(), name: "ግሪከኛ"),
  TranslatedName(LangTon(), name: "lea fakakalisi"),
  TranslatedName(LangTur(), name: "Yunanca"),
  TranslatedName(LangUig(), name: "گىرېكچە"),
  TranslatedName(LangUkr(), name: "грецька"),
  TranslatedName(LangUrd(), name: "یونانی"),
  TranslatedName(LangUzb(), name: "yunoncha"),
  TranslatedName(LangUzb(), name: "Грекча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Hy Lạp"),
  TranslatedName(LangYid(), name: "גריכיש"),
  TranslatedName(LangYor(), name: "Èdè Giriki"),
  TranslatedName(LangZho(), name: "希腊文"),
  TranslatedName(LangZho(), name: "希臘文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Greek"),
  TranslatedName(LangAsm(), name: "গ্ৰীক"),
  TranslatedName(LangChe(), name: "грекийн"),
  TranslatedName(LangIna(), name: "greco"),
  TranslatedName(LangJav(), name: "Yunani"),
  TranslatedName(LangKur(), name: "yewnanî"),
  TranslatedName(LangMri(), name: "Kariki"),
  TranslatedName(LangSrd(), name: "grecu"),
  TranslatedName(LangSnd(), name: "يوناني"),
  TranslatedName(LangTgk(), name: "юнонӣ"),
  TranslatedName(LangTuk(), name: "grek dili"),
  TranslatedName(LangTat(), name: "грек"),
  TranslatedName(LangWol(), name: "Gereg"),
];
