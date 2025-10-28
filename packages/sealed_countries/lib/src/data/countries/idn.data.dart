// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _IdnFactory._(CountryIdn _) implements CountryIdn {
  const _IdnFactory() : this._(const CountryIdn._());
}

/// A class that represents the Indonesia country.
class CountryIdn extends WorldCountry {
  /// {@template sealed_world.country_idn_constructor}
  /// Creates a instance of [CountryIdn] (Indonesia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IDN`, ISO 3166-1 Alpha-2 code: `ID`.
  /// {@endtemplate}
  const factory CountryIdn() = _IdnFactory;

  const CountryIdn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Indonesia",
          common: "Indonesia",
        ),
        tld: const [".id"],
        code: "IDN",
        codeNumeric: "360",
        codeShort: "ID",
        cioc: "INA",
        idd: const Idd(root: 6, suffixes: [2]),
        altSpellings: const [
          "ID",
          "Republic of Indonesia",
          "Republik Indonesia",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(-5, 120),
        bordersCodes: const ["Tls", "Mys", "Png"],
        areaMetric: 1904569,
        emoji: "🇮🇩",
        maps: const Maps(
          googleMaps: "9gfPupm5bffixiFJ6",
          openStreetMaps: "relation/21335",
        ),
        population: 284973643,
        gini: const Gini(year: 2019, coefficient: 38.2),
        fifa: "IDN",
        car: const Car(sign: "RI", isRightSide: false),
        timezones: const ["UTC+07:00", "UTC+08:00", "UTC+09:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatIdr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nusantara"),
    latLng: LatLng(-6.17, 106.82),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Indonesian", male: "Indonesian"),
    Demonyms(language: LangFra(), female: "Indonésienne", male: "Indonésien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangInd(),
      official: "Republik Indonesia",
      common: "Indonesia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangInd()];
}
