// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Saint Pierre and Miquelon country.
class CountrySpm extends WorldCountry {
  /// {@template sealed_world.countries_spm_constructor}}
  /// Creates a instance of [CountrySpm] (Saint Pierre and Miquelon country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SPM`, ISO 3166-1 Alpha-2 code: `PM`.
  /// {@endtemplate}
  const factory CountrySpm() = _SpmFactory;

  const CountrySpm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Saint Pierre and Miquelon",
          common: "Saint Pierre and Miquelon",
        ),
        tld: const [".pm"],
        code: "SPM",
        codeNumeric: "666",
        codeShort: "PM",
        independent: false,
        unMember: false,
        idd: const Idd(root: 50, suffixes: [8]),
        altSpellings: const [
          "PM",
          "Collectivité territoriale de Saint-Pierre-et-Miquelon",
        ],
        continent: const Americas(),
        subregion: const NorthAmerica(),
        latLng: const LatLng(46.83333333, -56.33333333),
        areaMetric: 242,
        emoji: "🇵🇲",
        maps: const Maps(
          googleMaps: "bUM8Yc8pA8ghyhmt6",
          openStreetMaps: "relation/3406826",
        ),
        population: 6069,
        car: const Car(sign: "F"),
        timezones: const ["UTC-03:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(regExpPattern: r"^(97500)$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Saint-Pierre"),
    latLng: LatLng(46.77, -56.18),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Saint-Pierrais, Miquelonnais",
      male: "Saint-Pierrais, Miquelonnais",
    ),
    Demonyms(
      language: LangFra(),
      female: "Saint-Pierraise, Miquelonaise",
      male: "Saint-Pierrais, Miquelonais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Collectivité territoriale de Saint-Pierre-et-Miquelon",
      common: "Saint-Pierre-et-Miquelon",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _SpmFactory._(CountrySpm _) implements CountrySpm {
  const _SpmFactory() : this._(const CountrySpm._());
}
