import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 88 translations for a Northern Ndebele language:
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
/// - English
/// - Estonian
/// - Ewe
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
/// - Northern Ndebele
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
const ndeLanguageTranslations = [
  TranslatedName(LangEng(), name: "North Ndebele"),
  TranslatedName(LangAfr(), name: "Noord-Ndebele"),
  TranslatedName(LangAmh(), name: "ሰሜን ንዴብሌ"),
  TranslatedName(LangAra(), name: "النديبيل الشمالي"),
  TranslatedName(LangAze(), name: "şimali ndebele"),
  TranslatedName(LangBul(), name: "северен ндебеле"),
  TranslatedName(LangBen(), name: "উত্তর এন্দেবিলি"),
  TranslatedName(LangBre(), name: "ndebele an Norzh"),
  TranslatedName(LangBos(), name: "sjeverni ndebele"),
  TranslatedName(LangBos(), name: "северни ндебеле", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "ndebele septentrional"),
  TranslatedName(LangCes(), name: "ndebele (Zimbabwe)"),
  TranslatedName(LangCym(), name: "Ndebele Gogleddol"),
  TranslatedName(LangDan(), name: "nordndebele"),
  TranslatedName(LangDeu(), name: "Nord-Ndebele-Sprache"),
  TranslatedName(LangEwe(), name: "dziehe ndebelegbe"),
  TranslatedName(LangEll(), name: "Ντεμπέλε Βορρά"),
  TranslatedName(LangSpa(), name: "ndebele septentrional"),
  TranslatedName(LangEst(), name: "põhjandebele"),
  TranslatedName(LangEus(), name: "iparraldeko ndebeleera"),
  TranslatedName(LangFas(), name: "انده‌بله‌ای شمالی"),
  TranslatedName(LangFin(), name: "pohjois-ndebele"),
  TranslatedName(LangFra(), name: "ndébélé du Nord"),
  TranslatedName(LangFry(), name: "Noard-Ndbele"),
  TranslatedName(LangGle(), name: "Ndeibéilis an Tuaiscirt"),
  TranslatedName(LangGla(), name: "Ndebele Thuathach"),
  TranslatedName(LangGlg(), name: "ndebele do norte"),
  TranslatedName(LangGuj(), name: "ઉતર દેબેલ"),
  TranslatedName(LangHeb(), name: "צפון נדבלה"),
  TranslatedName(LangHin(), name: "उत्तरी देबेल"),
  TranslatedName(LangHrv(), name: "sjeverni ndebele"),
  TranslatedName(LangHun(), name: "északi ndebele"),
  TranslatedName(LangHye(), name: "հյուսիսային նդեբելե"),
  TranslatedName(LangInd(), name: "Ndebele Utara"),
  TranslatedName(LangIsl(), name: "norður-ndebele"),
  TranslatedName(LangIta(), name: "ndebele del nord"),
  TranslatedName(LangJpn(), name: "北ンデベレ語"),
  TranslatedName(LangKat(), name: "ჩრდილოეთ ნდებელე"),
  TranslatedName(LangKaz(), name: "солтүстік ндебел"),
  TranslatedName(LangKan(), name: "ಉತ್ತರ ದೆಬೆಲೆ"),
  TranslatedName(LangKor(), name: "북부 은데벨레어"),
  TranslatedName(LangKas(), name: "شُمال ڈَبیل"),
  TranslatedName(LangKir(), name: "түндүк ндыбелче"),
  TranslatedName(LangLtz(), name: "Nord-Ndebele-Sprooch"),
  TranslatedName(LangLao(), name: "ເອັນເດເບເລເໜືອ"),
  TranslatedName(LangLit(), name: "šiaurės ndebelų"),
  TranslatedName(LangLav(), name: "ziemeļndebelu"),
  TranslatedName(LangMkd(), name: "северен ндебеле"),
  TranslatedName(LangMal(), name: "നോർത്ത് ഡെബിൾ"),
  TranslatedName(LangMon(), name: "хойд ндебеле"),
  TranslatedName(LangMar(), name: "उत्तर देबेली"),
  TranslatedName(LangMsa(), name: "Ndebele Utara"),
  TranslatedName(LangMlt(), name: "Ndebele, ta’ Fuq"),
  TranslatedName(LangMya(), name: "တောင်ဒီဘီလီ"),
  TranslatedName(LangNob(), name: "nord-ndebele"),
  TranslatedName(LangNde(), name: "isiNdebele"),
  TranslatedName(LangNep(), name: "उत्तर नेडेबेले"),
  TranslatedName(LangNld(), name: "Noord-Ndebele"),
  TranslatedName(LangNno(), name: "nord-ndebele"),
  TranslatedName(LangNor(), name: "nord-ndebele"),
  TranslatedName(LangOri(), name: "ଉତ୍ତର ନେଡବେଲେ"),
  TranslatedName(LangPan(), name: "ਉੱਤਰੀ ਨਡੇਬੇਲੇ"),
  TranslatedName(LangPol(), name: "ndebele północny"),
  TranslatedName(LangPor(), name: "ndebele do norte"),
  TranslatedName(LangRoh(), name: "ndebele dal nord"),
  TranslatedName(LangRon(), name: "ndebele de nord"),
  TranslatedName(LangRus(), name: "северный ндебели"),
  TranslatedName(LangSin(), name: "උතුරු එන්ඩිබෙලෙ"),
  TranslatedName(LangSlk(), name: "severné ndebele"),
  TranslatedName(LangSlv(), name: "severna ndebelščina"),
  TranslatedName(LangSqi(), name: "ndebelishte veriore"),
  TranslatedName(LangSrp(), name: "северни ндебеле"),
  TranslatedName(LangSrp(), name: "severni ndebele", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "nordndebele"),
  TranslatedName(LangSwa(), name: "Kindebele cha Kaskazini"),
  TranslatedName(LangTam(), name: "வடக்கு தெபெலே"),
  TranslatedName(LangTel(), name: "ఉత్తర దెబెలె"),
  TranslatedName(LangTha(), name: "เอ็นเดเบเลเหนือ"),
  TranslatedName(LangTon(), name: "lea fakanetepele-tokelau"),
  TranslatedName(LangTur(), name: "Kuzey Ndebele"),
  TranslatedName(LangUig(), name: "شىمالى ندەبەلەچە"),
  TranslatedName(LangUkr(), name: "ндебелє північна"),
  TranslatedName(LangUrd(), name: "شمالی دبیل"),
  TranslatedName(LangUzb(), name: "shimoliy ndebelcha"),
  TranslatedName(LangVie(), name: "Tiếng Ndebele Miền Bắc"),
  TranslatedName(LangZho(), name: "北恩德贝勒文"),
  TranslatedName(LangZho(), name: "北地畢列文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-North Ndebele"),
];
