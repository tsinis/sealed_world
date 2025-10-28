// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _DnkFactory._(CountryDnk _) implements CountryDnk {
  const _DnkFactory() : this._(const CountryDnk._());
}

/// A class that represents the Denmark country.
class CountryDnk extends WorldCountry {
  /// {@template sealed_world.country_dnk_constructor}
  /// Creates a instance of [CountryDnk] (Denmark country).
  ///
  /// ISO 3166-1 Alpha-3 code: `DNK`, ISO 3166-1 Alpha-2 code: `DK`.
  /// {@endtemplate}
  const factory CountryDnk() = _DnkFactory;

  const CountryDnk._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Denmark",
          common: "Denmark",
        ),
        tld: const [".dk"],
        code: "DNK",
        codeNumeric: "208",
        codeShort: "DK",
        cioc: "DEN",
        idd: const Idd(root: 4, suffixes: [5]),
        altSpellings: const [
          "DK",
          "Danmark",
          "Kingdom of Denmark",
          "Kongeriget Danmark",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(56, 10),
        bordersCodes: const ["Deu"],
        areaMetric: 43094,
        emoji: "🇩🇰",
        maps: const Maps(
          googleMaps: "UddGPN7hAyrtpFiT6",
          openStreetMaps: "relation/50046",
        ),
        population: 6001008,
        gini: const Gini(year: 2018, coefficient: 28.2),
        fifa: "DEN",
        car: const Car(sign: "DK"),
        timezones: const [
          "UTC-04:00",
          "UTC-03:00",
          "UTC-01:00",
          "UTC+00:00",
          "UTC+01:00",
        ],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDkk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Copenhagen"),
    latLng: LatLng(55.67, 12.58),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Danish", male: "Danish"),
    Demonyms(language: LangFra(), female: "Danoise", male: "Danois"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDan(),
      official: "Kongeriget Danmark",
      common: "Danmark",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDan()];
}
