// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _HndFactory._(CountryHnd _) implements CountryHnd {
  const _HndFactory() : this._(const CountryHnd._());
}

/// A class that represents the Honduras country.
class CountryHnd extends WorldCountry {
  /// {@template sealed_world.country_hnd_constructor}
  /// Creates a instance of [CountryHnd] (Honduras country).
  ///
  /// ISO 3166-1 Alpha-3 code: `HND`, ISO 3166-1 Alpha-2 code: `HN`.
  /// {@endtemplate}
  const factory CountryHnd() = _HndFactory;

  const CountryHnd._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Honduras",
          common: "Honduras",
        ),
        tld: const [".hn"],
        code: "HND",
        codeNumeric: "340",
        codeShort: "HN",
        cioc: "HON",
        idd: const Idd(root: 50, suffixes: [4]),
        altSpellings: const [
          "HN",
          "Republic of Honduras",
          "República de Honduras",
        ],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(15, -86.5),
        bordersCodes: const ["Gtm", "Slv", "Nic"],
        areaMetric: 112492,
        emoji: "🇭🇳",
        maps: const Maps(
          googleMaps: "BbeJK8Sk2VkMHbdF8",
          openStreetMaps: "relation/287670",
        ),
        population: 9571352,
        gini: const Gini(year: 2019, coefficient: 48.2),
        fifa: "HON",
        car: const Car(sign: "HN"),
        timezones: const ["UTC-06:00"],
        postalCode: const PostalCode(
          format: "@@####",
          regExpPattern: r"^([A-Z]{2}\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatHnl()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tegucigalpa"),
    latLng: LatLng(14.1, -87.22),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Honduran", male: "Honduran"),
    Demonyms(language: LangFra(), female: "Hondurienne", male: "Hondurien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Honduras",
      common: "Honduras",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
