// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SweFactory._(CountrySwe _) implements CountrySwe {
  const _SweFactory() : this._(const CountrySwe._());
}

/// A class that represents the Sweden country.
class CountrySwe extends WorldCountry {
  /// {@template sealed_world.country_swe_constructor}
  /// Creates a instance of [CountrySwe] (Sweden country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SWE`, ISO 3166-1 Alpha-2 code: `SE`.
  /// {@endtemplate}
  const factory CountrySwe() = _SweFactory;

  const CountrySwe._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Sweden",
          common: "Sweden",
        ),
        tld: const [".se"],
        code: "SWE",
        codeNumeric: "752",
        codeShort: "SE",
        cioc: "SWE",
        idd: const Idd(root: 4, suffixes: [6]),
        altSpellings: const ["SE", "Kingdom of Sweden", "Konungariket Sverige"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(62, 15),
        bordersCodes: const ["Fin", "Nor"],
        areaMetric: 450295,
        emoji: "🇸🇪",
        maps: const Maps(
          googleMaps: "iqygE491ADVgnBW39",
          openStreetMaps: "relation/52822",
        ),
        population: 10353442,
        gini: const Gini(year: 2018, coefficient: 30),
        fifa: "SWE",
        car: const Car(sign: "S"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "SE-### ##",
          regExpPattern: r"^(?:SE)*(\d{5})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSek()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Stockholm"),
    latLng: LatLng(59.33, 18.05),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Swedish", male: "Swedish"),
    Demonyms(language: LangFra(), female: "Suédoise", male: "Suédois"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSwe(),
      official: "Konungariket Sverige",
      common: "Sverige",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSwe()];
}
