// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SleFactory._(CountrySle _) implements CountrySle {
  const _SleFactory() : this._(const CountrySle._());
}

/// A class that represents the Sierra Leone country.
class CountrySle extends WorldCountry {
  /// {@template sealed_world.country_sle_constructor}
  /// Creates a instance of [CountrySle] (Sierra Leone country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SLE`, ISO 3166-1 Alpha-2 code: `SL`.
  /// {@endtemplate}
  const factory CountrySle() = _SleFactory;

  const CountrySle._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Sierra Leone",
          common: "Sierra Leone",
        ),
        tld: const [".sl"],
        code: "SLE",
        codeNumeric: "694",
        codeShort: "SL",
        cioc: "SLE",
        idd: const Idd(root: 2, suffixes: [32]),
        altSpellings: const ["SL", "Republic of Sierra Leone"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(8.5, -11.5),
        bordersCodes: const ["Gin", "Lbr"],
        areaMetric: 71740,
        emoji: "🇸🇱",
        maps: const Maps(
          googleMaps: "jhacar85oq9QaeKB7",
          openStreetMaps: "relation/192777",
        ),
        population: 7976985,
        gini: const Gini(year: 2018, coefficient: 35.7),
        fifa: "SLE",
        car: const Car(sign: "WAL"),
        timezones: const ["UTC+00:00"],
      );
  @override
  // ignore: deprecated_member_use, it's TODO!
  List<FiatCurrency> get currencies => const [FiatSll(), FiatSle()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Freetown"),
    latLng: LatLng(8.48, -13.23),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Sierra Leonean",
      male: "Sierra Leonean",
    ),
    Demonyms(
      language: LangFra(),
      female: "Sierra-leonaise",
      male: "Sierra-leonais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Sierra Leone",
      common: "Sierra Leone",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
