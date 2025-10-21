// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Equatorial Guinea country.
class CountryGnq extends WorldCountry {
  /// {@template sealed_world.countries_gnq_constructor}}
  /// Creates a instance of [CountryGnq] (Equatorial Guinea country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GNQ`, ISO 3166-1 Alpha-2 code: `GQ`.
  /// {@endtemplate}
  const factory CountryGnq() = _GnqFactory;

  const CountryGnq._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Equatorial Guinea",
          common: "Equatorial Guinea",
        ),
        tld: const [".gq"],
        code: "GNQ",
        codeNumeric: "226",
        codeShort: "GQ",
        cioc: "GEQ",
        idd: const Idd(root: 2, suffixes: [40]),
        altSpellings: const [
          "GQ",
          "Republic of Equatorial Guinea",
          "República de Guinea Ecuatorial",
          "République de Guinée équatoriale",
          "República da Guiné Equatorial",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(2, 10),
        bordersCodes: const ["Cmr", "Gab"],
        areaMetric: 28051,
        emoji: "🇬🇶",
        maps: const Maps(
          googleMaps: "ucWfFd8aW1FbGMva9",
          openStreetMaps: "relation/192791",
        ),
        population: 1795834,
        fifa: "EQG",
        car: const Car(sign: "GQ"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXaf()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Malabo"), latLng: LatLng(3.75, 8.78));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Equatorial Guinean",
      male: "Equatorial Guinean",
    ),
    Demonyms(
      language: LangFra(),
      female: "Équato-guinéenne",
      male: "Équato-guinéen",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République de la Guinée Équatoriale",
      common: "Guinée équatoriale",
    ),
    CountryName(
      language: LangPor(),
      official: "República da Guiné Equatorial",
      common: "Guiné Equatorial",
    ),
    CountryName(
      language: LangSpa(),
      official: "República de Guinea Ecuatorial",
      common: "Guinea Ecuatorial",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangFra(),
    LangPor(),
    LangSpa(),
  ];
}

extension type const _GnqFactory._(CountryGnq _) implements CountryGnq {
  const _GnqFactory() : this._(const CountryGnq._());
}
