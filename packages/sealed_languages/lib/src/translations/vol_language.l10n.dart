import "../data/scripts.data.dart";
import "../model/language/language.dart";
import "../model/translated_name.dart";

/// Provides 103 translations for a Volapük language:
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
/// - English
/// - Esperanto
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
/// - Nepali
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
/// - Yiddish
/// - Yoruba
/// - Zulu.
const volLanguageTranslations = [
  TranslatedName(LangEng(), name: "Volapük"),
  TranslatedName(LangAmh(), name: "ቮላፑክኛ"),
  TranslatedName(LangAra(), name: "لغة الفولابوك"),
  TranslatedName(LangAze(), name: "volapük dili"),
  TranslatedName(LangBul(), name: "волапюк"),
  TranslatedName(LangBen(), name: "ভোলাপুক"),
  TranslatedName(LangBre(), name: "volapük"),
  TranslatedName(LangBos(), name: "volapük"),
  TranslatedName(LangBos(), name: "волапук", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "volapük"),
  TranslatedName(LangCes(), name: "volapük"),
  TranslatedName(LangDan(), name: "volapyk"),
  TranslatedName(LangEll(), name: "Βόλαπικ"),
  TranslatedName(LangEpo(), name: "volapuko"),
  TranslatedName(LangSpa(), name: "volapük"),
  TranslatedName(LangEst(), name: "volapüki"),
  TranslatedName(LangFas(), name: "ولاپوک"),
  TranslatedName(LangFin(), name: "volapük"),
  TranslatedName(LangFra(), name: "volapuk"),
  TranslatedName(LangGuj(), name: "વોલાપુક"),
  TranslatedName(LangHeb(), name: "‏וולאפיק"),
  TranslatedName(LangHin(), name: "वोलापुक"),
  TranslatedName(LangHrv(), name: "volapük"),
  TranslatedName(LangHun(), name: "volapük"),
  TranslatedName(LangInd(), name: "Volapuk"),
  TranslatedName(LangIta(), name: "volapük"),
  TranslatedName(LangJpn(), name: "ヴォラピュク語"),
  TranslatedName(LangKan(), name: "ವೋಲಾಪುಕ್"),
  TranslatedName(LangKor(), name: "볼라퓌크어"),
  TranslatedName(LangKas(), name: "وولَپُک"),
  TranslatedName(LangLao(), name: "ໂວລາພັກ"),
  TranslatedName(LangLit(), name: "volapiuk"),
  TranslatedName(LangLav(), name: "volapiks"),
  TranslatedName(LangMkd(), name: "волапик"),
  TranslatedName(LangMal(), name: "വോളാപുക്"),
  TranslatedName(LangMar(), name: "ओलापुक"),
  TranslatedName(LangMlt(), name: "Volapuk"),
  TranslatedName(LangNob(), name: "volapyk"),
  TranslatedName(LangNno(), name: "volapyk"),
  TranslatedName(LangNor(), name: "volapyk"),
  TranslatedName(LangOri(), name: "ବୋଲାପୁକ"),
  TranslatedName(LangPol(), name: "volapuk"),
  TranslatedName(LangPor(), name: "volapuque"),
  TranslatedName(LangRoh(), name: "volapuk"),
  TranslatedName(LangRon(), name: "volapuk"),
  TranslatedName(LangRus(), name: "волапюк"),
  TranslatedName(LangSlk(), name: "volapük"),
  TranslatedName(LangSlv(), name: "volapuk"),
  TranslatedName(LangSrp(), name: "Волапук"),
  TranslatedName(LangSrp(), name: "Volapuk", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "volapük"),
  TranslatedName(LangTam(), name: "ஒலாபூக்"),
  TranslatedName(LangTel(), name: "వోలాపుక్"),
  TranslatedName(LangTha(), name: "โวลาพึค"),
  TranslatedName(LangTon(), name: "lea fakavolapiki"),
  TranslatedName(LangUig(), name: "ۋولاپۇكچە"),
  TranslatedName(LangUkr(), name: "волап’юк"),
  TranslatedName(LangVie(), name: "Tiếng Volapük"),
  TranslatedName(LangYid(), name: "וואלאַפּוק"),
  TranslatedName(LangZho(), name: "沃拉普克文"),
  TranslatedName(LangIsl(), name: "volapük"),
  TranslatedName(LangGle(), name: "Volapük"),
  TranslatedName(LangAsm(), name: "ভোলাপুক"),
  TranslatedName(LangBel(), name: "валапюк"),
  TranslatedName(LangChe(), name: "волапюк"),
  TranslatedName(LangCym(), name: "Folapük"),
  TranslatedName(LangEus(), name: "volapük"),
  TranslatedName(LangFul(), name: "𞤏𞤮𞤤𞤢𞤨𞤵𞤳𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangFao(), name: "volapykk"),
  TranslatedName(LangGlg(), name: "volapuk"),
  TranslatedName(LangHye(), name: "վոլապյուկ"),
  TranslatedName(LangIna(), name: "volapük"),
  TranslatedName(LangIbo(), name: "Volapụ"),
  TranslatedName(LangJav(), name: "Volapuk"),
  TranslatedName(LangKat(), name: "ვოლაპუკი"),
  TranslatedName(LangKaz(), name: "волапюк тілі"),
  TranslatedName(LangKhm(), name: "វូឡាពូក"),
  TranslatedName(LangKur(), name: "volapûkî"),
  TranslatedName(LangKir(), name: "волапюкча"),
  TranslatedName(LangMon(), name: "волапюк"),
  TranslatedName(LangMya(), name: "ဗိုလာပိုက်"),
  TranslatedName(LangNep(), name: "भोलापिक"),
  TranslatedName(LangPan(), name: "ਵੋਲਾਪੂਕ"),
  TranslatedName(LangPus(), name: "والاپوک"),
  TranslatedName(LangQue(), name: "Volapük Simi"),
  TranslatedName(LangSrd(), name: "volapük"),
  TranslatedName(LangSnd(), name: "والپڪ"),
  TranslatedName(LangSin(), name: "වොලපූක්"),
  TranslatedName(LangSom(), name: "Folabuuk"),
  TranslatedName(LangSqi(), name: "volapykisht"),
  TranslatedName(LangSwa(), name: "Kivolapuk"),
  TranslatedName(LangTir(), name: "ቮላፑክ"),
  TranslatedName(LangTuk(), name: "wolapýuk dili"),
  TranslatedName(LangUrd(), name: "وولاپوک"),
  TranslatedName(LangUzb(), name: "volapyuk"),
  TranslatedName(LangYor(), name: "Fọ́lápùùkù"),
  TranslatedName(LangZul(), name: "isi-Volapük"),
  TranslatedName(LangDeu(), name: "Volapük"),
  TranslatedName(LangAfr(), name: "Volapük"),
  TranslatedName(LangMsa(), name: "Volapük"),
  TranslatedName(LangNld(), name: "Volapük"),
  TranslatedName(LangTur(), name: "Volapük"),
  TranslatedName(LangTgl(), name: "Volapük"),
];
