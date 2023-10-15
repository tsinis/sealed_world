import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 108 translations for a Burmese language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Akan
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Bambara
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
/// - Irish
/// - Italian
/// - Japanese
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
/// - Kikuyu (Gikuyu)
/// - Kirundi
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lingala
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malagasy
/// - Malay
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
/// - Romanian
/// - Romansh
/// - Russian
/// - Sango
/// - Serbian
/// - Shona
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
/// - Yiddish
/// - Yoruba
/// - Zulu.
const myaLanguageTranslations = [
  TranslatedName(LangEng(), name: "Burmese"),
  TranslatedName(LangAfr(), name: "Birmaans"),
  TranslatedName(LangAka(), name: "Bɛɛmis kasa"),
  TranslatedName(LangAmh(), name: "ቡርማኛ"),
  TranslatedName(LangAra(), name: "البورمية"),
  TranslatedName(LangAze(), name: "birma"),
  TranslatedName(LangBul(), name: "бирмански"),
  TranslatedName(LangBam(), name: "birimanikan"),
  TranslatedName(LangBen(), name: "বর্মি"),
  TranslatedName(LangBre(), name: "birmaneg"),
  TranslatedName(LangBos(), name: "burmanski"),
  TranslatedName(LangBos(), name: "бурмански", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "birmà"),
  TranslatedName(LangCes(), name: "barmština"),
  TranslatedName(LangCym(), name: "Byrmaneg"),
  TranslatedName(LangDan(), name: "burmesisk"),
  TranslatedName(LangDeu(), name: "Birmanisch"),
  TranslatedName(LangDzo(), name: "བར་མིས་ཁ"),
  TranslatedName(LangEwe(), name: "burmagbe"),
  TranslatedName(LangEll(), name: "Βιρμανικά"),
  TranslatedName(LangEpo(), name: "birma"),
  TranslatedName(LangSpa(), name: "birmano"),
  TranslatedName(LangEst(), name: "birma"),
  TranslatedName(LangEus(), name: "burmatarra"),
  TranslatedName(LangFas(), name: "برمه‌ای"),
  TranslatedName(LangFul(), name: "Burmeese"),
  TranslatedName(LangFin(), name: "burma"),
  TranslatedName(LangFao(), name: "burmesiskt"),
  TranslatedName(LangFra(), name: "birman"),
  TranslatedName(LangFry(), name: "Birmees"),
  TranslatedName(LangGle(), name: "Burmais"),
  TranslatedName(LangGla(), name: "Burmais"),
  TranslatedName(LangGlg(), name: "birmano"),
  TranslatedName(LangGuj(), name: "બર્મીઝ"),
  TranslatedName(LangHau(), name: "Burmanci"),
  TranslatedName(LangHeb(), name: "בורמזית"),
  TranslatedName(LangHin(), name: "बर्मीज़"),
  TranslatedName(LangHrv(), name: "burmanski"),
  TranslatedName(LangHun(), name: "burmai"),
  TranslatedName(LangHye(), name: "բիրմայերեն"),
  TranslatedName(LangInd(), name: "Burma"),
  TranslatedName(LangIbo(), name: "Mịanma"),
  TranslatedName(LangIsl(), name: "burmneska"),
  TranslatedName(LangIta(), name: "birmano"),
  TranslatedName(LangJpn(), name: "ビルマ語"),
  TranslatedName(LangKat(), name: "ბირმული"),
  TranslatedName(LangKik(), name: "Kiburma"),
  TranslatedName(LangKaz(), name: "бирман"),
  TranslatedName(LangKhm(), name: "ភូមា"),
  TranslatedName(LangKan(), name: "ಬರ್ಮೀಸ್"),
  TranslatedName(LangKor(), name: "버마어"),
  TranslatedName(LangKas(), name: "بٔمیٖز"),
  TranslatedName(LangKir(), name: "бурмача"),
  TranslatedName(LangLtz(), name: "Birmanesch"),
  TranslatedName(LangLug(), name: "Lubbama"),
  TranslatedName(LangLin(), name: "libilimá"),
  TranslatedName(LangLao(), name: "ມຽນມາ"),
  TranslatedName(LangLit(), name: "birmiečių"),
  TranslatedName(LangLav(), name: "birmiešu"),
  TranslatedName(LangMlg(), name: "Birmana"),
  TranslatedName(LangMkd(), name: "бурмански"),
  TranslatedName(LangMal(), name: "ബർമീസ്"),
  TranslatedName(LangMon(), name: "бирм"),
  TranslatedName(LangMar(), name: "बर्मी"),
  TranslatedName(LangMsa(), name: "Burma"),
  TranslatedName(LangMlt(), name: "Burmiż"),
  TranslatedName(LangMya(), name: "ဗမာ"),
  TranslatedName(LangNob(), name: "burmesisk"),
  TranslatedName(LangNde(), name: "isi-Burma"),
  TranslatedName(LangNep(), name: "वर्मेली"),
  TranslatedName(LangNld(), name: "Birmaans"),
  TranslatedName(LangNno(), name: "burmesisk"),
  TranslatedName(LangNor(), name: "burmesisk"),
  TranslatedName(LangOri(), name: "ବର୍ମୀଜ୍"),
  TranslatedName(LangPan(), name: "ਬਰਮੀ"),
  TranslatedName(LangPol(), name: "birmański"),
  TranslatedName(LangPor(), name: "birmanês"),
  TranslatedName(LangRoh(), name: "birman"),
  TranslatedName(LangRun(), name: "Ikinyabirimaniya"),
  TranslatedName(LangRon(), name: "birmaneză"),
  TranslatedName(LangRus(), name: "бирманский"),
  TranslatedName(LangSme(), name: "burmagiella"),
  TranslatedName(LangSag(), name: "Miamära, Birimäni"),
  TranslatedName(LangSin(), name: "බුරුම"),
  TranslatedName(LangSlk(), name: "barmčina"),
  TranslatedName(LangSlv(), name: "burmanščina"),
  TranslatedName(LangSna(), name: "chiBurma"),
  TranslatedName(LangSqi(), name: "birmanisht"),
  TranslatedName(LangSrp(), name: "бурмански"),
  TranslatedName(LangSrp(), name: "burmanski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "burmesiska"),
  TranslatedName(LangSwa(), name: "Kiburma"),
  TranslatedName(LangTam(), name: "பர்மிஸ்"),
  TranslatedName(LangTel(), name: "బర్మీస్"),
  TranslatedName(LangTha(), name: "พม่า"),
  TranslatedName(LangTon(), name: "lea fakapema"),
  TranslatedName(LangTur(), name: "Burmaca"),
  TranslatedName(LangUig(), name: "بىرماچە"),
  TranslatedName(LangUkr(), name: "бірманська"),
  TranslatedName(LangUrd(), name: "برمی"),
  TranslatedName(LangUzb(), name: "birmancha"),
  TranslatedName(LangUzb(), name: "Бирманча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Miến Điện"),
  TranslatedName(LangYid(), name: "בירמאַניש"),
  TranslatedName(LangYor(), name: "Èdè Bumiisi"),
  TranslatedName(LangZho(), name: "缅甸文"),
  TranslatedName(LangZho(), name: "緬甸文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Burmese"),
];
