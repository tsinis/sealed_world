// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Suriname country.
class CountrySur extends WorldCountry {
  /// {@template sealed_world.countries_sur_constructor}}
  /// Creates a instance of [CountrySur] (Suriname country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SUR`, ISO 3166-1 Alpha-2 code: `SR`.
  /// {@endtemplate}
  const factory CountrySur() = _SurFactory;

  const CountrySur._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Suriname",
          common: "Suriname",
        ),
        tld: const [".sr"],
        code: "SUR",
        codeNumeric: "740",
        codeShort: "SR",
        cioc: "SUR",
        idd: const Idd(root: 5, suffixes: [97]),
        altSpellings: const [
          "SR",
          "Sarnam",
          "Sranangron",
          "Republic of Suriname",
          "Republiek Suriname",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(4, -56),
        bordersCodes: const ["Bra", "Guf", "Guy"],
        areaMetric: 163820,
        emoji: "🇸🇷",
        maps: const Maps(
          googleMaps: "iy7TuQLSi4qgoBoG7",
          openStreetMaps: "relation/287082",
        ),
        population: 586634,
        gini: const Gini(year: 1999, coefficient: 57.9),
        fifa: "SUR",
        car: const Car(sign: "SME", isRightSide: false),
        timezones: const ["UTC-03:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSrd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Paramaribo"),
    latLng: LatLng(5.83, -55.17),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM(), BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Surinamer", male: "Surinamer"),
    Demonyms(language: LangFra(), female: "Surinamaise", male: "Surinamais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNld(),
      official: "Republiek Suriname",
      common: "Suriname",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNld()];
}

extension type const _SurFactory._(CountrySur _) implements CountrySur {
  const _SurFactory() : this._(const CountrySur._());
}
