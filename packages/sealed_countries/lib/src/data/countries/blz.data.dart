// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _BlzFactory._(CountryBlz _) implements CountryBlz {
  const _BlzFactory() : this._(const CountryBlz._());
}

/// A class that represents the Belize country.
class CountryBlz extends WorldCountry {
  /// {@template sealed_world.country_blz_constructor}
  /// Creates a instance of [CountryBlz] (Belize country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BLZ`, ISO 3166-1 Alpha-2 code: `BZ`.
  /// {@endtemplate}
  const factory CountryBlz() = _BlzFactory;

  const CountryBlz._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Belize",
          common: "Belize",
        ),
        tld: const [".bz"],
        code: "BLZ",
        codeNumeric: "084",
        codeShort: "BZ",
        cioc: "BIZ",
        idd: const Idd(root: 50, suffixes: [1]),
        altSpellings: const ["BZ"],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(17.25, -88.75),
        bordersCodes: const ["Gtm", "Mex"],
        areaMetric: 22966,
        emoji: "🇧🇿",
        maps: const Maps(
          googleMaps: "jdCccpdLodm1uTmo9",
          openStreetMaps: "relation/287827",
        ),
        population: 397483,
        gini: const Gini(year: 1999, coefficient: 53.3),
        fifa: "BLZ",
        car: const Car(sign: "BH"),
        timezones: const ["UTC-06:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Belmopan"),
    latLng: LatLng(17.25, -88.77),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM(), BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Belizean", male: "Belizean"),
    Demonyms(language: LangFra(), female: "Bélizienne", male: "Bélizien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Belize", common: "Belize"),
    CountryName(language: LangSpa(), official: "Belice", common: "Belice"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSpa()];
}
