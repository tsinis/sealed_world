// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Northern Mariana Islands country.
class CountryMnp extends WorldCountry {
  /// {@template sealed_world.countries_mnp_constructor}}
  /// Creates a instance of [CountryMnp] (Northern Mariana Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MNP`, ISO 3166-1 Alpha-2 code: `MP`.
  /// {@endtemplate}
  const factory CountryMnp() = _MnpFactory;

  const CountryMnp._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Commonwealth of the Northern Mariana Islands",
          common: "Northern Mariana Islands",
        ),
        tld: const [".mp"],
        code: "MNP",
        codeNumeric: "580",
        codeShort: "MP",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [670]),
        altSpellings: const [
          "MP",
          "Commonwealth of the Northern Mariana Islands",
          "Sankattan Siha Na Islas Mariånas",
          "Commonwealth Téél Falúw kka Efáng llól Marianas",
        ],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(16.71, 145.78),
        areaMetric: 464,
        emoji: "🇲🇵",
        maps: const Maps(
          googleMaps: "cpZ67knoRAcfu1417",
          openStreetMaps: "relation/306004",
        ),
        population: 47329,
        car: const Car(sign: "USA"),
        timezones: const ["UTC+10:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Saipan"),
    latLng: LatLng(15.19, 145.74),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Northern Mariana Islander",
      male: "Northern Mariana Islander",
    ),
    Demonyms(
      language: LangFra(),
      female: "Nord-Marianaise",
      male: "Nord-Marianais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangCha(),
      official: "Sankattan Siha Na Islas Mariånas",
      common: "Na Islas Mariånas",
    ),
    CountryName(
      language: LangEng(),
      official: "Commonwealth of the Northern Mariana Islands",
      common: "Northern Mariana Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangCha(), LangEng()];
}

extension type const _MnpFactory._(CountryMnp _) implements CountryMnp {
  const _MnpFactory() : this._(const CountryMnp._());
}
