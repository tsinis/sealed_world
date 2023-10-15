import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 68 translations for a Southern Ndebele language:
/// - (Scottish) Gaelic
/// - Afrikaans
/// - Arabic
/// - Azerbaijani
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Catalan
/// - Chinese
/// - Croatian
/// - Czech
/// - Danish
/// - Dutch
/// - English
/// - Estonian
/// - Finnish
/// - French
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
/// - Korean
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
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
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Ukrainian
/// - Uyghur
/// - Vietnamese
/// - Welsh
/// - Western Frisian.
const nblLanguageTranslations = [
  TranslatedName(LangEng(), name: "South Ndebele"),
  TranslatedName(LangAfr(), name: "Suid-Ndebele"),
  TranslatedName(LangAra(), name: "النديبيل الجنوبي"),
  TranslatedName(LangAze(), name: "cənub ndebele dili"),
  TranslatedName(LangBul(), name: "южен ндебеле"),
  TranslatedName(LangBen(), name: "দক্ষিণ এনডেবেলে"),
  TranslatedName(LangBre(), name: "ndebele ar Su"),
  TranslatedName(LangBos(), name: "južni ndebele"),
  TranslatedName(LangBos(), name: "јужни ндебеле", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "ndebele meridional"),
  TranslatedName(LangCes(), name: "ndebele (Jižní Afrika)"),
  TranslatedName(LangCym(), name: "Ndebele Deheuol"),
  TranslatedName(LangDan(), name: "sydndebele"),
  TranslatedName(LangDeu(), name: "Süd-Ndebele-Sprache"),
  TranslatedName(LangEll(), name: "Ντεμπέλε Νότου"),
  TranslatedName(LangSpa(), name: "ndebele meridional"),
  TranslatedName(LangEst(), name: "lõunandebele"),
  TranslatedName(LangFas(), name: "انده‌بله‌ای جنوبی"),
  TranslatedName(LangFin(), name: "etelä-ndebele"),
  TranslatedName(LangFra(), name: "ndébélé du Sud"),
  TranslatedName(LangFry(), name: "Sûd-Ndbele"),
  TranslatedName(LangGle(), name: "Ndeibéilis an Deiscirt"),
  TranslatedName(LangGla(), name: "Ndebele Dheasach"),
  TranslatedName(LangGuj(), name: "દક્ષિણ દેબેલ"),
  TranslatedName(LangHeb(), name: "דרום נדבלה"),
  TranslatedName(LangHin(), name: "दक्षिण देबेल"),
  TranslatedName(LangHrv(), name: "južni ndebele"),
  TranslatedName(LangHun(), name: "déli ndebele"),
  TranslatedName(LangInd(), name: "Ndebele Selatan"),
  TranslatedName(LangIsl(), name: "suðurndebele"),
  TranslatedName(LangIta(), name: "ndebele del sud"),
  TranslatedName(LangJpn(), name: "南ンデベレ語"),
  TranslatedName(LangKan(), name: "ದಕ್ಷಿಣ ದೆಬೆಲೆ"),
  TranslatedName(LangKor(), name: "남부 은데벨레어"),
  TranslatedName(LangKas(), name: "جنوب ڈیٚبیل"),
  TranslatedName(LangLtz(), name: "Süd-Ndebele-Sprooch"),
  TranslatedName(LangLao(), name: "ນີບີລີໃຕ້"),
  TranslatedName(LangLit(), name: "pietų ndebele"),
  TranslatedName(LangLav(), name: "dienvidndebelu"),
  TranslatedName(LangMkd(), name: "јужен ндебеле"),
  TranslatedName(LangMal(), name: "ദക്ഷിണ നെഡിബിൾ"),
  TranslatedName(LangMar(), name: "दक्षिणात्य देबेली"),
  TranslatedName(LangMlt(), name: "Ndebele, t’Isfel"),
  TranslatedName(LangNob(), name: "sør-ndebele"),
  TranslatedName(LangNld(), name: "Zuid-Ndbele"),
  TranslatedName(LangNno(), name: "sør-ndebele"),
  TranslatedName(LangNor(), name: "sør-ndebele"),
  TranslatedName(LangOri(), name: "ଦକ୍ଷିଣ ନେଡବେଲେ"),
  TranslatedName(LangPol(), name: "ndebele południowy"),
  TranslatedName(LangPor(), name: "ndebele do sul"),
  TranslatedName(LangRoh(), name: "ndebele dal sid"),
  TranslatedName(LangRon(), name: "ndebele de sud"),
  TranslatedName(LangRus(), name: "ндебели южный"),
  TranslatedName(LangSlk(), name: "južná ndebelčina"),
  TranslatedName(LangSlv(), name: "južna ndebelščina"),
  TranslatedName(LangSrp(), name: "Јужни ндебеле"),
  TranslatedName(LangSrp(), name: "Južni ndebele", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "sydndebele"),
  TranslatedName(LangTam(), name: "தெற்கு தெபெலே"),
  TranslatedName(LangTel(), name: "దక్షిణ దెబెలె"),
  TranslatedName(LangTha(), name: "เอ็นเดเบเลใต้"),
  TranslatedName(LangTon(), name: "lea fakanetepele-tonga"),
  TranslatedName(LangTur(), name: "Güney Ndebele"),
  TranslatedName(LangUig(), name: "جەنۇبى ندەبەلەچە"),
  TranslatedName(LangUkr(), name: "ндебелє південна"),
  TranslatedName(LangVie(), name: "Tiếng Ndebele Miền Nam"),
  TranslatedName(LangZho(), name: "南恩德贝勒文"),
  TranslatedName(LangZho(), name: "南地畢列文", script: ScriptHant()),
];
