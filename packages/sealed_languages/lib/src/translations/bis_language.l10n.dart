import "../data/scripts.data.dart";
import "../model/language/language.dart";
import "../model/translated_name.dart";

/// Provides 99 translations for a Bislama language:
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
/// - Macedonian
/// - Malay
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Māori
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
/// - Yoruba
/// - Zulu.
const bisLanguageTranslations = [
  TranslatedName(LangEng(), name: "Bislama"),
  TranslatedName(LangAmh(), name: "ቢስላምኛ"),
  TranslatedName(LangAra(), name: "البيسلامية"),
  TranslatedName(LangAze(), name: "bislama dili"),
  TranslatedName(LangBul(), name: "бислама"),
  TranslatedName(LangBen(), name: "বিসলামা"),
  TranslatedName(LangBre(), name: "bislama"),
  TranslatedName(LangBos(), name: "bislama"),
  TranslatedName(LangBos(), name: "бислама", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "bislama"),
  TranslatedName(LangCes(), name: "bislamština"),
  TranslatedName(LangDan(), name: "bislama"),
  TranslatedName(LangEll(), name: "Μπισλάμα"),
  TranslatedName(LangEpo(), name: "bislamo"),
  TranslatedName(LangSpa(), name: "bislama"),
  TranslatedName(LangEst(), name: "bislama"),
  TranslatedName(LangFas(), name: "بیسلاما"),
  TranslatedName(LangFin(), name: "bislama"),
  TranslatedName(LangFra(), name: "bichelamar"),
  TranslatedName(LangGle(), name: "Bioslaimis"),
  TranslatedName(LangGuj(), name: "બિસ્લામા"),
  TranslatedName(LangHeb(), name: "ביסלמה"),
  TranslatedName(LangHin(), name: "बिस्लामा"),
  TranslatedName(LangHrv(), name: "bislama"),
  TranslatedName(LangHun(), name: "bislama"),
  TranslatedName(LangIsl(), name: "bíslama"),
  TranslatedName(LangIta(), name: "bislama"),
  TranslatedName(LangJpn(), name: "ビスラマ語"),
  TranslatedName(LangKan(), name: "ಬಿಸ್ಲಾಮಾ"),
  TranslatedName(LangKor(), name: "비슬라마어"),
  TranslatedName(LangKas(), name: "بِسلاما"),
  TranslatedName(LangLao(), name: "ບິສລະມາ"),
  TranslatedName(LangLit(), name: "bislama"),
  TranslatedName(LangLav(), name: "bišlamā"),
  TranslatedName(LangMkd(), name: "бислама"),
  TranslatedName(LangMal(), name: "ബിസ്‌ലാമ"),
  TranslatedName(LangMar(), name: "बिस्लामा"),
  TranslatedName(LangNob(), name: "bislama"),
  TranslatedName(LangNno(), name: "bislama"),
  TranslatedName(LangNor(), name: "bislama"),
  TranslatedName(LangOri(), name: "ବିସଲାମା"),
  TranslatedName(LangPol(), name: "bislama"),
  TranslatedName(LangPor(), name: "bislamá"),
  TranslatedName(LangRoh(), name: "bislama"),
  TranslatedName(LangRon(), name: "bislama"),
  TranslatedName(LangRus(), name: "бислама"),
  TranslatedName(LangSlk(), name: "bislama"),
  TranslatedName(LangSlv(), name: "bislamščina"),
  TranslatedName(LangSrp(), name: "Бислама"),
  TranslatedName(LangSwe(), name: "bislama"),
  TranslatedName(LangTam(), name: "பிஸ்லாமா"),
  TranslatedName(LangTel(), name: "బిస్లామా"),
  TranslatedName(LangTha(), name: "บิสลามา"),
  TranslatedName(LangTon(), name: "lea fakapisilama"),
  TranslatedName(LangUig(), name: "بىسلاماچە"),
  TranslatedName(LangUkr(), name: "біслама"),
  TranslatedName(LangVie(), name: "Tiếng Bislama"),
  TranslatedName(LangZho(), name: "比斯拉马文"),
  TranslatedName(LangZho(), name: "比斯拉馬文", script: ScriptHant()),
  TranslatedName(LangAsm(), name: "বিছলামা"),
  TranslatedName(LangBel(), name: "біслама"),
  TranslatedName(LangChe(), name: "бислама"),
  TranslatedName(LangEus(), name: "bislama"),
  TranslatedName(LangFul(), name: "𞤄𞤭𞤧𞤤𞤢𞤥𞤢𞥄𞤪𞤫", script: ScriptAdlm()),
  TranslatedName(LangFao(), name: "bislama"),
  TranslatedName(LangGlg(), name: "bislama"),
  TranslatedName(LangHye(), name: "բիսլամա"),
  TranslatedName(LangIna(), name: "bislama"),
  TranslatedName(LangKat(), name: "ბისლამა"),
  TranslatedName(LangKaz(), name: "бислама тілі"),
  TranslatedName(LangKhm(), name: "ប៊ីស្លាម៉ា"),
  TranslatedName(LangKur(), name: "bîslamayî"),
  TranslatedName(LangKir(), name: "бисламача"),
  TranslatedName(LangMri(), name: "Pihirāma"),
  TranslatedName(LangMon(), name: "бислам"),
  TranslatedName(LangMya(), name: "ဘစ်စ်လာမာ"),
  TranslatedName(LangNep(), name: "बिस्लाम"),
  TranslatedName(LangPan(), name: "ਬਿਸਲਾਮਾ"),
  TranslatedName(LangPus(), name: "بسلاما"),
  TranslatedName(LangSrd(), name: "bislama"),
  TranslatedName(LangSnd(), name: "بسلاما"),
  TranslatedName(LangSin(), name: "බිස්ලමා"),
  TranslatedName(LangSom(), name: "U dhashay Bislam"),
  TranslatedName(LangSqi(), name: "bislamisht"),
  TranslatedName(LangSwa(), name: "Kibislama"),
  TranslatedName(LangTir(), name: "ቢስላማ"),
  TranslatedName(LangTuk(), name: "bislama dili"),
  TranslatedName(LangUrd(), name: "بسلاما"),
  TranslatedName(LangUzb(), name: "bislama"),
  TranslatedName(LangYor(), name: "Èdè Bisilama"),
  TranslatedName(LangZul(), name: "isi-Bislama"),
  TranslatedName(LangDeu(), name: "Bislama"),
  TranslatedName(LangAfr(), name: "Bislama"),
  TranslatedName(LangCym(), name: "Bislama"),
  TranslatedName(LangInd(), name: "Bislama"),
  TranslatedName(LangMsa(), name: "Bislama"),
  TranslatedName(LangNld(), name: "Bislama"),
  TranslatedName(LangTur(), name: "Bislama"),
  TranslatedName(LangTgl(), name: "Wikang Bislama"),
];
