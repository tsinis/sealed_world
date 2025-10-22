// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MarFactory._(CountryMar _) implements CountryMar {
  const _MarFactory() : this._(const CountryMar._());
}

/// A class that represents the the Morocco country.
class CountryMar extends WorldCountry {
  /// {@template sealed_world.country_mar_constructor}
  /// Creates a instance of [CountryMar] (Morocco country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MAR`, ISO 3166-1 Alpha-2 code: `MA`.
  /// {@endtemplate}
  const factory CountryMar() = _MarFactory;

  const CountryMar._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Morocco",
          common: "Morocco",
        ),
        tld: const [".ma", "المغرب."],
        code: "MAR",
        codeNumeric: "504",
        codeShort: "MA",
        cioc: "MAR",
        idd: const Idd(root: 2, suffixes: [12]),
        altSpellings: const [
          "MA",
          "Kingdom of Morocco",
          "Al-Mamlakah al-Maġribiyah",
        ],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(32, -5),
        bordersCodes: const ["Dza", "Esh", "Esp"],
        areaMetric: 446550,
        emoji: "🇲🇦",
        maps: const Maps(
          googleMaps: "6oMv3dyBZg3iaXQ5A",
          openStreetMaps: "relation/3630439",
        ),
        population: 36828330,
        gini: const Gini(year: 2013, coefficient: 39.5),
        fifa: "MAR",
        car: const Car(sign: "MA"),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMad()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Rabat"),
    latLng: LatLng(34.02, -6.82),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Moroccan", male: "Moroccan"),
    Demonyms(language: LangFra(), female: "Marocaine", male: "Marocain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "المملكة المغربية",
      common: "المغرب",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
