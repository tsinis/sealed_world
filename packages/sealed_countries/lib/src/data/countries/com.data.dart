// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Comoros country.
class CountryCom extends WorldCountry {
  /// {@template sealed_world.countries_com_constructor}}
  /// Creates a instance of [CountryCom] (Comoros country).
  ///
  /// ISO 3166-1 Alpha-3 code: `COM`, ISO 3166-1 Alpha-2 code: `KM`.
  /// {@endtemplate}
  const factory CountryCom() = _ComFactory;

  const CountryCom._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Union of the Comoros",
          common: "Comoros",
        ),
        tld: const [".km"],
        code: "COM",
        codeNumeric: "174",
        codeShort: "KM",
        cioc: "COM",
        idd: const Idd(root: 2, suffixes: [69]),
        altSpellings: const [
          "KM",
          "Union of the Comoros",
          "Union des Comores",
          "Udzima wa Komori",
          "al-Ittiḥād al-Qumurī",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-12.16666666, 44.25),
        areaMetric: 1862,
        emoji: "🇰🇲",
        maps: const Maps(
          googleMaps: "eas4GP28C1GyStnu6",
          openStreetMaps: "relation/535790",
        ),
        population: 869595,
        gini: const Gini(year: 2014, coefficient: 45.3),
        fifa: "COM",
        car: const Car(sign: "COM"),
        timezones: const ["UTC+03:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKmf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Moroni"),
    latLng: LatLng(-11.7, 43.23),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Comoran", male: "Comoran"),
    Demonyms(language: LangFra(), female: "Comorienne", male: "Comorien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الاتحاد القمري",
      common: "القمر‎",
    ),
    CountryName(
      language: LangFra(),
      official: "Union des Comores",
      common: "Comores",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangFra()];
}

extension type const _ComFactory._(CountryCom _) implements CountryCom {
  const _ComFactory() : this._(const CountryCom._());
}
