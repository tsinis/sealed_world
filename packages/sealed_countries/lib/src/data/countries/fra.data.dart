// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _FraFactory._(CountryFra _) implements CountryFra {
  const _FraFactory() : this._(const CountryFra._());
}

/// A class that represents the the France country.
class CountryFra extends WorldCountry {
  /// {@template sealed_world.country_fra_constructor}
  /// Creates a instance of [CountryFra] (France country).
  ///
  /// ISO 3166-1 Alpha-3 code: `FRA`, ISO 3166-1 Alpha-2 code: `FR`.
  /// {@endtemplate}
  const factory CountryFra() = _FraFactory;

  const CountryFra._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "French Republic",
          common: "France",
        ),
        tld: const [".fr"],
        code: "FRA",
        codeNumeric: "250",
        codeShort: "FR",
        cioc: "FRA",
        idd: const Idd(root: 3, suffixes: [3]),
        altSpellings: const ["FR", "French Republic", "République française"],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(46, 2),
        bordersCodes: const [
          "And",
          "Bel",
          "Deu",
          "Ita",
          "Lux",
          "Mco",
          "Esp",
          "Che",
        ],
        areaMetric: 551695,
        emoji: "🇫🇷",
        maps: const Maps(
          googleMaps: "g7QxxSFsWyTPKuzd7",
          openStreetMaps: "relation/1403916",
        ),
        population: 68605616,
        gini: const Gini(year: 2018, coefficient: 32.4),
        fifa: "FRA",
        car: const Car(sign: "F"),
        timezones: const [
          "UTC-10:00",
          "UTC-09:30",
          "UTC-09:00",
          "UTC-08:00",
          "UTC-04:00",
          "UTC-03:00",
          "UTC+01:00",
          "UTC+02:00",
          "UTC+03:00",
          "UTC+04:00",
          "UTC+05:00",
          "UTC+10:00",
          "UTC+11:00",
          "UTC+12:00",
        ],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Paris"), latLng: LatLng(48.87, 2.33));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "French", male: "French"),
    Demonyms(language: LangFra(), female: "Française", male: "Français"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République française",
      common: "France",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
