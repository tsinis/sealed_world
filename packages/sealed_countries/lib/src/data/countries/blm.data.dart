// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _BlmFactory._(CountryBlm _) implements CountryBlm {
  const new() : this._(const CountryBlm._());
}

/// A class that represents the Saint Barthélemy country.
class CountryBlm extends WorldCountry {
  /// {@template sealed_world.country_blm_constructor}
  /// Creates a instance of [CountryBlm] (Saint Barthélemy country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BLM`, ISO 3166-1 Alpha-2 code: `BL`.
  /// {@endtemplate}
  const factory() = _BlmFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Collectivity of Saint Barthélemy",
          common: "Saint Barthélemy",
        ),
        tld: const [".bl"],
        code: "BLM",
        codeNumeric: "652",
        codeShort: "BL",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [90]),
        altSpellings: const [
          "BL",
          "St. Barthelemy",
          "Collectivity of Saint Barthélemy",
          "Collectivité de Saint-Barthélemy",
        ],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.5, -63.41666666),
        areaMetric: 25,
        emoji: "🇧🇱",
        maps: const Maps(
          googleMaps: "Mc7GqH466S7AAk297",
          openStreetMaps: "relation/7552779",
        ),
        population: 9961,
        car: const Car(sign: "F"),
        timezones: const ["UTC-04:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Gustavia"),
    latLng: LatLng(17.88, -62.85),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Saint Barthélemy Islander",
      male: "Saint Barthélemy Islander",
    ),
    Demonyms(
      language: LangFra(),
      female: "Barthéloméenne",
      male: "Barthéloméen",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Collectivité de Saint-Barthélemy",
      common: "Saint-Barthélemy",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
