import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 102 translations for a Croatian language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Afrikaans
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
/// - Kinyarwanda
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
/// - Oromo
/// - Ossetian (Ossetic)
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
/// - Yiddish
/// - Yoruba
/// - Zulu.
const hrvLanguageTranslations = [
  TranslatedName(LangEng(), name: "Croatian"),
  TranslatedName(LangAfr(), name: "Kroaties"),
  TranslatedName(LangAmh(), name: "ክሮሽያንኛ"),
  TranslatedName(LangAra(), name: "الكرواتية"),
  TranslatedName(LangAze(), name: "xorvat"),
  TranslatedName(LangBel(), name: "харвацкая"),
  TranslatedName(LangBul(), name: "хърватски"),
  TranslatedName(LangBen(), name: "ক্রোয়েশীয়"),
  TranslatedName(LangBre(), name: "kroateg"),
  TranslatedName(LangBos(), name: "hrvatski"),
  TranslatedName(LangBos(), name: "хрватски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "croat"),
  TranslatedName(LangCes(), name: "chorvatština"),
  TranslatedName(LangCym(), name: "Croateg"),
  TranslatedName(LangDan(), name: "kroatisk"),
  TranslatedName(LangDeu(), name: "Kroatisch"),
  TranslatedName(LangDzo(), name: "ཀྲོ་ཨེ་ཤི་ཡཱན་ཁ"),
  TranslatedName(LangEwe(), name: "kroatiagbe"),
  TranslatedName(LangEll(), name: "Κροατικά"),
  TranslatedName(LangEpo(), name: "kroata"),
  TranslatedName(LangSpa(), name: "croata"),
  TranslatedName(LangEst(), name: "horvaadi"),
  TranslatedName(LangEus(), name: "kroaziera"),
  TranslatedName(LangFas(), name: "کروات"),
  TranslatedName(LangFas(), name: "کروشیایی", countryCode: "AF"),
  TranslatedName(LangFin(), name: "kroatia"),
  TranslatedName(LangFao(), name: "kroatiskt"),
  TranslatedName(LangFra(), name: "croate"),
  TranslatedName(LangFry(), name: "Kroatysk"),
  TranslatedName(LangGle(), name: "Cróitis"),
  TranslatedName(LangGla(), name: "Cròthaisis"),
  TranslatedName(LangGlg(), name: "croata"),
  TranslatedName(LangGuj(), name: "ક્રોએશિયન"),
  TranslatedName(LangHeb(), name: "קרואטית"),
  TranslatedName(LangHin(), name: "क्रोएशियाई"),
  TranslatedName(LangHrv(), name: "hrvatski"),
  TranslatedName(LangHun(), name: "horvát"),
  TranslatedName(LangHye(), name: "խորվաթերեն"),
  TranslatedName(LangInd(), name: "Kroasia"),
  TranslatedName(LangIsl(), name: "króatíska"),
  TranslatedName(LangIta(), name: "croato"),
  TranslatedName(LangJpn(), name: "クロアチア語"),
  TranslatedName(LangKat(), name: "ხორვატული"),
  TranslatedName(LangKaz(), name: "хорват"),
  TranslatedName(LangKhm(), name: "ក្រូអាត"),
  TranslatedName(LangKan(), name: "ಕ್ರೊಯೇಶಿಯನ್"),
  TranslatedName(LangKor(), name: "크로아티아어"),
  TranslatedName(LangKas(), name: "کروشِیَن"),
  TranslatedName(LangKir(), name: "хорватча"),
  TranslatedName(LangLtz(), name: "Kroatesch"),
  TranslatedName(LangLao(), name: "ໂຄຣເອທຽນ"),
  TranslatedName(LangLit(), name: "kroatų"),
  TranslatedName(LangLav(), name: "horvātu"),
  TranslatedName(LangMkd(), name: "хрватски"),
  TranslatedName(LangMal(), name: "ക്രൊയേഷ്യൻ"),
  TranslatedName(LangMon(), name: "хорват"),
  TranslatedName(LangMar(), name: "क्रोएशियन"),
  TranslatedName(LangMsa(), name: "Croat"),
  TranslatedName(LangMlt(), name: "Kroat"),
  TranslatedName(LangMya(), name: "ခရိုအေရှန်"),
  TranslatedName(LangNob(), name: "kroatisk"),
  TranslatedName(LangNep(), name: "क्रोएशियाली"),
  TranslatedName(LangNld(), name: "Kroatisch"),
  TranslatedName(LangNno(), name: "kroatisk"),
  TranslatedName(LangNor(), name: "kroatisk"),
  TranslatedName(LangOrm(), name: "Afaan Croatian"),
  TranslatedName(LangOri(), name: "କ୍ରୋଆଟିଆନ୍"),
  TranslatedName(LangOss(), name: "хорватаг"),
  TranslatedName(LangPan(), name: "ਕ੍ਰੋਏਸ਼ਿਆਈ"),
  TranslatedName(LangPol(), name: "chorwacki"),
  TranslatedName(LangPor(), name: "croata"),
  TranslatedName(LangQue(), name: "Croata Simi"),
  TranslatedName(LangRoh(), name: "croat"),
  TranslatedName(LangRon(), name: "croată"),
  TranslatedName(LangRus(), name: "хорватский"),
  TranslatedName(LangKin(), name: "Igikorowasiya"),
  TranslatedName(LangSme(), name: "kroátiagiella"),
  TranslatedName(LangSin(), name: "ක්‍රෝයේශියානු"),
  TranslatedName(LangSlk(), name: "chorvátčina"),
  TranslatedName(LangSlv(), name: "hrvaščina"),
  TranslatedName(LangSqi(), name: "kroatisht"),
  TranslatedName(LangSrp(), name: "хрватски"),
  TranslatedName(LangSrp(), name: "hrvatski", script: ScriptLatn()),
  TranslatedName(LangSwe(), name: "kroatiska"),
  TranslatedName(LangSwa(), name: "Kroeshia"),
  TranslatedName(LangTam(), name: "குரோஷியன்"),
  TranslatedName(LangTel(), name: "క్రొయెషియన్"),
  TranslatedName(LangTha(), name: "โครเอเชีย"),
  TranslatedName(LangTir(), name: "ክሮሽያንኛ"),
  TranslatedName(LangTon(), name: "lea fakakuloisia"),
  TranslatedName(LangTur(), name: "Hırvatça"),
  TranslatedName(LangUig(), name: "خورۋاتچە"),
  TranslatedName(LangUkr(), name: "хорватська"),
  TranslatedName(LangUrd(), name: "کراتی"),
  TranslatedName(LangUzb(), name: "xorvatcha"),
  TranslatedName(LangUzb(), name: "Хорватча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Croatia"),
  TranslatedName(LangYid(), name: "קראאַטיש"),
  TranslatedName(LangYor(), name: "Èdè Kroatia"),
  TranslatedName(LangZho(), name: "克罗地亚文"),
  TranslatedName(LangZho(), name: "克羅埃西亞文", script: ScriptHant()),
  TranslatedName(LangZul(), name: "isi-Croatian"),
];
