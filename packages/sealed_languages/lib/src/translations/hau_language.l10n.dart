import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 100 translations for a Hausa language:
/// - (Eastern) Punjabi
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
/// - Greek (modern)
/// - Gujarati
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Igbo
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
/// - Macedonian
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
/// - Shona
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
/// - Tonga (Tonga Islands)
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Yiddish
/// - Yoruba
/// - Zulu.
const hauLanguageTranslations = [
  TranslatedName(LangEng(), name: "Hausa"),
  TranslatedName(LangAmh(), name: "ሃውሳኛ"),
  TranslatedName(LangAra(), name: "الهوسا"),
  TranslatedName(LangAze(), name: "hausa"),
  TranslatedName(LangBul(), name: "хауза"),
  TranslatedName(LangBam(), name: "awusakan"),
  TranslatedName(LangBen(), name: "হাউসা"),
  TranslatedName(LangBre(), name: "haousa"),
  TranslatedName(LangBos(), name: "hausa"),
  TranslatedName(LangBos(), name: "хауса", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "haussa"),
  TranslatedName(LangCes(), name: "hauština"),
  TranslatedName(LangCym(), name: "Hawsa"),
  TranslatedName(LangDan(), name: "hausa"),
  TranslatedName(LangDzo(), name: "ཧཝ་ས་ཁ"),
  TranslatedName(LangEwe(), name: "hausagbe"),
  TranslatedName(LangEll(), name: "Χάουσα"),
  TranslatedName(LangEpo(), name: "haŭsa"),
  TranslatedName(LangSpa(), name: "hausa"),
  TranslatedName(LangEst(), name: "hausa"),
  TranslatedName(LangEus(), name: "hausa"),
  TranslatedName(LangFas(), name: "هوسیایی"),
  TranslatedName(LangFul(), name: "Hawsaŋkoore"),
  TranslatedName(LangFin(), name: "hausa"),
  TranslatedName(LangFao(), name: "haussa"),
  TranslatedName(LangFra(), name: "haoussa"),
  TranslatedName(LangGle(), name: "Hásais"),
  TranslatedName(LangGlg(), name: "hausa"),
  TranslatedName(LangGuj(), name: "હૌસા"),
  TranslatedName(LangHeb(), name: "האוסה"),
  TranslatedName(LangHin(), name: "हौसा"),
  TranslatedName(LangHrv(), name: "hausa"),
  TranslatedName(LangHun(), name: "hausza"),
  TranslatedName(LangHye(), name: "հաուսա"),
  TranslatedName(LangIbo(), name: "Awụsa"),
  TranslatedName(LangIsl(), name: "hása"),
  TranslatedName(LangIta(), name: "hausa"),
  TranslatedName(LangJpn(), name: "ハウサ語"),
  TranslatedName(LangKat(), name: "ჰაუსა"),
  TranslatedName(LangKik(), name: "Kihausa"),
  TranslatedName(LangKaz(), name: "хауса"),
  TranslatedName(LangKhm(), name: "ហូសា"),
  TranslatedName(LangKan(), name: "ಹೌಸಾ"),
  TranslatedName(LangKor(), name: "하우사어"),
  TranslatedName(LangKas(), name: "ہاوسا"),
  TranslatedName(LangKir(), name: "хаусача"),
  TranslatedName(LangLug(), name: "Luhawuza"),
  TranslatedName(LangLin(), name: "hausa"),
  TranslatedName(LangLao(), name: "ເຮົາຊາ"),
  TranslatedName(LangLit(), name: "hausų"),
  TranslatedName(LangLav(), name: "hausu"),
  TranslatedName(LangMlg(), name: "haoussa"),
  TranslatedName(LangMkd(), name: "хауса"),
  TranslatedName(LangMal(), name: "ഹൗസ"),
  TranslatedName(LangMon(), name: "хауса"),
  TranslatedName(LangMar(), name: "हौसा"),
  TranslatedName(LangMlt(), name: "Ħawsa"),
  TranslatedName(LangMya(), name: "ဟာဥစာ"),
  TranslatedName(LangNob(), name: "hausa"),
  TranslatedName(LangNde(), name: "isi-Hausa"),
  TranslatedName(LangNep(), name: "हाउसा"),
  TranslatedName(LangNno(), name: "hausa"),
  TranslatedName(LangNor(), name: "hausa"),
  TranslatedName(LangOri(), name: "ହୌସା"),
  TranslatedName(LangPan(), name: "ਹੌਸਾ"),
  TranslatedName(LangPol(), name: "hausa"),
  TranslatedName(LangPor(), name: "hauçá"),
  TranslatedName(LangPor(), name: "haúça", countryCode: "PT"),
  TranslatedName(LangQue(), name: "Hausa Simi"),
  TranslatedName(LangRoh(), name: "haussa"),
  TranslatedName(LangRun(), name: "Igihawusa"),
  TranslatedName(LangRon(), name: "hausa"),
  TranslatedName(LangRus(), name: "хауса"),
  TranslatedName(LangSme(), name: "haussagiella"),
  TranslatedName(LangSag(), name: "Haüsä"),
  TranslatedName(LangSin(), name: "හෝසා"),
  TranslatedName(LangSlk(), name: "hauština"),
  TranslatedName(LangSlv(), name: "havščina"),
  TranslatedName(LangSna(), name: "chiHausa"),
  TranslatedName(LangSom(), name: "Hawsa"),
  TranslatedName(LangSqi(), name: "hausisht"),
  TranslatedName(LangSrp(), name: "хауса"),
  TranslatedName(LangSrp(), name: "hausa", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "hausa"),
  TranslatedName(LangSwa(), name: "Kihausa"),
  TranslatedName(LangTam(), name: "ஹௌஸா"),
  TranslatedName(LangTel(), name: "హౌసా"),
  TranslatedName(LangTha(), name: "เฮาชา"),
  TranslatedName(LangTon(), name: "lea fakahausa"),
  TranslatedName(LangUig(), name: "خائۇساچە"),
  TranslatedName(LangUkr(), name: "хауса"),
  TranslatedName(LangUrd(), name: "ہؤسا"),
  TranslatedName(LangUzb(), name: "xauscha"),
  TranslatedName(LangUzb(), name: "Хауса", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Hausa"),
  TranslatedName(LangYid(), name: "האַוסאַ"),
  TranslatedName(LangYor(), name: "Èdè Hausa"),
  TranslatedName(LangZho(), name: "豪萨文"),
  TranslatedName(LangZho(), name: "豪撒文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Hausa"),
];
