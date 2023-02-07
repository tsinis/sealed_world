// ignore_for_file: avoid-non-ascii-symbols

import "package:currencies_dart/currencies_dart.dart";
import "package:languages_dart/languages_dart.dart";

import "../model/country/country.dart";
import "../model/country/submodels/capital_info.dart";
import "../model/country/submodels/car.dart";
import "../model/country/submodels/country_name.dart";
import "../model/country/submodels/demonyms.dart";
import "../model/country/submodels/gini.dart";
import "../model/country/submodels/idd.dart";
import "../model/country/submodels/maps.dart";
import "geo/continental_sections.dart";
import "geo/continents.dart";

// ignore: prefer-match-file-name, not needed in data file.
class CountryUnk extends WorldCountry {
  const CountryUnk()
      : super(
          name: const CountryName.international(
            common: "Kosovo",
            official: "Republic of Kosovo",
          ),
          namesNative: const [
            CountryName(
              language: LangSqi(),
              official: "Republika e Kosovës",
              common: "Kosova",
            ),
            CountryName(
              language: LangSrp(),
              official: "Република Косово",
              common: "Косово",
            ),
          ],
          codeShort: "XK",
          code: "UNK",
          cioc: "KOS",
          codeNumeric: "",
          tld: const [],
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: "+3", suffixes: ["83"]),
          altSpellings: const ["XK", "Република Косово"],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangSrp(), LangSqi()],
          translations: const [
            CountryName(
              language: LangSrp(),
              official: "Република Косово",
              common: "Косово",
            ),
            CountryName(
              language: LangAra(),
              official: "جمهورية كوسوفو",
              common: "كوسوفو",
            ),
            CountryName(
              language: LangBre(),
              official: "Republik Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangCes(),
              official: "Kosovská republika",
              common: "Kosovo",
            ),
            CountryName(
              language: LangCym(),
              official: "Republic of Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangDeu(),
              official: "Republik Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangEst(),
              official: "Kosovo Vabariik",
              common: "Kosovo",
            ),
            CountryName(
              language: LangFin(),
              official: "Kosovon tasavalta",
              common: "Kosovo",
            ),
            CountryName(
              language: LangFra(),
              official: "République du Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangHrv(),
              official: "Republika Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangHun(),
              official: "Koszovó",
              common: "Koszovó",
            ),
            CountryName(
              language: LangIta(),
              official: "Repubblica del Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangJpn(),
              official: "コソボ",
              common: "コソボ",
            ),
            CountryName(
              language: LangKor(),
              official: "코소보 공화국",
              common: "코소보",
            ),
            CountryName(
              language: LangNld(),
              official: "Republiek Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangFas(),
              official: "جمهوری کوزوو",
              common: "کوزوو",
            ),
            CountryName(
              language: LangPol(),
              official: "Republika Kosowa",
              common: "Kosowo",
            ),
            CountryName(
              language: LangPor(),
              official: "República do Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangRus(),
              official: "Республика Косово",
              common: "Республика Косово",
            ),
            CountryName(
              language: LangSlk(),
              official: "Republika Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangSpa(),
              official: "República de Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangSwe(),
              official: "Republiken Kosovo",
              common: "Kosovo",
            ),
            CountryName(
              language: LangTur(),
              official: "Kosova Cumhuriyeti",
              common: "Kosova",
            ),
            CountryName(
              language: LangUrd(),
              official: "جمہوریہ کوسووہ",
              common: "کوسووہ",
            ),
            CountryName(
              language: LangZho(),
              official: "科索沃共和国",
              common: "科索沃",
            ),
          ],
          latLng: const [42.666667, 21.166667],
          landlocked: true,
          bordersCodes: const ["Alb", "Mkd", "Mne", "Srb"],
          area: 10908,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              f: "Kosovar",
              m: "Kosovar",
            ),
            Demonyms(
              language: LangFra(),
              f: "Kosovare",
              m: "Kosovar",
            ),
          ],
          emoji: "🇽🇰",
          maps: const Maps(
            googleMaps: "CSC4Yc8SWPgburuD9",
            openStreetMaps: "relation/2088990",
          ),
          population: 1775378,
          gini: const Gini(year: 2017, value: 29),
          fifa: "KVX",
          car: const Car(signs: ["CS"]),
          timezones: const ["UTC+01:00"],
          capitalInfo: const CapitalInfo(
            capital: ["Pristina"],
            latLng: [42.67, 21.17],
          ),
        );
}
