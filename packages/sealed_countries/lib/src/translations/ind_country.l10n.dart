import "package:sealed_currencies/sealed_currencies.dart";

import "../model/country/submodels/country_name.dart";

/// Provides 144 translations for a India country:
/// - (Eastern) Punjabi
/// - (Old) Church Slavonic
/// - (Scottish) Gaelic
/// - Abkhaz
/// - Afrikaans
/// - Albanian
/// - Amharic
/// - Arabic
/// - Aragonese
/// - Armenian
/// - Assamese
/// - Azerbaijani
/// - Bambara
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
/// - Chuvash
/// - Cornish
/// - Corsican
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
/// - Fula (Fulah/Pulaar/Pular)
/// - Galician
/// - Ganda
/// - Georgian
/// - German
/// - Greek (modern)
/// - Gujarati
/// - Hausa
/// - Hebrew (modern)
/// - Hindi
/// - Hungarian
/// - Icelandic
/// - Igbo
/// - Indonesian
/// - Interlingua
/// - Interlingue
/// - Inuktitut
/// - Irish
/// - Italian
/// - Japanese
/// - Javanese
/// - Kalaallisut (Greenlandic)
/// - Kannada
/// - Kashmiri
/// - Kazakh
/// - Khmer
/// - Kikuyu (Gikuyu)
/// - Kirundi
/// - Korean
/// - Kurdish
/// - Kyrgyz
/// - Lao
/// - Latin
/// - Latvian
/// - Lingala
/// - Lithuanian
/// - Luba-Katanga
/// - Luxembourgish (Letzeburgesch)
/// - Macedonian
/// - Malagasy
/// - Malay
/// - Malayalam
/// - Maltese
/// - Marathi (Marāṭhī)
/// - Mongolian
/// - Māori
/// - Nepali
/// - Northern Ndebele
/// - Northern Sami
/// - Norwegian
/// - Nuosu
/// - Occitan
/// - Oriya
/// - Oromo
/// - Ossetian (Ossetic)
/// - Pashto (Pushto)
/// - Persian (Farsi)
/// - Polish
/// - Portuguese
/// - Quechua
/// - Romanian
/// - Romansh
/// - Russian
/// - Sango
/// - Sanskrit (Saṁskṛta)
/// - Sardinian
/// - Serbian
/// - Shona
/// - Sindhi
/// - Sinhalese (Sinhala)
/// - Slovak
/// - Slovene
/// - Somali
/// - Spanish
/// - Sundanese
/// - Swahili
/// - Swedish
/// - Tajik
/// - Tamil
/// - Tatar
/// - Telugu
/// - Thai
/// - Tibetan Standard
/// - Tigrinya
/// - Tonga (Tonga Islands)
/// - Turkish
/// - Turkmen
/// - Ukrainian
/// - Urdu
/// - Uyghur
/// - Uzbek
/// - Vietnamese
/// - Volapük
/// - Welsh
/// - Western Frisian
/// - Wolof
/// - Xhosa
/// - Yiddish
/// - Yoruba
/// - Zhuang (Chuang)
/// - Zulu.
const indCountryTranslations = [
  CountryName(
    language: LangEng(),
    official: "Republic of India",
    common: "India",
  ),
  CountryName(
    language: LangSrp(),
    official: "Република Индија",
    common: "Индија",
  ),
  CountryName(language: LangAra(), official: "جمهورية الهند", common: "الهند"),
  CountryName(language: LangBre(), official: "Republik India", common: "India"),
  CountryName(
    language: LangCes(),
    official: "Indická republika",
    common: "Indie",
  ),
  CountryName(
    language: LangCym(),
    official: "Republic of India",
    common: "India",
  ),
  CountryName(
    language: LangDeu(),
    official: "Republik Indien",
    common: "Indien",
  ),
  CountryName(language: LangEst(), official: "India Vabariik", common: "India"),
  CountryName(
    language: LangFin(),
    official: "Intian tasavalta",
    common: "Intia",
  ),
  CountryName(
    language: LangFra(),
    official: "République de l'Inde",
    common: "Inde",
  ),
  CountryName(
    language: LangHrv(),
    official: "Republika Indija",
    common: "Indija",
  ),
  CountryName(
    language: LangHun(),
    official: "Indiai Köztársaság",
    common: "India",
  ),
  CountryName(
    language: LangIta(),
    official: "Repubblica dell'India",
    common: "India",
  ),
  CountryName(language: LangJpn(), official: "インド共和国", common: "インド"),
  CountryName(language: LangKor(), official: "인도 공화국", common: "인도"),
  CountryName(
    language: LangNld(),
    official: "Republiek India",
    common: "India",
  ),
  CountryName(language: LangFas(), official: "جمهوری هندوستان", common: "هند"),
  CountryName(
    language: LangPol(),
    official: "Republika Indii",
    common: "Indie",
  ),
  CountryName(
    language: LangPor(),
    official: "República da Índia",
    common: "Índia",
  ),
  CountryName(
    language: LangRus(),
    official: "Республика Индия",
    common: "Индия",
  ),
  CountryName(
    language: LangSlk(),
    official: "Indická republika",
    common: "India",
  ),
  CountryName(
    language: LangSpa(),
    official: "República de la India",
    common: "India",
  ),
  CountryName(
    language: LangSwe(),
    official: "Republiken Indien",
    common: "Indien",
  ),
  CountryName(
    language: LangTur(),
    official: "Hindistan Cumhuriyeti",
    common: "Hindistan",
  ),
  CountryName(language: LangUrd(), official: "جمہوریہ بھارت", common: "بھارت"),
  CountryName(language: LangZho(), official: "印度共和国", common: "印度"),
  TranslatedName(LangAfr(), name: "Indië"),
  TranslatedName(LangAmh(), name: "ህንድ"),
  TranslatedName(LangAsm(), name: "ভাৰত"),
  TranslatedName(LangAze(), name: "Hindistan"),
  TranslatedName(LangAze(), name: "Һиндистан", script: ScriptCyrl()),
  TranslatedName(LangBel(), name: "Індыя"),
  TranslatedName(LangBul(), name: "Индия"),
  TranslatedName(LangBam(), name: "Ɛndujamana"),
  TranslatedName(LangBen(), name: "ভারত"),
  TranslatedName(LangBod(), name: "རྒྱ་གར་"),
  TranslatedName(LangBos(), name: "Indija"),
  TranslatedName(LangBos(), name: "Индија", script: ScriptCyrl()),
  TranslatedName(LangCat(), name: "Índia"),
  TranslatedName(LangChe(), name: "ХӀинди"),
  TranslatedName(LangDan(), name: "Indien"),
  TranslatedName(LangDzo(), name: "རྒྱ་གར"),
  TranslatedName(LangEwe(), name: "India nutome"),
  TranslatedName(LangEll(), name: "Ινδία"),
  TranslatedName(LangEpo(), name: "Hindujo"),
  TranslatedName(LangFul(), name: "Enndo"),
  TranslatedName(LangGle(), name: "an India"),
  TranslatedName(LangGla(), name: "Na h-Innseachan"),
  TranslatedName(LangGlg(), name: "A India"),
  TranslatedName(LangGuj(), name: "ભારત"),
  TranslatedName(LangHau(), name: "Indiya"),
  TranslatedName(LangHeb(), name: "הודו"),
  TranslatedName(LangHin(), name: "भारत"),
  TranslatedName(LangHye(), name: "Հնդկաստան"),
  TranslatedName(LangIbo(), name: "Mba India"),
  TranslatedName(LangIii(), name: "ꑴꄗ"),
  TranslatedName(LangIsl(), name: "Indland"),
  TranslatedName(LangKat(), name: "ინდოეთი"),
  TranslatedName(LangKaz(), name: "Үндістан"),
  TranslatedName(LangKhm(), name: "ឥណ្ឌា"),
  TranslatedName(LangKan(), name: "ಭಾರತ"),
  TranslatedName(LangKas(), name: "ہِندوستان"),
  TranslatedName(LangKas(), name: "ہِنٛدوستان", script: ScriptArab()),
  TranslatedName(LangKur(), name: "Hindistan"),
  TranslatedName(LangKir(), name: "Индия"),
  TranslatedName(LangLtz(), name: "Indien"),
  TranslatedName(LangLug(), name: "Buyindi"),
  TranslatedName(LangLin(), name: "Índɛ"),
  TranslatedName(LangLao(), name: "ອິນເດຍ"),
  TranslatedName(LangLit(), name: "Indija"),
  TranslatedName(LangLub(), name: "Inde"),
  TranslatedName(LangLav(), name: "Indija"),
  TranslatedName(LangMlg(), name: "Indy"),
  TranslatedName(LangMri(), name: "Inia"),
  TranslatedName(LangMkd(), name: "Индија"),
  TranslatedName(LangMal(), name: "ഇന്ത്യ"),
  TranslatedName(LangMon(), name: "Энэтхэг"),
  TranslatedName(LangMar(), name: "भारत"),
  TranslatedName(LangMlt(), name: "l-Indja"),
  TranslatedName(LangMya(), name: "အိန္ဒိယ"),
  TranslatedName(LangNde(), name: "Indiya"),
  TranslatedName(LangNep(), name: "भारत"),
  TranslatedName(LangOri(), name: "ଭାରତ"),
  TranslatedName(LangOss(), name: "Инди"),
  TranslatedName(LangPan(), name: "ਭਾਰਤ"),
  TranslatedName(LangPus(), name: "هند"),
  TranslatedName(LangRun(), name: "Ubuhindi"),
  TranslatedName(LangSnd(), name: "انڊيا"),
  TranslatedName(LangSag(), name: "Ênnde"),
  TranslatedName(LangSin(), name: "ඉන්දියාව"),
  TranslatedName(LangSlv(), name: "Indija"),
  TranslatedName(LangSom(), name: "Hindiya"),
  TranslatedName(LangSqi(), name: "Indi"),
  TranslatedName(LangTam(), name: "இந்தியா"),
  TranslatedName(LangTel(), name: "భారతదేశం"),
  TranslatedName(LangTgk(), name: "Ҳиндустон"),
  TranslatedName(LangTha(), name: "อินเดีย"),
  TranslatedName(LangTir(), name: "ህንዲ"),
  TranslatedName(LangTuk(), name: "Hindistan"),
  TranslatedName(LangTon(), name: "ʻInitia"),
  TranslatedName(LangTat(), name: "Индия"),
  TranslatedName(LangUig(), name: "ھىندىستان"),
  TranslatedName(LangUkr(), name: "Індія"),
  TranslatedName(LangUzb(), name: "Hindiston"),
  TranslatedName(LangUzb(), name: "Ҳиндистон", script: ScriptCyrl()),
  TranslatedName(LangVie(), name: "Ấn Độ"),
  TranslatedName(LangWol(), name: "End"),
  TranslatedName(LangYid(), name: "אינדיע"),
  TranslatedName(LangYor(), name: "Orílẹ́ède India"),
  TranslatedName(LangYor(), name: "Orílɛ́ède India", countryCode: "BJ"),
  TranslatedName(LangZul(), name: "i-India"),
  TranslatedName(LangFry(), name: "Yndia"),
  TranslatedName(LangIku(), name: "ᐃᓐᑎᐊ/intia"),
  TranslatedName(LangChv(), name: "Инди"),
  TranslatedName(LangJav(), name: "Indhia"),
  TranslatedName(LangSan(), name: "भारतः"),
  TranslatedName(LangSrd(), name: "Ìndia"),
  TranslatedName(LangXho(), name: "E-Indiya"),
  TranslatedName(LangAbk(), name: "Индиа"),
  TranslatedName(LangArg(), name: "India"),
  TranslatedName(LangCos(), name: "India"),
  TranslatedName(LangChu(), name: "і҆́ндїа"),
  TranslatedName(LangEus(), name: "India"),
  TranslatedName(LangFao(), name: "India"),
  TranslatedName(LangIna(), name: "India"),
  TranslatedName(LangInd(), name: "India"),
  TranslatedName(LangIle(), name: "India"),
  TranslatedName(LangKik(), name: "India"),
  TranslatedName(LangKal(), name: "India"),
  TranslatedName(LangCor(), name: "Eynda"),
  TranslatedName(LangLat(), name: "India"),
  TranslatedName(LangMsa(), name: "India"),
  TranslatedName(LangNor(), name: "India"),
  TranslatedName(LangOci(), name: "Índia"),
  TranslatedName(LangOrm(), name: "India"),
  TranslatedName(LangQue(), name: "India"),
  TranslatedName(LangRoh(), name: "India"),
  TranslatedName(LangRon(), name: "India"),
  TranslatedName(LangSme(), name: "India"),
  TranslatedName(LangSna(), name: "India"),
  TranslatedName(LangSun(), name: "India"),
  TranslatedName(LangSwa(), name: "India"),
  TranslatedName(LangVol(), name: "Lindän"),
  TranslatedName(LangZha(), name: "Yindu"),
];
