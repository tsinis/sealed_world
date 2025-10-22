// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PerFactory._(CountryPer _) implements CountryPer {
  const _PerFactory() : this._(const CountryPer._());
}

/// A class that represents the the Peru country.
class CountryPer extends WorldCountry {
  /// {@template sealed_world.country_per_constructor}
  /// Creates a instance of [CountryPer] (Peru country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PER`, ISO 3166-1 Alpha-2 code: `PE`.
  /// {@endtemplate}
  const factory CountryPer() = _PerFactory;

  const CountryPer._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Peru",
          common: "Peru",
        ),
        tld: const [".pe"],
        code: "PER",
        codeNumeric: "604",
        codeShort: "PE",
        cioc: "PER",
        idd: const Idd(root: 5, suffixes: [1]),
        altSpellings: const ["PE", "Republic of Peru", "República del Perú"],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-10, -76),
        bordersCodes: const ["Bol", "Bra", "Chl", "Col", "Ecu"],
        areaMetric: 1285216,
        emoji: "🇵🇪",
        maps: const Maps(
          googleMaps: "uDWEUaXNcZTng1fP6",
          openStreetMaps: "relation/288247",
        ),
        population: 32971846,
        gini: const Gini(year: 2019, coefficient: 41.5),
        fifa: "PER",
        car: const Car(sign: "PE"),
        timezones: const ["UTC-05:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPen()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Lima"),
    latLng: LatLng(-12.05, -77.05),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocPA(), BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Peruvian", male: "Peruvian"),
    Demonyms(language: LangFra(), female: "Péruvienne", male: "Péruvien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangAym(), official: "Piruw Suyu", common: "Piruw"),
    CountryName(
      language: LangQue(),
      official: "Piruw Ripuwlika",
      common: "Piruw",
    ),
    CountryName(
      language: LangSpa(),
      official: "República del Perú",
      common: "Perú",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangAym(),
    LangQue(),
    LangSpa(),
  ];
}
