import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 91 translations for a Sanskrit (Saṁskṛta) language:
/// - (Eastern) Punjabi
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Basque
/// - Belarusian
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
/// - Galician
/// - Georgian
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
/// - Kinyarwanda
/// - Korean
/// - Kyrgyz
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Macedonian
/// - Malayalam
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
/// - Yoruba
/// - Zulu.
const sanLanguageTranslations = [
  TranslatedName(LangEng(), name: "Sanskrit"),
  TranslatedName(LangAmh(), name: "ሳንስክሪትኛ"),
  TranslatedName(LangAra(), name: "السنسكريتية"),
  TranslatedName(LangAze(), name: "sanskrit"),
  TranslatedName(LangBel(), name: "санскрыт"),
  TranslatedName(LangBul(), name: "санкскритски"),
  TranslatedName(LangBen(), name: "সংষ্কৃত"),
  TranslatedName(LangBre(), name: "sanskriteg"),
  TranslatedName(LangBos(), name: "sanskrit"),
  TranslatedName(LangBos(), name: "санскрит", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "sànscrit"),
  TranslatedName(LangCes(), name: "sanskrt"),
  TranslatedName(LangCym(), name: "Sansgrit"),
  TranslatedName(LangDan(), name: "sanskrit"),
  TranslatedName(LangDzo(), name: "སཾསྐྲྀཏ་ཁ"),
  TranslatedName(LangEwe(), name: "sanskrigbe"),
  TranslatedName(LangEll(), name: "Σανσκριτικά"),
  TranslatedName(LangEpo(), name: "sanskrito"),
  TranslatedName(LangSpa(), name: "sánscrito"),
  TranslatedName(LangEst(), name: "sanskriti"),
  TranslatedName(LangEus(), name: "sanskritoa"),
  TranslatedName(LangFas(), name: "سنسکریت"),
  TranslatedName(LangFin(), name: "sanskrit"),
  TranslatedName(LangFao(), name: "sanskrit"),
  TranslatedName(LangFra(), name: "sanskrit"),
  TranslatedName(LangFry(), name: "Sanskriet"),
  TranslatedName(LangGle(), name: "Sanscrait"),
  TranslatedName(LangGlg(), name: "sánscrito"),
  TranslatedName(LangGuj(), name: "સંસ્કૃત"),
  TranslatedName(LangHeb(), name: "סנסקריט"),
  TranslatedName(LangHin(), name: "संस्कृत"),
  TranslatedName(LangHrv(), name: "sanskrtski"),
  TranslatedName(LangHun(), name: "szanszkrit"),
  TranslatedName(LangHye(), name: "սանսկրիտ"),
  TranslatedName(LangInd(), name: "Sanskerta"),
  TranslatedName(LangIsl(), name: "sanskrít"),
  TranslatedName(LangIta(), name: "sanscrito"),
  TranslatedName(LangJpn(), name: "サンスクリット語"),
  TranslatedName(LangKat(), name: "სანსკრიტი"),
  TranslatedName(LangKaz(), name: "санскрит"),
  TranslatedName(LangKhm(), name: "សំស្ក្រឹត"),
  TranslatedName(LangKan(), name: "ಸಂಸ್ಕೃತ"),
  TranslatedName(LangKor(), name: "산스크리트어"),
  TranslatedName(LangKas(), name: "سَنسکرٕت"),
  TranslatedName(LangKir(), name: "санскритче"),
  TranslatedName(LangLao(), name: "ສັນສະກຣິດ"),
  TranslatedName(LangLit(), name: "sanskritas"),
  TranslatedName(LangLav(), name: "sanskrits"),
  TranslatedName(LangMkd(), name: "санскрит"),
  TranslatedName(LangMal(), name: "സംസ്‌കൃതം"),
  TranslatedName(LangMon(), name: "санскрит"),
  TranslatedName(LangMar(), name: "संस्कृत"),
  TranslatedName(LangMya(), name: "သင်္သကရိုက်"),
  TranslatedName(LangNob(), name: "sanskrit"),
  TranslatedName(LangNep(), name: "संस्कृत"),
  TranslatedName(LangNld(), name: "Sanskriet"),
  TranslatedName(LangNno(), name: "sanskrit"),
  TranslatedName(LangNor(), name: "sanskrit"),
  TranslatedName(LangOri(), name: "ସଂସ୍କୃତ"),
  TranslatedName(LangPan(), name: "ਸੰਸਕ੍ਰਿਤ"),
  TranslatedName(LangPol(), name: "sanskryt"),
  TranslatedName(LangPus(), name: "سنسکریټ"),
  TranslatedName(LangPor(), name: "sânscrito"),
  TranslatedName(LangQue(), name: "Sanscrito Simi"),
  TranslatedName(LangRoh(), name: "sanscrit"),
  TranslatedName(LangRon(), name: "sanscrită"),
  TranslatedName(LangRus(), name: "санскрит"),
  TranslatedName(LangKin(), name: "Igisansikiri"),
  TranslatedName(LangSin(), name: "සංස්කෘත"),
  TranslatedName(LangSlk(), name: "sanskrit"),
  TranslatedName(LangSlv(), name: "sanskrt"),
  TranslatedName(LangSqi(), name: "sanskritisht"),
  TranslatedName(LangSrp(), name: "санскрит"),
  TranslatedName(LangSrp(), name: "sanskrit", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "sanskrit"),
  TranslatedName(LangSwa(), name: "Kisanskriti"),
  TranslatedName(LangTam(), name: "சமஸ்கிருதம்"),
  TranslatedName(LangTel(), name: "సంస్కృతం"),
  TranslatedName(LangTha(), name: "สันสกฤต"),
  TranslatedName(LangTon(), name: "lea fakasanisukuliti"),
  TranslatedName(LangTur(), name: "Sanskritçe"),
  TranslatedName(LangUig(), name: "سانسكرىتچە"),
  TranslatedName(LangUkr(), name: "санскрит"),
  TranslatedName(LangUrd(), name: "سَنسکرِت"),
  TranslatedName(LangUzb(), name: "sanskritcha"),
  TranslatedName(LangUzb(), name: "Санскритча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Phạn"),
  TranslatedName(LangYid(), name: "סאַנסקריט"),
  TranslatedName(LangYor(), name: "Èdè awon ara Indo"),
  TranslatedName(LangZho(), name: "梵文"),
  TranslatedName(LangZul(), name: "isi-Sanskrit"),
];
