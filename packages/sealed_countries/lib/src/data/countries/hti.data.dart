// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _HtiFactory._(CountryHti _) implements CountryHti {
  const _HtiFactory() : this._(const CountryHti._());
}

/// A class that represents the Haiti country.
class CountryHti extends WorldCountry {
  /// {@template sealed_world.country_hti_constructor}
  /// Creates a instance of [CountryHti] (Haiti country).
  ///
  /// ISO 3166-1 Alpha-3 code: `HTI`, ISO 3166-1 Alpha-2 code: `HT`.
  /// {@endtemplate}
  const factory CountryHti() = _HtiFactory;

  const CountryHti._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Haiti",
          common: "Haiti",
        ),
        tld: const [".ht"],
        code: "HTI",
        codeNumeric: "332",
        codeShort: "HT",
        cioc: "HAI",
        idd: const Idd(root: 50, suffixes: [9]),
        altSpellings: const [
          "HT",
          "Republic of Haiti",
          "République d'Haïti",
          "Repiblik Ayiti",
        ],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(19, -72.41666666),
        bordersCodes: const ["Dom"],
        areaMetric: 27750,
        emoji: "🇭🇹",
        maps: const Maps(
          googleMaps: "9o13xtjuUdqFnHbn9",
          openStreetMaps: "relation/307829",
        ),
        population: 11724763,
        gini: const Gini(year: 2012, coefficient: 41.1),
        fifa: "HAI",
        car: const Car(sign: "RH"),
        timezones: const ["UTC-05:00"],
        postalCode: const PostalCode(
          format: "HT####",
          regExpPattern: r"^(?:HT)*(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatHtg()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Port-au-Prince"),
    latLng: LatLng(18.53, -72.33),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Haitian", male: "Haitian"),
    Demonyms(language: LangFra(), female: "Haïtienne", male: "Haïtien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République d'Haïti",
      common: "Haïti",
    ),
    CountryName(
      language: LangHat(),
      official: "Repiblik Ayiti",
      common: "Ayiti",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra(), LangHat()];
}
