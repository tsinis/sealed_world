// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Burkina Faso country.
class CountryBfa extends WorldCountry {
  /// {@template sealed_world.countries_bfa_constructor}}
  /// Creates a instance of [CountryBfa] (Burkina Faso country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BFA`, ISO 3166-1 Alpha-2 code: `BF`.
  /// {@endtemplate}
  const factory CountryBfa() = _BfaFactory;

  const CountryBfa._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Burkina Faso",
          common: "Burkina Faso",
        ),
        tld: const [".bf"],
        code: "BFA",
        codeNumeric: "854",
        codeShort: "BF",
        cioc: "BUR",
        idd: const Idd(root: 2, suffixes: [26]),
        altSpellings: const ["BF"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(13, -2),
        landlocked: true,
        bordersCodes: const ["Ben", "Civ", "Gha", "Mli", "Ner", "Tgo"],
        areaMetric: 272967,
        emoji: "🇧🇫",
        maps: const Maps(
          googleMaps: "rKRmpcMbFher2ozb7",
          openStreetMaps: "relation/192783",
        ),
        population: 22489126,
        gini: const Gini(year: 2014, coefficient: 35.3),
        fifa: "BFA",
        car: const Car(sign: "BF"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ouagadougou"),
    latLng: LatLng(12.37, -1.52),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Burkinabe", male: "Burkinabe"),
    Demonyms(language: LangFra(), female: "Burkinabée", male: "Burkinabé"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Burkina Faso",
      common: "Burkina Faso",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _BfaFactory._(CountryBfa _) implements CountryBfa {
  const _BfaFactory() : this._(const CountryBfa._());
}
