// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

import "package:sealed_currencies/sealed_currencies.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../model/country/country.dart";
import "../model/country/submodels/capital.dart";
import "../model/country/submodels/capital_info.dart";
import "../model/country/submodels/car.dart";
import "../model/country/submodels/country_name.dart";
import "../model/country/submodels/demonyms.dart";
import "../model/country/submodels/gini.dart";
import "../model/country/submodels/idd.dart";
import "../model/country/submodels/lat_lng.dart";
import "../model/country/submodels/maps.dart";
import "geo/continental_sections.data.dart";
import "geo/continents.data.dart";

/// {@hideConstantImplementations}
class CountryUnk extends WorldCountry {
  /// A class that represents the country of Kosovo.
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
          idd: const Idd(root: 3, suffixes: [83]),
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
          latLng: const LatLng(42.666667, 21.166667),
          landlocked: true,
          bordersCodes: const ["Alb", "Mkd", "Mne", "Srb"],
          areaMetric: 10908,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Kosovar",
              male: "Kosovar",
            ),
            Demonyms(
              language: LangFra(),
              female: "Kosovare",
              male: "Kosovar",
            ),
          ],
          emoji: "🇽🇰",
          maps: const Maps(
            googleMaps: "CSC4Yc8SWPgburuD9",
            openStreetMaps: "relation/2088990",
          ),
          population: 1775378,
          gini: const Gini(year: 2017, coefficient: 29),
          fifa: "KVX",
          car: const Car(sign: "CS"),
          timezones: const ["UTC+01:00"],
          capitalInfo: const CapitalInfo(
            capital: Capital("Pristina"),
            latLng: LatLng(42.67, 21.17),
          ),
        );
}
