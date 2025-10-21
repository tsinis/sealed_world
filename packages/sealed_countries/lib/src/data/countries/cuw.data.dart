// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Curaçao country.
class CountryCuw extends WorldCountry {
  /// {@template sealed_world.countries_cuw_constructor}}
  /// Creates a instance of [CountryCuw] (Curaçao country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CUW`, ISO 3166-1 Alpha-2 code: `CW`.
  /// {@endtemplate}
  const factory CountryCuw() = _CuwFactory;

  const CountryCuw._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Country of Curaçao",
          common: "Curaçao",
        ),
        tld: const [".cw"],
        code: "CUW",
        codeNumeric: "531",
        codeShort: "CW",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [99]),
        altSpellings: const [
          "CW",
          "Curacao",
          "Kòrsou",
          "WorldCountry of Curaçao",
          "Land Curaçao",
          "Pais Kòrsou",
        ],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(12.116667, -68.933333),
        areaMetric: 444,
        emoji: "🇨🇼",
        maps: const Maps(
          googleMaps: "9D3hTeA3qKaRT7S16",
          openStreetMaps: "relation/1216719",
        ),
        population: 155826,
        fifa: "CUW",
        car: const Car(sign: "CW"),
        timezones: const ["UTC-04:00"],
      );
  @override
  // ignore: deprecated_member_use, it's TODO!
  List<FiatCurrency> get currencies => const [FiatXcg(), FiatAng()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Willemstad"),
    latLng: LatLng(12.1, -68.92),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Curaçaoan", male: "Curaçaoan"),
    Demonyms(language: LangFra(), female: "Curacienne", male: "Curacien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Country of Curaçao",
      common: "Curaçao",
    ),
    CountryName(
      language: LangNld(),
      official: "Land Curaçao",
      common: "Curaçao",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangNld()];
}

extension type const _CuwFactory._(CountryCuw _) implements CountryCuw {
  const _CuwFactory() : this._(const CountryCuw._());
}
