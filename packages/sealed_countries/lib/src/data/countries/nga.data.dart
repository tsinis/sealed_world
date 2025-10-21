// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Nigeria country.
class CountryNga extends WorldCountry {
  /// {@template sealed_world.countries_nga_constructor}}
  /// Creates a instance of [CountryNga] (Nigeria country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NGA`, ISO 3166-1 Alpha-2 code: `NG`.
  /// {@endtemplate}
  const factory CountryNga() = _NgaFactory;

  const CountryNga._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Federal Republic of Nigeria",
          common: "Nigeria",
        ),
        tld: const [".ng"],
        code: "NGA",
        codeNumeric: "566",
        codeShort: "NG",
        cioc: "NGR",
        idd: const Idd(root: 2, suffixes: [34]),
        altSpellings: const [
          "NG",
          "Nijeriya",
          "Naíjíríà",
          "Federal Republic of Nigeria",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(10, 8),
        bordersCodes: const ["Ben", "Cmr", "Tcd", "Ner"],
        areaMetric: 923768,
        emoji: "🇳🇬",
        maps: const Maps(
          googleMaps: "LTn417qWwBPFszuV9",
          openStreetMaps: "relation/192787",
        ),
        population: 206139587,
        gini: const Gini(year: 2018, coefficient: 35.1),
        fifa: "NGA",
        car: const Car(sign: "WAN"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNgn()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Abuja"), latLng: LatLng(9.08, 7.53));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Nigerian", male: "Nigerian"),
    Demonyms(language: LangFra(), female: "Nigériane", male: "Nigérian"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Federal Republic of Nigeria",
      common: "Nigeria",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _NgaFactory._(CountryNga _) implements CountryNga {
  const _NgaFactory() : this._(const CountryNga._());
}
