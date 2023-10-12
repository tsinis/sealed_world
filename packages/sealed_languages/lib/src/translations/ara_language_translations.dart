import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 91 translations for a Arabic language:
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
/// - Estonian
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
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Nepali
/// - Northern Sami
/// - Norwegian
/// - Norwegian Bokmål
/// - Ossetian (Ossetic)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Romanian
/// - Russian
/// - Serbian
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
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
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Zulu.
const araLanguageTranslations = [
  TranslatedName(LangEng(), name: "Modern Standard Arabic"),
  TranslatedName(LangAfr(), name: "Moderne Standaard Arabies"),
  TranslatedName(LangAmh(), name: "ዘመናዊ መደበኛ ዓረብኛ"),
  TranslatedName(LangAra(), name: "العربية الرسمية الحديثة"),
  TranslatedName(LangAze(), name: "Modern Standart Ərəbcə"),
  TranslatedName(LangBul(), name: "съвременен стандартен арабски"),
  TranslatedName(LangBen(), name: "আরবী"),
  TranslatedName(LangBre(), name: "arabeg modern"),
  TranslatedName(LangBos(), name: "moderni standardni arapski"),
  TranslatedName(LangCat(), name: "àrab estàndard modern"),
  TranslatedName(LangCes(), name: "arabština (moderní standardní)"),
  TranslatedName(LangCym(), name: "Arabeg Modern Safonol"),
  TranslatedName(LangDan(), name: "moderne standardarabisk"),
  TranslatedName(LangDeu(), name: "Modernes Hocharabisch"),
  TranslatedName(LangDzo(), name: "ཨེ་ར་བིཀ་ཁ"),
  TranslatedName(LangEll(), name: "Σύγχρονα Τυπικά Αραβικά"),
  TranslatedName(LangSpa(), name: "árabe estándar moderno"),
  TranslatedName(LangEst(), name: "araabia (tänapäevane)"),
  TranslatedName(LangEus(), name: "arabiera moderno estandarra"),
  TranslatedName(LangFas(), name: "عربی رسمی"),
  TranslatedName(LangFin(), name: "yleisarabia"),
  TranslatedName(LangFra(), name: "arabe standard moderne"),
  TranslatedName(LangFry(), name: "Modern standert Arabysk"),
  TranslatedName(LangGle(), name: "Araibis Chaighdeánach"),
  TranslatedName(LangGla(), name: "Nuadh-Arabais Stannardach"),
  TranslatedName(LangGlg(), name: "árabe estándar moderno"),
  TranslatedName(LangGuj(), name: "મોડર્ન સ્ટાન્ડર્ડ અરબી"),
  TranslatedName(LangHeb(), name: "ערבית ספרותית"),
  TranslatedName(LangHin(), name: "आधुनिक मानक अरबी"),
  TranslatedName(LangHrv(), name: "moderni standardni arapski"),
  TranslatedName(LangHun(), name: "modern szabányos arab"),
  TranslatedName(LangHye(), name: "ժամանակակից ստանդարտ արաբերեն"),
  TranslatedName(LangInd(), name: "Arab Standar Modern"),
  TranslatedName(LangIsl(), name: "stöðluð nútímaarabíska"),
  TranslatedName(LangIta(), name: "arabo moderno standard"),
  TranslatedName(LangJpn(), name: "現代標準アラビア語"),
  TranslatedName(LangKat(), name: "თანამედროვე სტანდარტული არაბული"),
  TranslatedName(LangKaz(), name: "қазіргі стандартты араб тілі"),
  TranslatedName(LangKhm(), name: "អារ៉ាប់​ស្តង់ដារ​ទំនើប"),
  TranslatedName(LangKan(), name: "ಆಧುನಿಕ ಪ್ರಮಾಣಿತ ಅರೇಬಿಕ್"),
  TranslatedName(LangKor(), name: "현대 표준 아랍어"),
  TranslatedName(LangKas(), name: "عربی"),
  TranslatedName(LangKir(), name: "арабча"),
  TranslatedName(LangLtz(), name: "Modernt Héicharabesch"),
  TranslatedName(LangLao(), name: "ອາຣາບິກມາດຕະຖານສະໄໝໃໝ່"),
  TranslatedName(LangLit(), name: "šiuolaikinė standartinė arabų"),
  TranslatedName(LangLav(), name: "mūsdienu standarta arābu"),
  TranslatedName(LangMkd(), name: "литературен арапски"),
  TranslatedName(LangMal(), name: "ആധുനിക സ്റ്റാൻഡേർഡ് അറബിക്"),
  TranslatedName(LangMon(), name: "стандарт араб"),
  TranslatedName(LangMar(), name: "आधुनिक प्रमाणित अरबी"),
  TranslatedName(LangMsa(), name: "Arab Standard Moden"),
  TranslatedName(LangMlt(), name: "Għarbi Standard Modern"),
  TranslatedName(LangMya(), name: "အာရေဗီ"),
  TranslatedName(LangNob(), name: "moderne standard arabisk"),
  TranslatedName(LangNep(), name: "आधुनिक मानक अरबी"),
  TranslatedName(LangNld(), name: "modern standaard Arabisch"),
  TranslatedName(LangNor(), name: "moderne standard arabisk"),
  TranslatedName(LangOss(), name: "араббаг"),
  TranslatedName(LangPan(), name: "ਆਧੁਨਿਕ ਮਿਆਰੀ ਅਰਬੀ"),
  TranslatedName(LangPol(), name: "współczesny arabski"),
  TranslatedName(LangPor(), name: "árabe moderno"),
  TranslatedName(LangRon(), name: "arabă standard modernă"),
  TranslatedName(LangRus(), name: "арабский литературный"),
  TranslatedName(LangSme(), name: "standárda arábagiella", countryCode: "FI"),
  TranslatedName(LangSin(), name: "නවීන සම්මත අරාබි"),
  TranslatedName(LangSlk(), name: "arabčina (moderná štandardná)"),
  TranslatedName(LangSlv(), name: "sodobna standardna arabščina"),
  TranslatedName(LangSqi(), name: "arabishte standarde moderne"),
  TranslatedName(LangSrp(), name: "модеран стандардни арапски"),
  TranslatedName(
    LangSrp(),
    name: "moderan standardni arapski",
    script: ScriptLatn(),
  ),
  TranslatedName(LangSwe(), name: "modern standardarabiska"),
  TranslatedName(LangSwa(), name: "Kiarabu Sanifu cha Kisasa"),
  TranslatedName(LangTam(), name: "மாடர்ன் ஸ்டாண்டர்ட் அரபிக்"),
  TranslatedName(LangTel(), name: "ఆధునిక ప్రామాణిక అరబిక్"),
  TranslatedName(LangTha(), name: "อาหรับมาตรฐานสมัยใหม่"),
  TranslatedName(LangTir(), name: "ዓረበኛ"),
  TranslatedName(LangTgl(), name: "Modernong Karaniwang Arabe"),
  TranslatedName(LangTon(), name: "lea fakaʻalepea (māmani)"),
  TranslatedName(LangTur(), name: "Modern Standart Arapça"),
  TranslatedName(LangUig(), name: "ھازىرقى زامان ئۆلچەملىك ئەرەبچە"),
  TranslatedName(LangUkr(), name: "сучасна стандартна арабська"),
  TranslatedName(LangUrd(), name: "ماڈرن اسٹینڈرڈ عربی"),
  TranslatedName(LangUrd(), name: "عربی", countryCode: "IN"),
  TranslatedName(LangUzb(), name: "zamonavij standart arabcha"),
  TranslatedName(LangUzb(), name: "Арабча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Ả Rập Hiện đại"),
  TranslatedName(LangZho(), name: "现代标准阿拉伯文"),
  TranslatedName(LangZho(), name: "阿拉伯文", countryCode: "HK"),
  TranslatedName(LangZho(), name: "現代標準阿拉伯文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "Isi-Arabic Esijwayelekile Samanje"),
];
