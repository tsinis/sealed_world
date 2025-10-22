// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GnbFactory._(CountryGnb _) implements CountryGnb {
  const _GnbFactory() : this._(const CountryGnb._());
}

/// A class that represents the Guinea-Bissau country.
class CountryGnb extends WorldCountry {
  /// {@template sealed_world.country_gnb_constructor}
  /// Creates a instance of [CountryGnb] (Guinea-Bissau country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GNB`, ISO 3166-1 Alpha-2 code: `GW`.
  /// {@endtemplate}
  const factory CountryGnb() = _GnbFactory;

  const CountryGnb._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Guinea-Bissau",
          common: "Guinea-Bissau",
        ),
        tld: const [".gw"],
        code: "GNB",
        codeNumeric: "624",
        codeShort: "GW",
        cioc: "GBS",
        unMember: false,
        idd: const Idd(root: 2, suffixes: [45]),
        altSpellings: const [
          "GW",
          "Republic of Guinea-Bissau",
          "República da Guiné-Bissau",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(12, -15),
        bordersCodes: const ["Gin", "Sen"],
        areaMetric: 36125,
        emoji: "🇬🇼",
        maps: const Maps(
          googleMaps: "5Wyaz17miUc1zLc67",
          openStreetMaps: "relation/192776",
        ),
        population: 2080000,
        gini: const Gini(year: 2010, coefficient: 50.7),
        fifa: "GNB",
        car: const Car(sign: "RGB"),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bissau"),
    latLng: LatLng(11.85, -15.58),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Guinea-Bissauan",
      male: "Guinea-Bissauan",
    ),
    Demonyms(
      language: LangFra(),
      female: "Bissau-Guinéenne",
      male: "Bissau-Guinéen",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República da Guiné-Bissau",
      common: "Guiné-Bissau",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
