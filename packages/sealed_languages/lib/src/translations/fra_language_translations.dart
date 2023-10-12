import "../data/natural_languages.data.dart";
import "../data/scripts.data.dart";
import "../model/translated_name.dart";

/// Provides 84 translations for a French language:
/// - (Eastern) Punjabi
/// - (Scottish) Gaelic
/// - Albanian
/// - Amharic
/// - Arabic
/// - Armenian
/// - Azerbaijani
/// - Bambara
/// - Belarusian
/// - Bengali (Bangla)
/// - Bosnian
/// - Breton
/// - Bulgarian
/// - Burmese
/// - Catalan
/// - Chinese
/// - Croatian
/// - Danish
/// - Dutch
/// - Dzongkha
/// - English
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
/// - Lao
/// - Latvian
/// - Lithuanian
/// - Luxembourgish (Letzeburgesch)
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Northern Sami
/// - Norwegian
/// - Norwegian Bokmål
/// - Norwegian Nynorsk
/// - Nuosu
/// - Oriya
/// - Ossetian (Ossetic)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Romanian
/// - Romansh
/// - Russian
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Spanish
/// - Swedish
/// - Tamil
/// - Telugu
/// - Thai
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Welsh
/// - Western Frisian
/// - Zulu.
const fraLanguageTranslations = [
  TranslatedName(LangEng(), name: "Swiss French"),
  TranslatedName(LangAmh(), name: "ፈረንሳይኛ"),
  TranslatedName(LangAra(), name: "الفرنسية الكندية"),
  TranslatedName(LangAze(), name: "Kanada fransızcası"),
  TranslatedName(LangAze(), name: "франсызҹа", script: ScriptCyrl()),
  TranslatedName(LangBel(), name: "французская (швейц.)"),
  TranslatedName(LangBul(), name: "швейцарски френски"),
  TranslatedName(LangBam(), name: "tubabukan"),
  TranslatedName(LangBen(), name: "সুইস ফরাসি"),
  TranslatedName(LangBre(), name: "galleg Suis"),
  TranslatedName(LangBos(), name: "švajcarski francuski"),
  TranslatedName(LangBos(), name: "Швајцарски француски", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "francès suís"),
  TranslatedName(LangCym(), name: "Ffrangeg y Swistir"),
  TranslatedName(LangDan(), name: "schweizisk fransk"),
  TranslatedName(LangDeu(), name: "Schweizer Französisch"),
  TranslatedName(LangDzo(), name: "སུ་ཡིས་ཕྲནཅ་ཁ"),
  TranslatedName(LangEwe(), name: "swizerlanɖtɔwo ƒe fransegbe"),
  TranslatedName(LangEll(), name: "Γαλλικά Καναδά"),
  TranslatedName(LangSpa(), name: "francés suizo"),
  TranslatedName(LangFas(), name: "فرانسوی کانادا"),
  TranslatedName(LangFin(), name: "sveitsinranska"),
  TranslatedName(LangFra(), name: "français suisse"),
  TranslatedName(LangFry(), name: "Switserse Frânsk"),
  TranslatedName(LangGle(), name: "Fraincis Eilvéiseach"),
  TranslatedName(LangGla(), name: "Fraingis Eilbheiseach"),
  TranslatedName(LangGlg(), name: "francés suízo"),
  TranslatedName(LangGuj(), name: "સ્વિસ ફ્રેંચ"),
  TranslatedName(LangHeb(), name: "צרפתית שוויצרית"),
  TranslatedName(LangHin(), name: "स्विस फ़्रेंच"),
  TranslatedName(LangHrv(), name: "švicarski francuski"),
  TranslatedName(LangHun(), name: "svájci francia"),
  TranslatedName(LangHye(), name: "ֆրանսերեն"),
  TranslatedName(LangInd(), name: "Prancis Swiss"),
  TranslatedName(LangIii(), name: "ꃔꇩꉙ"),
  TranslatedName(LangIsl(), name: "svissnesk franska"),
  TranslatedName(LangIta(), name: "francese svizzero"),
  TranslatedName(LangJpn(), name: "フランス語"),
  TranslatedName(LangKat(), name: "შვეიცარიული ფრანგული"),
  TranslatedName(LangKaz(), name: "швейцариялық француз тілі"),
  TranslatedName(LangKan(), name: "ಸ್ವಿಸ್ ಫ್ರೆಂಚ್"),
  TranslatedName(LangKor(), name: "프랑스어 (캐나다)"),
  TranslatedName(LangKas(), name: "کَنیڈیَن فریٚنچ"),
  TranslatedName(LangLtz(), name: "Schwäizer Franséisch"),
  TranslatedName(LangLao(), name: "ຝຣັ່ງ"),
  TranslatedName(LangLit(), name: "Šveicarijos prancūzų"),
  TranslatedName(LangLav(), name: "Šveices franču"),
  TranslatedName(LangMal(), name: "സ്വിസ് ഫ്രഞ്ച്"),
  TranslatedName(LangMon(), name: "швейцари франц"),
  TranslatedName(LangMar(), name: "स्विस फ्रेंच"),
  TranslatedName(LangMsa(), name: "Perancis Switzerland"),
  TranslatedName(LangMlt(), name: "Franċiż Żvizzeru"),
  TranslatedName(LangMya(), name: "ပြင်သစ်"),
  TranslatedName(LangNob(), name: "sveitsisk fransk"),
  TranslatedName(LangNld(), name: "Zwitsers Frans"),
  TranslatedName(LangNno(), name: "sveitsisk fransk"),
  TranslatedName(LangNor(), name: "sveitsisk fransk"),
  TranslatedName(LangOri(), name: "ସ୍ବିସ୍ ଫ୍ରେଞ୍ଚ୍"),
  TranslatedName(LangOss(), name: "швейцариаг францаг"),
  TranslatedName(LangPan(), name: "ਫਰਾਂਸੀਸੀ"),
  TranslatedName(LangPol(), name: "szwajcarski francuski"),
  TranslatedName(LangPor(), name: "francês suíço"),
  TranslatedName(LangRoh(), name: "franzos svizzer"),
  TranslatedName(LangRon(), name: "franceză elvețiană"),
  TranslatedName(LangRus(), name: "швейцарский французский"),
  TranslatedName(
    LangSme(),
    name: "šveicalaš fránskkagiella",
    countryCode: "FI",
  ),
  TranslatedName(LangSin(), name: "ස්විස් ප්‍රංශ"),
  TranslatedName(LangSlk(), name: "francúzština (švajčiarska)"),
  TranslatedName(LangSlv(), name: "švicarska francoščina"),
  TranslatedName(LangSqi(), name: "frëngjishte zvicerane"),
  TranslatedName(LangSwe(), name: "schweizisk franska"),
  TranslatedName(LangTam(), name: "ஸ்விஸ் பிரஞ்சு"),
  TranslatedName(LangTel(), name: "స్విస్ ఫ్రెంచ్"),
  TranslatedName(LangTha(), name: "Canadian French"),
  TranslatedName(LangTir(), name: "ፈረንሳይኛ"),
  TranslatedName(LangTon(), name: "lea fakafalanisē-suisilani"),
  TranslatedName(LangTur(), name: "Kanada Fransızcası"),
  TranslatedName(LangUig(), name: "كانادا فىرانسۇزچە"),
  TranslatedName(LangUrd(), name: "کینیڈین فرانسیسی"),
  TranslatedName(LangUzb(), name: "Shvesariya fransuzchasi"),
  TranslatedName(LangUzb(), name: "Французча", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Tiếng Pháp"),
  TranslatedName(LangZho(), name: "瑞士法文"),
  TranslatedName(LangZul(), name: "isi-Swiss French"),
];
