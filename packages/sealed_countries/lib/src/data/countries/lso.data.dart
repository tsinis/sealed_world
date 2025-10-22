// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _LsoFactory._(CountryLso _) implements CountryLso {
  const _LsoFactory() : this._(const CountryLso._());
}

/// A class that represents the the Lesotho country.
class CountryLso extends WorldCountry {
  /// {@template sealed_world.country_lso_constructor}
  /// Creates a instance of [CountryLso] (Lesotho country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LSO`, ISO 3166-1 Alpha-2 code: `LS`.
  /// {@endtemplate}
  const factory CountryLso() = _LsoFactory;

  const CountryLso._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Lesotho",
          common: "Lesotho",
        ),
        tld: const [".ls"],
        code: "LSO",
        codeNumeric: "426",
        codeShort: "LS",
        cioc: "LES",
        idd: const Idd(root: 2, suffixes: [66]),
        altSpellings: const ["LS", "Kingdom of Lesotho", "Muso oa Lesotho"],
        continent: const Africa(),
        subregion: const SouthernAfrica(),
        latLng: const LatLng(-29.5, 28.5),
        landlocked: true,
        bordersCodes: const ["Zaf"],
        areaMetric: 30355,
        emoji: "🇱🇸",
        maps: const Maps(
          googleMaps: "H8gJi5mL4Cmd1SF28",
          openStreetMaps: "relation/2093234",
        ),
        population: 2210646,
        gini: const Gini(year: 2017, coefficient: 44.9),
        fifa: "LES",
        car: const Car(sign: "LS", isRightSide: false),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "###",
          regExpPattern: r"^(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatLsl(), FiatZar()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Maseru"),
    latLng: LatLng(-29.32, 27.48),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mosotho", male: "Mosotho"),
    Demonyms(language: LangFra(), female: "Lésothienne", male: "Lésothien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Kingdom of Lesotho",
      common: "Lesotho",
    ),
    CountryName(
      language: LangSot(),
      official: "Muso oa Lesotho",
      common: "Lesotho",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSot()];
}
