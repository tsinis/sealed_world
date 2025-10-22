// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PrtFactory._(CountryPrt _) implements CountryPrt {
  const _PrtFactory() : this._(const CountryPrt._());
}

/// A class that represents the Portugal country.
class CountryPrt extends WorldCountry {
  /// {@template sealed_world.country_prt_constructor}
  /// Creates a instance of [CountryPrt] (Portugal country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PRT`, ISO 3166-1 Alpha-2 code: `PT`.
  /// {@endtemplate}
  const factory CountryPrt() = _PrtFactory;

  const CountryPrt._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Portuguese Republic",
          common: "Portugal",
        ),
        tld: const [".pt"],
        code: "PRT",
        codeNumeric: "620",
        codeShort: "PT",
        cioc: "POR",
        idd: const Idd(root: 3, suffixes: [51]),
        altSpellings: const [
          "PT",
          "Portuguesa",
          "Portuguese Republic",
          "República Portuguesa",
        ],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(39.5, -8),
        bordersCodes: const ["Esp"],
        areaMetric: 92090,
        emoji: "🇵🇹",
        maps: const Maps(
          googleMaps: "BaTBSyc4GWMmbAKB8",
          openStreetMaps: "relation/295480",
        ),
        population: 10305564,
        gini: const Gini(year: 2018, coefficient: 33.5),
        fifa: "POR",
        car: const Car(sign: "P"),
        timezones: const ["UTC-01:00", "UTC+00:00"],
        postalCode: const PostalCode(
          format: "####-###",
          regExpPattern: r"^(\d{7})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Lisbon"),
    latLng: LatLng(38.72, -9.13),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Portuguese", male: "Portuguese"),
    Demonyms(language: LangFra(), female: "Portugaise", male: "Portugais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República Portuguesa",
      common: "Portugal",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
