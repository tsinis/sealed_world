// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _ZmbFactory._(CountryZmb _) implements CountryZmb {
  const _ZmbFactory() : this._(const CountryZmb._());
}

/// A class that represents the Zambia country.
class CountryZmb extends WorldCountry {
  /// {@template sealed_world.country_zmb_constructor}
  /// Creates a instance of [CountryZmb] (Zambia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ZMB`, ISO 3166-1 Alpha-2 code: `ZM`.
  /// {@endtemplate}
  const factory CountryZmb() = _ZmbFactory;

  const CountryZmb._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Zambia",
          common: "Zambia",
        ),
        tld: const [".zm"],
        code: "ZMB",
        codeNumeric: "894",
        codeShort: "ZM",
        cioc: "ZAM",
        idd: const Idd(root: 2, suffixes: [60]),
        altSpellings: const ["ZM", "Republic of Zambia"],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-15, 30),
        landlocked: true,
        bordersCodes: const [
          "Ago",
          "Bwa",
          "Cod",
          "Mwi",
          "Moz",
          "Nam",
          "Tza",
          "Zwe",
        ],
        areaMetric: 752612,
        emoji: "🇿🇲",
        maps: const Maps(
          googleMaps: "mweBcqvW8TppZW6q9",
          openStreetMaps: "relation/195271",
        ),
        population: 18383956,
        gini: const Gini(year: 2015, coefficient: 57.1),
        fifa: "ZAM",
        car: const Car(sign: "RNR", isRightSide: false),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatZmw()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Lusaka"),
    latLng: LatLng(-15.42, 28.28),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Zambian", male: "Zambian"),
    Demonyms(language: LangFra(), female: "Zambienne", male: "Zambien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Zambia",
      common: "Zambia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
