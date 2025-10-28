// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _NiuFactory._(CountryNiu _) implements CountryNiu {
  const _NiuFactory() : this._(const CountryNiu._());
}

/// A class that represents the Niue country.
class CountryNiu extends WorldCountry {
  /// {@template sealed_world.country_niu_constructor}
  /// Creates a instance of [CountryNiu] (Niue country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NIU`, ISO 3166-1 Alpha-2 code: `NU`.
  /// {@endtemplate}
  const factory CountryNiu() = _NiuFactory;

  const CountryNiu._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Niue",
          common: "Niue",
        ),
        tld: const [".nu"],
        code: "NIU",
        codeNumeric: "570",
        codeShort: "NU",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [83]),
        altSpellings: const ["NU"],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-19.03333333, -169.86666666),
        areaMetric: 260,
        emoji: "🇳🇺",
        maps: const Maps(
          googleMaps: "xFgdzs3E55Rk1y8P9",
          openStreetMaps: "relation/1558556",
        ),
        population: 1470,
        car: const Car(sign: "NZ", isRightSide: false),
        timezones: const ["UTC-11:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Alofi"),
    latLng: LatLng(-19.02, -169.92),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Niuean", male: "Niuean"),
    Demonyms(language: LangFra(), female: "Niuéenne", male: "Niuéen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Niue", common: "Niue"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
