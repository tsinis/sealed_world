// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Philippines country.
class CountryPhl extends WorldCountry {
  /// {@template sealed_world.countries_phl_constructor}}
  /// Creates a instance of [CountryPhl] (Philippines country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PHL`, ISO 3166-1 Alpha-2 code: `PH`.
  /// {@endtemplate}
  const factory CountryPhl() = _PhlFactory;

  const CountryPhl._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Philippines",
          common: "Philippines",
        ),
        tld: const [".ph"],
        code: "PHL",
        codeNumeric: "608",
        codeShort: "PH",
        cioc: "PHI",
        idd: const Idd(root: 6, suffixes: [3]),
        altSpellings: const [
          "PH",
          "Republic of the Philippines",
          "Repúblika ng Pilipinas",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(13, 122),
        areaMetric: 342353,
        emoji: "🇵🇭",
        maps: const Maps(
          googleMaps: "k8T2fb5VMUfsWFX6A",
          openStreetMaps: "relation/443174",
        ),
        population: 109581085,
        gini: const Gini(year: 2018, coefficient: 42.3),
        fifa: "PHI",
        car: const Car(sign: "RP"),
        timezones: const ["UTC+08:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPhp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Manila"),
    latLng: LatLng(14.6, 120.97),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Filipino", male: "Filipino"),
    Demonyms(language: LangFra(), female: "Philippine", male: "Philippin"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of the Philippines",
      common: "Philippines",
    ),
    CountryName(
      language: LangTgl(),
      official: "Republika ng Pilipinas",
      common: "Pilipinas",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangTgl()];
}

extension type const _PhlFactory._(CountryPhl _) implements CountryPhl {
  const _PhlFactory() : this._(const CountryPhl._());
}
