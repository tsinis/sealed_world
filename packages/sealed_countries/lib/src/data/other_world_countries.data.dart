// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: avoid-suspicious-super-overrides

import "package:sealed_currencies/sealed_currencies.dart";

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
import "../model/regional_bloc/world_bloc.dart";
import "geo/continental_sections.data.dart";
import "geo/continents.data.dart";
import "regional_bloc/regional_bloc.data.dart";

/// A class that represents the Kosovo country.
class CountryUnk extends WorldCountry {
  /// Creates a instance of [CountryUnk] (Kosovo country).
  ///
  /// ISO 3166-1 Alpha-3 code: `UNK`, ISO 3166-1 Alpha-2 code: `XK`.
  const CountryUnk()
    : super.permissive(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Kosovo",
          common: "Kosovo",
        ),
        code: "UNK",
        codeNumeric: "   ",
        codeShort: "XK",
        cioc: "KOS",
        unMember: false,
        idd: const Idd(root: 3, suffixes: [83]),
        altSpellings: const ["XK", "Република Косово"],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(42.666_667, 21.166_667),
        landlocked: true,
        bordersCodes: const ["Alb", "Mkd", "Mne", "Srb"],
        areaMetric: 10908,
        emoji: "🇽🇰",
        maps: const Maps(
          googleMaps: "CSC4Yc8SWPgburuD9",
          openStreetMaps: "relation/2088990",
        ),
        population: 1_775_378,
        gini: const Gini(year: 2017, coefficient: 29),
        fifa: "KVX",
        car: const Car(sign: "CS"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Pristina"),
    latLng: LatLng(42.67, 21.17),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Kosovar", male: "Kosovar"),
    Demonyms(language: LangFra(), female: "Kosovare", male: "Kosovar"),
  ];
  @override
  List<CountryName> get namesNative => const [
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
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSrp(), LangSqi()];
}
