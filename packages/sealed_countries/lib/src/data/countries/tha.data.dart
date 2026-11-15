// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _ThaFactory._(CountryTha _) implements CountryTha {
  const new() : this._(const CountryTha._());
}

/// A class that represents the Thailand country.
class CountryTha extends WorldCountry {
  /// {@template sealed_world.country_tha_constructor}
  /// Creates a instance of [CountryTha] (Thailand country).
  ///
  /// ISO 3166-1 Alpha-3 code: `THA`, ISO 3166-1 Alpha-2 code: `TH`.
  /// {@endtemplate}
  const factory() = _ThaFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Thailand",
          common: "Thailand",
        ),
        tld: const [".th", ".ไทย"],
        code: "THA",
        codeNumeric: "764",
        codeShort: "TH",
        cioc: "THA",
        idd: const Idd(root: 6, suffixes: [6]),
        altSpellings: const [
          "TH",
          "Prathet",
          "Thai",
          "Kingdom of Thailand",
          "ราชอาณาจักรไทย",
          "Ratcha Anachak Thai",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(15, 100),
        bordersCodes: const ["Mmr", "Khm", "Lao", "Mys"],
        areaMetric: 513120,
        emoji: "🇹🇭",
        maps: const Maps(
          googleMaps: "qeU6uqsfW4nCCwzw9",
          openStreetMaps: "relation/2067731",
        ),
        population: 69799978,
        gini: const Gini(year: 2019, coefficient: 34.9),
        fifa: "THA",
        car: const Car(sign: "T", isRightSide: false),
        timezones: const ["UTC+07:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatThb()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bangkok"),
    latLng: LatLng(13.75, 100.52),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Thai", male: "Thai"),
    Demonyms(language: LangFra(), female: "Thaïlandaise", male: "Thaïlandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangTha(),
      official: "ราชอาณาจักรไทย",
      common: "ประเทศไทย",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangTha()];
}
