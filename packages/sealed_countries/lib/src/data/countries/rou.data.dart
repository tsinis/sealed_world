// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _RouFactory._(CountryRou _) implements CountryRou {
  const _RouFactory() : this._(const CountryRou._());
}

/// A class that represents the Romania country.
class CountryRou extends WorldCountry {
  /// {@template sealed_world.country_rou_constructor}
  /// Creates a instance of [CountryRou] (Romania country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ROU`, ISO 3166-1 Alpha-2 code: `RO`.
  /// {@endtemplate}
  const factory CountryRou() = _RouFactory;

  const CountryRou._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Romania",
          common: "Romania",
        ),
        tld: const [".ro"],
        code: "ROU",
        codeNumeric: "642",
        codeShort: "RO",
        cioc: "ROU",
        idd: const Idd(root: 4, suffixes: [0]),
        altSpellings: const ["RO", "Rumania", "Roumania", "România"],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(46, 25),
        bordersCodes: const ["Bgr", "Hun", "Mda", "Srb", "Ukr"],
        areaMetric: 238391,
        emoji: "🇷🇴",
        maps: const Maps(
          googleMaps: "845hAgCf1mDkN3vr7",
          openStreetMaps: "relation/90689",
        ),
        population: 19286123,
        gini: const Gini(year: 2018, coefficient: 35.8),
        fifa: "ROU",
        car: const Car(sign: "RO"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatRon()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bucharest"),
    latLng: LatLng(44.43, 26.1),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Romanian", male: "Romanian"),
    Demonyms(language: LangFra(), female: "Roumaine", male: "Roumain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangRon(), official: "România", common: "România"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangRon()];
}
