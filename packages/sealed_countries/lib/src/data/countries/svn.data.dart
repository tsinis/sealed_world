// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SvnFactory._(CountrySvn _) implements CountrySvn {
  const _SvnFactory() : this._(const CountrySvn._());
}

/// A class that represents the the Slovenia country.
class CountrySvn extends WorldCountry {
  /// {@template sealed_world.country_svn_constructor}
  /// Creates a instance of [CountrySvn] (Slovenia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SVN`, ISO 3166-1 Alpha-2 code: `SI`.
  /// {@endtemplate}
  const factory CountrySvn() = _SvnFactory;

  const CountrySvn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Slovenia",
          common: "Slovenia",
        ),
        tld: const [".si"],
        code: "SVN",
        codeNumeric: "705",
        codeShort: "SI",
        cioc: "SLO",
        idd: const Idd(root: 3, suffixes: [86]),
        altSpellings: const [
          "SI",
          "Republic of Slovenia",
          "Republika Slovenija",
        ],
        continent: const Europe(),
        subregion: const CentralEurope(),
        latLng: const LatLng(46.11666666, 14.81666666),
        bordersCodes: const ["Aut", "Hrv", "Ita", "Hun"],
        areaMetric: 20273,
        emoji: "🇸🇮",
        maps: const Maps(
          googleMaps: "7zgFmswcCJh5L5D49",
          openStreetMaps: "relation/218657",
        ),
        population: 2100126,
        gini: const Gini(year: 2018, coefficient: 24.6),
        fifa: "SVN",
        car: const Car(sign: "SLO"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "SI- ####",
          regExpPattern: r"^(?:SI)*(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ljubljana"),
    latLng: LatLng(46.05, 14.52),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Slovene", male: "Slovene"),
    Demonyms(language: LangFra(), female: "Slovène", male: "Slovène"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSlv(),
      official: "Republika Slovenija",
      common: "Slovenija",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSlv()];
}
