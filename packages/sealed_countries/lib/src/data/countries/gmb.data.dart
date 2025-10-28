// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GmbFactory._(CountryGmb _) implements CountryGmb {
  const _GmbFactory() : this._(const CountryGmb._());
}

/// A class that represents the Gambia country.
class CountryGmb extends WorldCountry {
  /// {@template sealed_world.country_gmb_constructor}
  /// Creates a instance of [CountryGmb] (Gambia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GMB`, ISO 3166-1 Alpha-2 code: `GM`.
  /// {@endtemplate}
  const factory CountryGmb() = _GmbFactory;

  const CountryGmb._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Gambia",
          common: "Gambia",
        ),
        tld: const [".gm"],
        code: "GMB",
        codeNumeric: "270",
        codeShort: "GM",
        cioc: "GAM",
        idd: const Idd(root: 2, suffixes: [20]),
        altSpellings: const ["GM", "Republic of the Gambia"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(13.46666666, -16.56666666),
        bordersCodes: const ["Sen"],
        areaMetric: 10689,
        emoji: "🇬🇲",
        maps: const Maps(
          googleMaps: "bbGBCxxtfD2A9Z4m6",
          openStreetMaps: "relation/192774",
        ),
        population: 2422712,
        gini: const Gini(year: 2015, coefficient: 35.9),
        fifa: "GAM",
        car: const Car(sign: "WAG"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGmd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Banjul"),
    latLng: LatLng(13.45, -16.57),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Gambian", male: "Gambian"),
    Demonyms(language: LangFra(), female: "Gambienne", male: "Gambien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of the Gambia",
      common: "Gambia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
