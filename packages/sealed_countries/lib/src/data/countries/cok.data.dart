// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Cook Islands country.
class CountryCok extends WorldCountry {
  /// {@template sealed_world.countries_cok_constructor}}
  /// Creates a instance of [CountryCok] (Cook Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `COK`, ISO 3166-1 Alpha-2 code: `CK`.
  /// {@endtemplate}
  const factory CountryCok() = _CokFactory;

  const CountryCok._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Cook Islands",
          common: "Cook Islands",
        ),
        tld: const [".ck"],
        code: "COK",
        codeNumeric: "184",
        codeShort: "CK",
        cioc: "COK",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [82]),
        altSpellings: const ["CK", "Kūki 'Āirani"],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-21.23333333, -159.76666666),
        areaMetric: 236,
        emoji: "🇨🇰",
        maps: const Maps(
          googleMaps: "nrGZrvWRGB4WHgDC9",
          openStreetMaps: "relation/2184233",
        ),
        population: 18100,
        fifa: "COK",
        car: const Car(sign: "NZ", isRightSide: false),
        timezones: const ["UTC-10:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Avarua"),
    latLng: LatLng(-21.2, -159.77),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Cook Islander",
      male: "Cook Islander",
    ),
    Demonyms(language: LangFra(), female: "Cookienne", male: "Cookien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Cook Islands",
      common: "Cook Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _CokFactory._(CountryCok _) implements CountryCok {
  const _CokFactory() : this._(const CountryCok._());
}
