// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AiaFactory._(CountryAia _) implements CountryAia {
  const _AiaFactory() : this._(const CountryAia._());
}

/// A class that represents the the Anguilla country.
class CountryAia extends WorldCountry {
  /// {@template sealed_world.country_aia_constructor}
  /// Creates a instance of [CountryAia] (Anguilla country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AIA`, ISO 3166-1 Alpha-2 code: `AI`.
  /// {@endtemplate}
  const factory CountryAia() = _AiaFactory;

  const CountryAia._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Anguilla",
          common: "Anguilla",
        ),
        tld: const [".ai"],
        code: "AIA",
        codeNumeric: "660",
        codeShort: "AI",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [264]),
        altSpellings: const ["AI"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.25, -63.16666666),
        areaMetric: 91,
        emoji: "🇦🇮",
        maps: const Maps(
          googleMaps: "3KgLnEyN7amdno2p9",
          openStreetMaps: "relation/2177161",
        ),
        population: 15753,
        fifa: "AIA",
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("The Valley"),
    latLng: LatLng(18.22, -63.05),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Anguillian", male: "Anguillian"),
    Demonyms(language: LangFra(), female: "Anguillane", male: "Anguillan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Anguilla", common: "Anguilla"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
