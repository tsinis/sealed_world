// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _CypFactory._(CountryCyp _) implements CountryCyp {
  const _CypFactory() : this._(const CountryCyp._());
}

/// A class that represents the Cyprus country.
class CountryCyp extends WorldCountry {
  /// {@template sealed_world.country_cyp_constructor}
  /// Creates a instance of [CountryCyp] (Cyprus country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CYP`, ISO 3166-1 Alpha-2 code: `CY`.
  /// {@endtemplate}
  const factory CountryCyp() = _CypFactory;

  const CountryCyp._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Cyprus",
          common: "Cyprus",
        ),
        tld: const [".cy"],
        code: "CYP",
        codeNumeric: "196",
        codeShort: "CY",
        cioc: "CYP",
        idd: const Idd(root: 3, suffixes: [57]),
        altSpellings: const [
          "CY",
          "Kýpros",
          "Kıbrıs",
          "Republic of Cyprus",
          "Κυπριακή Δημοκρατία",
          "Kıbrıs Cumhuriyeti",
        ],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(35, 33),
        areaMetric: 9251,
        emoji: "🇨🇾",
        maps: const Maps(
          googleMaps: "77hPBRdLid8yD5Bm7",
          openStreetMaps: "relation/307787",
        ),
        population: 923272,
        gini: const Gini(year: 2018, coefficient: 32.7),
        fifa: "CYP",
        car: const Car(sign: "CY", isRightSide: false),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nicosia"),
    latLng: LatLng(35.17, 33.37),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Cypriot", male: "Cypriot"),
    Demonyms(language: LangFra(), female: "Chypriote", male: "Chypriote"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEll(),
      official: "Κυπριακή Δημοκρατία",
      common: "Κύπρος",
    ),
    CountryName(
      language: LangTur(),
      official: "Kıbrıs Cumhuriyeti",
      common: "Kıbrıs",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEll(), LangTur()];
}
