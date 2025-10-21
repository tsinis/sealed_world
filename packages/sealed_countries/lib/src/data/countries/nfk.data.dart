// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Norfolk Island country.
class CountryNfk extends WorldCountry {
  /// {@template sealed_world.countries_nfk_constructor}}
  /// Creates a instance of [CountryNfk] (Norfolk Island country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NFK`, ISO 3166-1 Alpha-2 code: `NF`.
  /// {@endtemplate}
  const factory CountryNfk() = _NfkFactory;

  const CountryNfk._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Territory of Norfolk Island",
          common: "Norfolk Island",
        ),
        tld: const [".nf"],
        code: "NFK",
        codeNumeric: "574",
        codeShort: "NF",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [72]),
        altSpellings: const [
          "NF",
          "Territory of Norfolk Island",
          "Teratri of Norf'k Ailen",
        ],
        continent: const Oceania(),
        subregion: const AustraliaAndNewZealand(),
        latLng: const LatLng(-29.03333333, 167.95),
        areaMetric: 36,
        emoji: "🇳🇫",
        maps: const Maps(
          googleMaps: "pbvtm6XYd1iZbjky5",
          openStreetMaps: "relation/2574988",
        ),
        population: 2302,
        car: const Car(sign: "AUS", isRightSide: false),
        timezones: const ["UTC+11:30"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kingston"),
    latLng: LatLng(-29.05, 167.97),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Norfolk Islander",
      male: "Norfolk Islander",
    ),
    Demonyms(language: LangFra(), female: "Norfolkaise", male: "Norfolkais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Territory of Norfolk Island",
      common: "Norfolk Island",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _NfkFactory._(CountryNfk _) implements CountryNfk {
  const _NfkFactory() : this._(const CountryNfk._());
}
