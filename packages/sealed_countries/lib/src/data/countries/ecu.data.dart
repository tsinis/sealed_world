// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Ecuador country.
class CountryEcu extends WorldCountry {
  /// {@template sealed_world.countries_ecu_constructor}}
  /// Creates a instance of [CountryEcu] (Ecuador country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ECU`, ISO 3166-1 Alpha-2 code: `EC`.
  /// {@endtemplate}
  const factory CountryEcu() = _EcuFactory;

  const CountryEcu._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Ecuador",
          common: "Ecuador",
        ),
        tld: const [".ec"],
        code: "ECU",
        codeNumeric: "218",
        codeShort: "EC",
        cioc: "ECU",
        idd: const Idd(root: 5, suffixes: [93]),
        altSpellings: const [
          "EC",
          "Republic of Ecuador",
          "República del Ecuador",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-2, -77.5),
        bordersCodes: const ["Col", "Per"],
        areaMetric: 283561,
        emoji: "🇪🇨",
        maps: const Maps(
          googleMaps: "TbX8hUW4gcbRPZiK7",
          openStreetMaps: "relation/108089",
        ),
        population: 16938986,
        gini: const Gini(year: 2019, coefficient: 45.7),
        fifa: "ECU",
        car: const Car(sign: "EC"),
        timezones: const ["UTC-06:00", "UTC-05:00"],
        postalCode: const PostalCode(
          format: "@####@",
          regExpPattern: r"^([a-zA-Z]\d{4}[a-zA-Z])$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Quito"),
    latLng: LatLng(-0.22, -78.5),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ecuadorean", male: "Ecuadorean"),
    Demonyms(language: LangFra(), female: "Équatorienne", male: "Équatorien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República del Ecuador",
      common: "Ecuador",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}

extension type const _EcuFactory._(CountryEcu _) implements CountryEcu {
  const _EcuFactory() : this._(const CountryEcu._());
}
