import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 91 translations for a Northern Sami language:
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
/// - Norwegian Nynorsk
/// - Oriya
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
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
/// - Yiddish
/// - Zulu.
const smeLanguageTranslations = [
  TranslatedName(LangEng(), name: "Northern Sami"),
  TranslatedName(LangAfr(), name: "Noordelike Sami"),
  TranslatedName(LangAmh(), name: "ሰሜናዊ ሳሚ"),
  TranslatedName(LangAra(), name: "السامي الشمالي"),
  TranslatedName(LangAze(), name: "şimali sami"),
  TranslatedName(LangBul(), name: "северносаамски"),
  TranslatedName(LangBen(), name: "উত্তরাঞ্চলীয় সামি"),
  TranslatedName(LangBre(), name: "sámi an Norzh"),
  TranslatedName(LangBos(), name: "sjeverni sami"),
  TranslatedName(LangBos(), name: "северни сами", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "sami septentrional"),
  TranslatedName(LangCes(), name: "sámština (severní)"),
  TranslatedName(LangCym(), name: "Sami Gogleddol"),
  TranslatedName(LangDan(), name: "nordsamisk"),
  TranslatedName(LangDeu(), name: "Nord-Samisch"),
  TranslatedName(LangEwe(), name: "dziehe samigbe"),
  TranslatedName(LangEll(), name: "Βόρεια Σάμι"),
  TranslatedName(LangSpa(), name: "sami septentrional"),
  TranslatedName(LangEst(), name: "põhjasaami"),
  TranslatedName(LangEus(), name: "iparraldeko samiera"),
  TranslatedName(LangFas(), name: "سامی شمالی"),
  TranslatedName(LangFin(), name: "pohjoissaame"),
  TranslatedName(LangFra(), name: "sami du Nord"),
  TranslatedName(LangFry(), name: "Noard-Samysk"),
  TranslatedName(LangGle(), name: "Sáimis Thuaidh"),
  TranslatedName(LangGla(), name: "Sàmais Thuathach"),
  TranslatedName(LangGlg(), name: "sami do norte"),
  TranslatedName(LangGuj(), name: "ઉત્તરીય સામી"),
  TranslatedName(LangHeb(), name: "לאפית צפונית"),
  TranslatedName(LangHin(), name: "नॉर्दन सामी"),
  TranslatedName(LangHrv(), name: "južni sami"),
  TranslatedName(LangHun(), name: "északi számi"),
  TranslatedName(LangHye(), name: "հյուսիսային սամի"),
  TranslatedName(LangInd(), name: "Sami Utara"),
  TranslatedName(LangIsl(), name: "norðursamíska"),
  TranslatedName(LangIta(), name: "sami del nord"),
  TranslatedName(LangJpn(), name: "北サーミ語"),
  TranslatedName(LangKat(), name: "ჩრდილოეთ საამური"),
  TranslatedName(LangKaz(), name: "солтүстік сами"),
  TranslatedName(LangKhm(), name: "Sami ភាគ​ខាង​ជើង"),
  TranslatedName(LangKan(), name: "ಉತ್ತರ ಸಾಮಿ"),
  TranslatedName(LangKor(), name: "북부 사미어"),
  TranslatedName(LangKas(), name: "شُمٲلی سَمی"),
  TranslatedName(LangKir(), name: "түндүк самиче"),
  TranslatedName(LangLtz(), name: "Nordsamesch"),
  TranslatedName(LangLao(), name: "ຊາມິເໜືອ"),
  TranslatedName(LangLit(), name: "šiaurės samių"),
  TranslatedName(LangLav(), name: "ziemeļsāmu"),
  TranslatedName(LangMkd(), name: "севернолапонски"),
  TranslatedName(LangMal(), name: "വടക്കൻ സമി"),
  TranslatedName(LangMon(), name: "хойд сами"),
  TranslatedName(LangMar(), name: "उत्तरी सामी"),
  TranslatedName(LangMsa(), name: "Sami Utara"),
  TranslatedName(LangMlt(), name: "Sami ta’ Fuq"),
  TranslatedName(LangMya(), name: "တောင်ဆာမိ"),
  TranslatedName(LangNob(), name: "nordsamisk"),
  TranslatedName(LangNep(), name: "उत्तरी सामी"),
  TranslatedName(LangNld(), name: "Noord-Samisch"),
  TranslatedName(LangNno(), name: "nordsamisk"),
  TranslatedName(LangNor(), name: "nordsamisk"),
  TranslatedName(LangOri(), name: "ଉତ୍ତର ସାମି"),
  TranslatedName(LangPan(), name: "ਉੱਤਰੀ ਸਾਮੀ"),
  TranslatedName(LangPol(), name: "lapoński północny"),
  TranslatedName(LangPor(), name: "sami do norte"),
  TranslatedName(LangQue(), name: "Chincha Sami Simi"),
  TranslatedName(LangRoh(), name: "sami dal nord"),
  TranslatedName(LangRon(), name: "sami de nord"),
  TranslatedName(LangRus(), name: "северносаамский"),
  TranslatedName(LangSme(), name: "davvisámegiella"),
  TranslatedName(LangSin(), name: "උතුරු සාමි"),
  TranslatedName(LangSlk(), name: "severné sami"),
  TranslatedName(LangSlv(), name: "severna samijščina"),
  TranslatedName(LangSqi(), name: "samishte veriore"),
  TranslatedName(LangSrp(), name: "северни сами"),
  TranslatedName(LangSrp(), name: "severni sami", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "nordsamiska"),
  TranslatedName(LangSwa(), name: "Kisami cha Kaskazini"),
  TranslatedName(LangTam(), name: "வடக்கு சமி"),
  TranslatedName(LangTel(), name: "ఉత్తర సామి"),
  TranslatedName(LangTha(), name: "ซามิเหนือ"),
  TranslatedName(LangTon(), name: "lea fakasami-tokelau"),
  TranslatedName(LangTur(), name: "Kuzey Sami"),
  TranslatedName(LangUig(), name: "شىمالى سامىچە"),
  TranslatedName(LangUkr(), name: "саамська північна"),
  TranslatedName(LangUrd(), name: "شمالی سامی"),
  TranslatedName(LangUzb(), name: "shimoliy semiycha"),
  TranslatedName(LangVie(), name: "Tiếng Sami Miền Bắc"),
  TranslatedName(LangYid(), name: "נארדסאַמיש"),
  TranslatedName(LangZho(), name: "北萨米文"),
  TranslatedName(LangZho(), name: "北方薩米文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Northern Sami"),
];
