// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MkdFactory._(CountryMkd _) implements CountryMkd {
  const _MkdFactory() : this._(const CountryMkd._());
}

/// A class that represents the the North Macedonia country.
class CountryMkd extends WorldCountry {
  /// {@template sealed_world.country_mkd_constructor}
  /// Creates a instance of [CountryMkd] (North Macedonia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MKD`, ISO 3166-1 Alpha-2 code: `MK`.
  /// {@endtemplate}
  const factory CountryMkd() = _MkdFactory;

  const CountryMkd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of North Macedonia",
          common: "North Macedonia",
        ),
        tld: const [".mk"],
        code: "MKD",
        codeNumeric: "807",
        codeShort: "MK",
        cioc: "MKD",
        idd: const Idd(root: 3, suffixes: [89]),
        altSpellings: const [
          "MK",
          "The former Yugoslav Republic of Macedonia",
          "Republic of North Macedonia",
          "Macedonia, The Former Yugoslav Republic of",
          "Република Северна Македонија",
        ],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(41.83333333, 22),
        landlocked: true,
        bordersCodes: const ["Alb", "Bgr", "Grc", "Srb", "Unk"],
        areaMetric: 25713,
        emoji: "🇲🇰",
        maps: const Maps(
          googleMaps: "55Q8MEnF6ACdu3q79",
          openStreetMaps: "relation/53293",
        ),
        population: 1836713,
        gini: const Gini(year: 2018, coefficient: 33),
        fifa: "MKD",
        car: const Car(sign: "MK"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMkd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Skopje"),
    latLng: LatLng(42, 21.43),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Macedonian", male: "Macedonian"),
    Demonyms(language: LangFra(), female: "Macédonienne", male: "Macédonien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangMkd(),
      official: "Република Северна Македонија",
      common: "Македонија",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangMkd(), LangSqi()];
}
