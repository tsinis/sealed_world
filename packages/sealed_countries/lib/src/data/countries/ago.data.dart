// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AgoFactory._(CountryAgo _) implements CountryAgo {
  const _AgoFactory() : this._(const CountryAgo._());
}

/// A class that represents the the Angola country.
class CountryAgo extends WorldCountry {
  /// {@template sealed_world.country_ago_constructor}
  /// Creates a instance of [CountryAgo] (Angola country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AGO`, ISO 3166-1 Alpha-2 code: `AO`.
  /// {@endtemplate}
  const factory CountryAgo() = _AgoFactory;

  const CountryAgo._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Angola",
          common: "Angola",
        ),
        tld: const [".ao"],
        code: "AGO",
        codeNumeric: "024",
        codeShort: "AO",
        cioc: "ANG",
        idd: const Idd(root: 2, suffixes: [44]),
        altSpellings: const [
          "AO",
          "República de Angola",
          "ʁɛpublika de an'ɡɔla",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(-12.5, 18.5),
        bordersCodes: const ["Cog", "Cod", "Zmb", "Nam"],
        areaMetric: 1246700,
        emoji: "🇦🇴",
        maps: const Maps(
          googleMaps: "q42Qbf1BmQL3fuZg9",
          openStreetMaps: "relation/195267",
        ),
        population: 35981281,
        gini: const Gini(year: 2018, coefficient: 51.3),
        fifa: "ANG",
        car: const Car(sign: "ANG"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAoa()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Luanda"),
    latLng: LatLng(-8.83, 13.22),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Angolan", male: "Angolan"),
    Demonyms(language: LangFra(), female: "Angolaise", male: "Angolais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República de Angola",
      common: "Angola",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
