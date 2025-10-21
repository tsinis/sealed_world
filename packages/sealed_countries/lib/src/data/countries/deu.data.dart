// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Germany country.
class CountryDeu extends WorldCountry {
  /// {@template sealed_world.countries_deu_constructor}}
  /// Creates a instance of [CountryDeu] (Germany country).
  ///
  /// ISO 3166-1 Alpha-3 code: `DEU`, ISO 3166-1 Alpha-2 code: `DE`.
  /// {@endtemplate}
  const factory CountryDeu() = _DeuFactory;

  const CountryDeu._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Federal Republic of Germany",
          common: "Germany",
        ),
        tld: const [".de"],
        code: "DEU",
        codeNumeric: "276",
        codeShort: "DE",
        cioc: "GER",
        idd: const Idd(root: 4, suffixes: [9]),
        altSpellings: const [
          "DE",
          "Federal Republic of Germany",
          "Bundesrepublik Deutschland",
        ],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(51, 9),
        bordersCodes: const [
          "Aut",
          "Bel",
          "Cze",
          "Dnk",
          "Fra",
          "Lux",
          "Nld",
          "Pol",
          "Che",
        ],
        areaMetric: 357114,
        emoji: "🇩🇪",
        maps: const Maps(
          googleMaps: "mD9FBMq1nvXUBrkv6",
          openStreetMaps: "relation/51477",
        ),
        population: 82719540,
        gini: const Gini(year: 2016, coefficient: 31.9),
        fifa: "GER",
        car: const Car(sign: "D"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Berlin"),
    latLng: LatLng(52.52, 13.4),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "German", male: "German"),
    Demonyms(language: LangFra(), female: "Allemande", male: "Allemand"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDeu(),
      official: "Bundesrepublik Deutschland",
      common: "Deutschland",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDeu()];
}

extension type const _DeuFactory._(CountryDeu _) implements CountryDeu {
  const _DeuFactory() : this._(const CountryDeu._());
}
