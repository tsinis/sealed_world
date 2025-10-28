// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PolFactory._(CountryPol _) implements CountryPol {
  const _PolFactory() : this._(const CountryPol._());
}

/// A class that represents the Poland country.
class CountryPol extends WorldCountry {
  /// {@template sealed_world.country_pol_constructor}
  /// Creates a instance of [CountryPol] (Poland country).
  ///
  /// ISO 3166-1 Alpha-3 code: `POL`, ISO 3166-1 Alpha-2 code: `PL`.
  /// {@endtemplate}
  const factory CountryPol() = _PolFactory;

  const CountryPol._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Poland",
          common: "Poland",
        ),
        tld: const [".pl"],
        code: "POL",
        codeNumeric: "616",
        codeShort: "PL",
        cioc: "POL",
        idd: const Idd(root: 4, suffixes: [8]),
        altSpellings: const [
          "PL",
          "Republic of Poland",
          "Rzeczpospolita Polska",
        ],
        continent: const Europe(),
        subregion: const CentralEurope(),
        latLng: const LatLng(52, 20),
        bordersCodes: const ["Blr", "Cze", "Deu", "Ltu", "Rus", "Svk", "Ukr"],
        areaMetric: 312679,
        emoji: "🇵🇱",
        maps: const Maps(
          googleMaps: "gY9Xw4Sf4415P4949",
          openStreetMaps: "relation/49715",
        ),
        population: 37950802,
        gini: const Gini(year: 2018, coefficient: 30.2),
        fifa: "POL",
        car: const Car(sign: "PL"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(format: "##-###"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPln()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Warsaw"), latLng: LatLng(52.25, 21));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Polish", male: "Polish"),
    Demonyms(language: LangFra(), female: "Polonaise", male: "Polonais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPol(),
      official: "Rzeczpospolita Polska",
      common: "Polska",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPol()];
}
