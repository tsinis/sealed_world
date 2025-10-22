// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PngFactory._(CountryPng _) implements CountryPng {
  const _PngFactory() : this._(const CountryPng._());
}

/// A class that represents the Papua New Guinea country.
class CountryPng extends WorldCountry {
  /// {@template sealed_world.country_png_constructor}
  /// Creates a instance of [CountryPng] (Papua New Guinea country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PNG`, ISO 3166-1 Alpha-2 code: `PG`.
  /// {@endtemplate}
  const factory CountryPng() = _PngFactory;

  const CountryPng._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Independent State of Papua New Guinea",
          common: "Papua New Guinea",
        ),
        tld: const [".pg"],
        code: "PNG",
        codeNumeric: "598",
        codeShort: "PG",
        cioc: "PNG",
        idd: const Idd(root: 6, suffixes: [75]),
        altSpellings: const [
          "PG",
          "Independent State of Papua New Guinea",
          "Independen Stet bilong Papua Niugini",
        ],
        continent: const Oceania(),
        subregion: const Melanesia(),
        latLng: const LatLng(-6, 147),
        bordersCodes: const ["Idn"],
        areaMetric: 462840,
        emoji: "🇵🇬",
        maps: const Maps(
          googleMaps: "ChGmzZBjZ3vnBwR2A",
          openStreetMaps: "307866",
        ),
        population: 8947027,
        gini: const Gini(year: 2009, coefficient: 41.9),
        fifa: "PNG",
        car: const Car(sign: "PNG", isRightSide: false),
        timezones: const ["UTC+10:00"],
        postalCode: const PostalCode(
          format: "###",
          regExpPattern: r"^(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPgk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Port Moresby"),
    latLng: LatLng(-9.45, 147.18),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Papua New Guinean",
      male: "Papua New Guinean",
    ),
    Demonyms(language: LangFra(), female: "Papouasienne", male: "Papouasien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Independent State of Papua New Guinea",
      common: "Papua New Guinea",
    ),
    CountryName(
      language: LangHmo(),
      official: "Independen Stet bilong Papua Niugini",
      common: "Papua Niu Gini",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangHmo()];
}
