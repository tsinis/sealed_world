// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _HunFactory._(CountryHun _) implements CountryHun {
  const _HunFactory() : this._(const CountryHun._());
}

/// A class that represents the the Hungary country.
class CountryHun extends WorldCountry {
  /// {@template sealed_world.country_hun_constructor}
  /// Creates a instance of [CountryHun] (Hungary country).
  ///
  /// ISO 3166-1 Alpha-3 code: `HUN`, ISO 3166-1 Alpha-2 code: `HU`.
  /// {@endtemplate}
  const factory CountryHun() = _HunFactory;

  const CountryHun._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Hungary",
          common: "Hungary",
        ),
        tld: const [".hu"],
        code: "HUN",
        codeNumeric: "348",
        codeShort: "HU",
        cioc: "HUN",
        idd: const Idd(root: 3, suffixes: [6]),
        altSpellings: const ["HU"],
        continent: const Europe(),
        subregion: const CentralEurope(),
        latLng: const LatLng(47, 20),
        landlocked: true,
        bordersCodes: const ["Aut", "Hrv", "Rou", "Srb", "Svk", "Svn", "Ukr"],
        areaMetric: 93028,
        emoji: "🇭🇺",
        maps: const Maps(
          googleMaps: "9gfPupm5bffixiFJ6",
          openStreetMaps: "relation/21335",
        ),
        population: 9603634,
        gini: const Gini(year: 2018, coefficient: 29.6),
        fifa: "HUN",
        car: const Car(sign: "H"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatHuf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Budapest"),
    latLng: LatLng(47.5, 19.08),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Hungarian", male: "Hungarian"),
    Demonyms(language: LangFra(), female: "Hongroise", male: "Hongrois"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangHun(),
      official: "Magyarország",
      common: "Magyarország",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangHun()];
}
