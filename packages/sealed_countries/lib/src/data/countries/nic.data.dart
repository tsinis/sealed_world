// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _NicFactory._(CountryNic _) implements CountryNic {
  const _NicFactory() : this._(const CountryNic._());
}

/// A class that represents the the Nicaragua country.
class CountryNic extends WorldCountry {
  /// {@template sealed_world.country_nic_constructor}
  /// Creates a instance of [CountryNic] (Nicaragua country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NIC`, ISO 3166-1 Alpha-2 code: `NI`.
  /// {@endtemplate}
  const factory CountryNic() = _NicFactory;

  const CountryNic._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Nicaragua",
          common: "Nicaragua",
        ),
        tld: const [".ni"],
        code: "NIC",
        codeNumeric: "558",
        codeShort: "NI",
        cioc: "NCA",
        idd: const Idd(root: 50, suffixes: [5]),
        altSpellings: const [
          "NI",
          "Republic of Nicaragua",
          "República de Nicaragua",
        ],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(13, -85),
        bordersCodes: const ["Cri", "Hnd"],
        areaMetric: 130373,
        emoji: "🇳🇮",
        maps: const Maps(
          googleMaps: "P77LaEVkKJKXneRC6",
          openStreetMaps: "relation/287666",
        ),
        population: 6624554,
        gini: const Gini(year: 2014, coefficient: 46.2),
        fifa: "NCA",
        car: const Car(sign: "NIC"),
        timezones: const ["UTC-06:00"],
        postalCode: const PostalCode(
          format: "###-###-#",
          regExpPattern: r"^(\d{7})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNio()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Managua"),
    latLng: LatLng(12.13, -86.25),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Nicaraguan", male: "Nicaraguan"),
    Demonyms(
      language: LangFra(),
      female: "Nicaraguayenne",
      male: "Nicaraguayen",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Nicaragua",
      common: "Nicaragua",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
