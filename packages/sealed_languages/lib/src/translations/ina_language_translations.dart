import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 71 translations for a Interlingua language:
/// - Amharic
/// - Arabic
/// - Azerbaijani
/// - Belarusian
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Catalan
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - English
/// - Esperanto
/// - Estonian
/// - Faroese
/// - Finnish
/// - French
/// - Galician
/// - Georgian
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
/// - Kinyarwanda
/// - Korean
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Macedonian
/// - Malayalam
/// - Marathi (Marāṭhī)
/// - Mongolian
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
/// - Swahili
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Vietnamese
/// - Yoruba
/// - Zulu.
const inaLanguageTranslations = [
  TranslatedName(LangEng(), name: "Interlingua"),
  TranslatedName(LangAmh(), name: "ኢንቴርሊንጓ"),
  TranslatedName(LangAra(), name: "اللّغة الوسيطة"),
  TranslatedName(LangAze(), name: "interlingua dili"),
  TranslatedName(LangBel(), name: "інтэрлінгва"),
  TranslatedName(LangBul(), name: "интерлингва"),
  TranslatedName(LangBen(), name: "ইন্টারলিঙ্গুয়া"),
  TranslatedName(LangBre(), name: "interlingua"),
  TranslatedName(LangBos(), name: "interlingva"),
  TranslatedName(LangBos(), name: "интерлингва", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "interlingua"),
  TranslatedName(LangCes(), name: "interlingua"),
  TranslatedName(LangDan(), name: "interlingua"),
  TranslatedName(LangEll(), name: "Ιντερλίνγκουα"),
  TranslatedName(LangEpo(), name: "interlingvao"),
  TranslatedName(LangSpa(), name: "interlingua"),
  TranslatedName(LangEst(), name: "interlingua"),
  TranslatedName(LangFas(), name: "میان‌زبان"),
  TranslatedName(LangFin(), name: "interlingua"),
  TranslatedName(LangFao(), name: "interlingua"),
  TranslatedName(LangFra(), name: "interlingua"),
  TranslatedName(LangGlg(), name: "interlingua"),
  TranslatedName(LangGuj(), name: "ઇંટરલિંગુઆ"),
  TranslatedName(LangHeb(), name: "‏אינטרלינגואה"),
  TranslatedName(LangHin(), name: "ईन्टरलिंगुआ"),
  TranslatedName(LangHrv(), name: "interlingua"),
  TranslatedName(LangHun(), name: "interlingva"),
  TranslatedName(LangIsl(), name: "alþjóðatunga"),
  TranslatedName(LangIta(), name: "interlingua"),
  TranslatedName(LangJpn(), name: "インターリングア"),
  TranslatedName(LangKat(), name: "ინტერლინგუალური"),
  TranslatedName(LangKan(), name: "ಇಂಟರ್‌ಲಿಂಗ್ವಾ"),
  TranslatedName(LangKor(), name: "인테르링구아 (국제보조어협회)"),
  TranslatedName(LangKas(), name: "اِنٹَرلِنٛگوا"),
  TranslatedName(LangLao(), name: "ອິນເຕີລິງລົວ"),
  TranslatedName(LangLit(), name: "interlingva"),
  TranslatedName(LangLav(), name: "interlingva"),
  TranslatedName(LangMkd(), name: "интерлингва"),
  TranslatedName(LangMal(), name: "ഇന്റർലിൻ‌ഗ്വാ"),
  TranslatedName(LangMon(), name: "интерлингво"),
  TranslatedName(LangMar(), name: "इंटरलिंग्वा"),
  TranslatedName(LangNob(), name: "interlingua"),
  TranslatedName(LangNno(), name: "interlingua"),
  TranslatedName(LangNor(), name: "interlingua"),
  TranslatedName(LangOri(), name: "ଇର୍ଣ୍ଟଲିଙ୍ଗୁଆ"),
  TranslatedName(LangPol(), name: "interlingua"),
  TranslatedName(LangPor(), name: "interlíngua"),
  TranslatedName(LangRoh(), name: "interlingua"),
  TranslatedName(LangRon(), name: "interlingua"),
  TranslatedName(LangRus(), name: "интерлингва"),
  TranslatedName(LangKin(), name: "Ururimi Gahuzamiryango"),
  TranslatedName(LangSlk(), name: "interlingua"),
  TranslatedName(LangSlv(), name: "interlingva"),
  TranslatedName(LangSrp(), name: "Интерлингва"),
  TranslatedName(LangSrp(), name: "Interlingva", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "interlingua"),
  TranslatedName(LangSwa(), name: "Kiintalingua"),
  TranslatedName(LangTam(), name: "இண்டர்லிங்வா"),
  TranslatedName(LangTel(), name: "ఇంటర్లింగ్వా"),
  TranslatedName(LangTha(), name: "อินเตอร์ลิงกัว"),
  TranslatedName(LangTir(), name: "ኢንቴር ቋንቋ"),
  TranslatedName(LangTon(), name: "lea fakavahaʻalea"),
  TranslatedName(LangUig(), name: "ئارىلىق تىل"),
  TranslatedName(LangUkr(), name: "інтерлінгва"),
  TranslatedName(LangUrd(), name: "بین لسانیات"),
  TranslatedName(LangVie(), name: "Tiếng Khoa Học Quốc Tế"),
  TranslatedName(LangYor(), name: "Èdè pipo"),
  TranslatedName(LangZho(), name: "国际文字"),
  TranslatedName(LangZho(), name: "國際文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "Izilimi ezihlangene"),

  /// Added manually:
  TranslatedName(LangGle(), name: "Interlingua"),
];
