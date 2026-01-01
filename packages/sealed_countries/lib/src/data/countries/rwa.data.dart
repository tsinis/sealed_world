// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _RwaFactory._(CountryRwa _) implements CountryRwa {
  const _RwaFactory() : this._(const CountryRwa._());
}

/// A class that represents the Rwanda country.
class CountryRwa extends WorldCountry {
  /// {@template sealed_world.country_rwa_constructor}
  /// Creates a instance of [CountryRwa] (Rwanda country).
  ///
  /// ISO 3166-1 Alpha-3 code: `RWA`, ISO 3166-1 Alpha-2 code: `RW`.
  /// {@endtemplate}
  const factory CountryRwa() = _RwaFactory;

  const CountryRwa._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Rwanda",
          common: "Rwanda",
        ),
        tld: const [".rw"],
        code: "RWA",
        codeNumeric: "646",
        codeShort: "RW",
        cioc: "RWA",
        idd: const Idd(root: 2, suffixes: [50]),
        altSpellings: const [
          "RW",
          "Republic of Rwanda",
          "Repubulika y'u Rwanda",
          "République du Rwanda",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-2, 30),
        landlocked: true,
        bordersCodes: const ["Bdi", "Cod", "Tza", "Uga"],
        areaMetric: 26338,
        emoji: "🇷🇼",
        maps: const Maps(
          googleMaps: "j5xb5r7CLqjYbyP86",
          openStreetMaps: "relation/171496",
        ),
        population: 12952209,
        gini: const Gini(year: 2016, coefficient: 43.7),
        fifa: "RWA",
        car: const Car(sign: "RWA"),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatRwf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kigali"),
    latLng: LatLng(-1.95, 30.05),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Rwandan", male: "Rwandan"),
    Demonyms(language: LangFra(), female: "Rwandaise", male: "Rwandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Rwanda",
      common: "Rwanda",
    ),
    CountryName(
      language: LangFra(),
      official: "République rwandaise",
      common: "Rwanda",
    ),
    CountryName(
      language: LangKin(),
      official: "Repubulika y'u Rwanda",
      common: "Rwanda",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangEng(),
    LangFra(),
    LangKin(),
  ];
}
