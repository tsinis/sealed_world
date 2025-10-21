// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Egypt country.
class CountryEgy extends WorldCountry {
  /// {@template sealed_world.countries_egy_constructor}}
  /// Creates a instance of [CountryEgy] (Egypt country).
  ///
  /// ISO 3166-1 Alpha-3 code: `EGY`, ISO 3166-1 Alpha-2 code: `EG`.
  /// {@endtemplate}
  const factory CountryEgy() = _EgyFactory;

  const CountryEgy._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Arab Republic of Egypt",
          common: "Egypt",
        ),
        tld: const [".eg", ".مصر"],
        code: "EGY",
        codeNumeric: "818",
        codeShort: "EG",
        cioc: "EGY",
        idd: const Idd(root: 2, suffixes: [0]),
        altSpellings: const ["EG", "Arab Republic of Egypt"],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(27, 30),
        bordersCodes: const ["Isr", "Lby", "Pse", "Sdn"],
        areaMetric: 1002450,
        emoji: "🇪🇬",
        maps: const Maps(
          googleMaps: "uoDRhXbsqjG6L7VG7",
          openStreetMaps: "relation/1473947",
        ),
        population: 109450000,
        gini: const Gini(year: 2017, coefficient: 31.5),
        fifa: "EGY",
        car: const Car(sign: "ET"),
        timezones: const ["UTC+02:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEgp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Cairo"),
    latLng: LatLng(30.05, 31.25),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Egyptian", male: "Egyptian"),
    Demonyms(language: LangFra(), female: "Égyptienne", male: "Égyptien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "جمهورية مصر العربية",
      common: "مصر",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}

extension type const _EgyFactory._(CountryEgy _) implements CountryEgy {
  const _EgyFactory() : this._(const CountryEgy._());
}
