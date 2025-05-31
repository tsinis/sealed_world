// ignore_for_file: prefer-static-class, it's referenced as static in extension.
import "package:sealed_currencies/sealed_currencies.dart";

import "../data/official_world_countries.data.dart";
import "../model/country/country.dart";

/// Collection of languages and their associated (unofficial) countries (based
/// on usage and historical significance).
const unofficialLanguagesCountryMap = <NaturalLanguage, List<WorldCountry>>{
  LangAbk(): [
    CountryGeo(), // https://wikipedia.org/wiki/Abkhaz_language
    CountryRus(),
  ],
  LangAka(): [CountryGha()], // https://wikipedia.org/wiki/Akan_language
  LangArg(): [CountryEsp()], // https://wikipedia.org/wiki/Aragonese_language
  LangAsm(): [CountryInd()], // https://wikipedia.org/wiki/Assamese_language
  LangAva(): [CountryRus()], // https://wikipedia.org/wiki/Avar_language
  LangAve(): [CountryIrn()], // https://wikipedia.org/wiki/Avestan
  LangBak(): [CountryRus()], // https://wikipedia.org/wiki/Bashkir_language
  LangBam(): [CountryMli()], // https://wikipedia.org/wiki/Bambara_language
  LangBih(): [
    CountryInd(), // https://wikipedia.org/wiki/Bihari_languages
    CountryNpl(),
  ],
  LangBod(): [
    CountryChn(), // https://wikipedia.org/wiki/Standard_Tibetan
    CountryBtn(),
    CountryNpl(),
  ],
  LangBre(): [CountryFra()], // https://wikipedia.org/wiki/Breton_language
  LangChe(): [CountryRus()], // https://wikipedia.org/wiki/Chechen_language
  LangChu(): [CountryBgr()], // https://wikipedia.org/wiki/Church_Slavonic
  LangChv(): [CountryRus()], // https://wikipedia.org/wiki/Chuvash_language
  LangCor(): [CountryGbr()], // https://wikipedia.org/wiki/Cornish_language
  LangCos(): [
    CountryFra(), // https://wikipedia.org/wiki/Corsican_language
    CountryIta(),
  ],
  LangCre(): [CountryCan()], // https://wikipedia.org/wiki/Cree_language
  LangCym(): [CountryGbr()], // https://wikipedia.org/wiki/Welsh_language
  LangEus(): [
    CountryEsp(), // https://wikipedia.org/wiki/Basque_language
    CountryFra(),
  ],
  LangEwe(): [
    CountryGha(), // https://wikipedia.org/wiki/Ewe_language
    CountryTgo(),
  ],
  LangFry(): [
    CountryNld(), // https://wikipedia.org/wiki/West_Frisian_language
  ],
  LangFul(): [
    CountryNga(), // https://wikipedia.org/wiki/Fula_language
    CountryNer(),
    CountrySen(),
    CountryGin(),
    CountryCmr(),
  ],
  LangGla(): [CountryGbr()], // https://wikipedia.org/wiki/Scottish_Gaelic
  LangGlg(): [
    CountryEsp(), // https://wikipedia.org/wiki/Galician_language
    CountryPrt(),
  ],
  LangGuj(): [CountryInd()], // https://wikipedia.org/wiki/Gujarati_language
  LangHau(): [
    CountryNga(), // https://wikipedia.org/wiki/Hausa_language
    CountryNer(),
  ],
  LangIbo(): [CountryNga()], // https://wikipedia.org/wiki/Igbo_language
  LangIii(): [CountryChn()], // https://wikipedia.org/wiki/Nuosu_language
  LangIku(): [CountryCan()], // https://wikipedia.org/wiki/Inuktitut
  LangIpk(): [
    CountryUsa(), // https://wikipedia.org/wiki/Inupiaq_language
    CountryCan(),
  ],
  LangJav(): [CountryIdn()], // https://wikipedia.org/wiki/Javanese_language
  LangKan(): [CountryInd()], // https://wikipedia.org/wiki/Kannada
  LangKas(): [
    CountryInd(), // https://wikipedia.org/wiki/Kashmiri_language
    CountryPak(),
  ],
  LangKau(): [
    CountryNga(), // https://wikipedia.org/wiki/Kanuri_language
    CountryNer(),
    CountryTcd(),
    CountryCmr(),
  ],
  LangKik(): [CountryKen()], // https://wikipedia.org/wiki/Kikuyu_language
  LangKom(): [CountryRus()], // https://wikipedia.org/wiki/Komi_language
  LangKua(): [
    CountryAgo(), // https://wikipedia.org/wiki/Kwanyama
    CountryNam(),
  ],
  LangLim(): [
    CountryNld(), // https://wikipedia.org/wiki/Limburgish
    CountryBel(),
    CountryDeu(),
  ],
  LangLub(): [
    CountryCod(), // https://wikipedia.org/wiki/Luba-Katanga_language
  ],
  LangLug(): [CountryUga()], // https://wikipedia.org/wiki/Ganda_language
  LangMal(): [CountryInd()], // https://wikipedia.org/wiki/Malayalam
  LangMar(): [CountryInd()], // https://wikipedia.org/wiki/Marathi_language
  LangNav(): [CountryUsa()], // https://wikipedia.org/wiki/Navajo_language
  LangOci(): [
    CountryFra(), // https://wikipedia.org/wiki/Occitan_language
    CountryEsp(),
    CountryIta(),
    CountryMco(),
  ],
  LangOji(): [
    CountryCan(), // https://wikipedia.org/wiki/Ojibwe_language
    CountryUsa(),
  ],
  LangOri(): [CountryInd()], // https://wikipedia.org/wiki/Odia_language
  LangOss(): [
    CountryRus(), // https://wikipedia.org/wiki/Ossetic_language
    CountryGeo(),
  ],
  LangPan(): [
    CountryPak(), // https://wikipedia.org/wiki/Punjabi_language
    CountryInd(),
  ],
  LangPli(): [CountryInd()], // https://wikipedia.org/wiki/Pali
  LangSan(): [CountryInd()], // https://wikipedia.org/wiki/Sanskrit
  LangSme(): [CountryNor()], // https://wikipedia.org/wiki/Northern_Sami
  LangSnd(): [
    CountryPak(), // https://wikipedia.org/wiki/Sindhi_language
    CountryInd(),
  ],
  LangSrd(): [
    CountryIta(), // https://wikipedia.org/wiki/Sardinian_language
  ],
  LangSun(): [
    CountryIdn(), // https://wikipedia.org/wiki/Sundanese_language
  ],
  LangTah(): [CountryPyf()], // https://wikipedia.org/wiki/Tahitian_language
  LangTat(): [CountryRus()], // https://wikipedia.org/wiki/Tatar_language
  LangTel(): [CountryInd()], // https://wikipedia.org/wiki/Telugu_language
  LangTwi(): [CountryGha()], // https://wikipedia.org/wiki/Twi
  LangUig(): [CountryChn()], // https://wikipedia.org/wiki/Uyghur_language

  LangWln(): [CountryBel()], // https://wikipedia.org/wiki/Walloon_language
  LangWol(): [CountrySen()], // https://wikipedia.org/wiki/Wolof_language
  LangYid(): [
    CountryIsr(), // https://wikipedia.org/wiki/Yiddish
    CountryRus(),
    CountryDeu(),
  ],
  LangYor(): [CountryNga()], // https://wikipedia.org/wiki/Yoruba_language
  LangZha(): [CountryChn()], // https://wikipedia.org/wiki/Zhuang_languages
  /// Constructed languages:
  LangEpo(): <WorldCountry>[], // https://wikipedia.org/wiki/Esperanto
  LangIdo(): <WorldCountry>[], // https://wikipedia.org/wiki/Ido
  LangIle(): <WorldCountry>[], // https://wikipedia.org/wiki/Interlingue
  LangIna(): <WorldCountry>[], // https://wikipedia.org/wiki/Interlingua
  LangVol(): <WorldCountry>[], // https://wikipedia.org/wiki/Volapük
};
