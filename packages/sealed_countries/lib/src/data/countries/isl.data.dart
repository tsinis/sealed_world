// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _IslFactory._(CountryIsl _) implements CountryIsl {
  const _IslFactory() : this._(const CountryIsl._());
}

/// A class that represents the the Iceland country.
class CountryIsl extends WorldCountry {
  /// {@template sealed_world.country_isl_constructor}
  /// Creates a instance of [CountryIsl] (Iceland country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ISL`, ISO 3166-1 Alpha-2 code: `IS`.
  /// {@endtemplate}
  const factory CountryIsl() = _IslFactory;

  const CountryIsl._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Iceland",
          common: "Iceland",
        ),
        tld: const [".is"],
        code: "ISL",
        codeNumeric: "352",
        codeShort: "IS",
        cioc: "ISL",
        idd: const Idd(root: 3, suffixes: [54]),
        altSpellings: const [
          "IS",
          "Island",
          "Republic of Iceland",
          "Lýðveldið Ísland",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(65, -18),
        areaMetric: 103000,
        emoji: "🇮🇸",
        maps: const Maps(
          googleMaps: "WxFWSQuc3oamNxoE6",
          openStreetMaps: "relation/299133",
        ),
        population: 389444,
        gini: const Gini(year: 2017, coefficient: 26.1),
        fifa: "ISL",
        car: const Car(sign: "IS"),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "###",
          regExpPattern: r"^(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatIsk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Reykjavik"),
    latLng: LatLng(64.15, -21.95),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Icelander", male: "Icelander"),
    Demonyms(language: LangFra(), female: "Islandaise", male: "Islandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangIsl(), official: "Ísland", common: "Ísland"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangIsl()];
}
