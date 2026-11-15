// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _PyfFactory._(CountryPyf _) implements CountryPyf {
  const new() : this._(const CountryPyf._());
}

/// A class that represents the French Polynesia country.
class CountryPyf extends WorldCountry {
  /// {@template sealed_world.country_pyf_constructor}
  /// Creates a instance of [CountryPyf] (French Polynesia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PYF`, ISO 3166-1 Alpha-2 code: `PF`.
  /// {@endtemplate}
  const factory() = _PyfFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "French Polynesia",
          common: "French Polynesia",
        ),
        tld: const [".pf"],
        code: "PYF",
        codeNumeric: "258",
        codeShort: "PF",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [89]),
        altSpellings: const [
          "PF",
          "Polynésie française",
          "French Polynesia",
          "Pōrīnetia Farāni",
        ],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-17.6797, -149.4068),
        areaMetric: 4167,
        emoji: "🇵🇫",
        maps: const Maps(
          googleMaps: "xgg6BQTRyeQg4e1m6",
          openStreetMaps: "relation/3412620",
        ),
        population: 280904,
        car: const Car(sign: "F"),
        timezones: const ["UTC-10:00", "UTC-09:30", "UTC-09:00"],
        postalCode: const PostalCode(regExpPattern: r"^((97|98)7\d{2})$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXpf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Papeetē"),
    latLng: LatLng(-17.53, -149.56),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "French Polynesian",
      male: "French Polynesian",
    ),
    Demonyms(language: LangFra(), female: "Polynésienne", male: "Polynésien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Polynésie française",
      common: "Polynésie française",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
