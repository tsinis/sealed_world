// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _PryFactory._(CountryPry _) implements CountryPry {
  const _PryFactory() : this._(const CountryPry._());
}

/// A class that represents the Paraguay country.
class CountryPry extends WorldCountry {
  /// {@template sealed_world.country_pry_constructor}
  /// Creates a instance of [CountryPry] (Paraguay country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PRY`, ISO 3166-1 Alpha-2 code: `PY`.
  /// {@endtemplate}
  const factory CountryPry() = _PryFactory;

  const CountryPry._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Paraguay",
          common: "Paraguay",
        ),
        tld: const [".py"],
        code: "PRY",
        codeNumeric: "600",
        codeShort: "PY",
        cioc: "PAR",
        idd: const Idd(root: 5, suffixes: [95]),
        altSpellings: const [
          "PY",
          "Republic of Paraguay",
          "República del Paraguay",
          "Tetã Paraguái",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-23, -58),
        landlocked: true,
        bordersCodes: const ["Arg", "Bol", "Bra"],
        areaMetric: 406752,
        emoji: "🇵🇾",
        maps: const Maps(
          googleMaps: "JtnqG73WJn1Gx6mz6",
          openStreetMaps: "relation/287077",
        ),
        population: 7132530,
        gini: const Gini(year: 2019, coefficient: 45.7),
        fifa: "PAR",
        car: const Car(sign: "PY"),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPyg()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Asunción"),
    latLng: LatLng(-25.28, -57.57),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Paraguayan", male: "Paraguayan"),
    Demonyms(language: LangFra(), female: "Paraguayenne", male: "Paraguayen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangGrn(),
      official: "Tetã Paraguái",
      common: "Paraguái",
    ),
    CountryName(
      language: LangSpa(),
      official: "República de Paraguay",
      common: "Paraguay",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangGrn(), LangSpa()];
}
