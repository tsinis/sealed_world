// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _PrkFactory._(CountryPrk _) implements CountryPrk {
  const new() : this._(const CountryPrk._());
}

/// A class that represents the North Korea country.
class CountryPrk extends WorldCountry {
  /// {@template sealed_world.country_prk_constructor}
  /// Creates a instance of [CountryPrk] (North Korea country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PRK`, ISO 3166-1 Alpha-2 code: `KP`.
  /// {@endtemplate}
  const factory() = _PrkFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Democratic People's Republic of Korea",
          common: "North Korea",
        ),
        tld: const [".kp"],
        code: "PRK",
        codeNumeric: "408",
        codeShort: "KP",
        cioc: "PRK",
        idd: const Idd(root: 8, suffixes: [50]),
        altSpellings: const [
          "KP",
          "Democratic People's Republic of Korea",
          "DPRK",
          "조선민주주의인민공화국",
          "Chosŏn Minjujuŭi Inmin Konghwaguk",
          "Korea, Democratic People's Republic of",
          "북한",
          "북조선",
        ],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(40, 127),
        bordersCodes: const ["Chn", "Kor", "Rus"],
        areaMetric: 120538,
        emoji: "🇰🇵",
        maps: const Maps(
          googleMaps: "9q5T2DMeH5JL7Tky6",
          openStreetMaps: "relation/192734",
        ),
        population: 25778815,
        fifa: "PRK",
        car: const Car(),
        timezones: const ["UTC+09:00"],
        postalCode: const PostalCode(
          format: "###-###",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKpw()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Pyongyang"),
    latLng: LatLng(39.02, 125.75),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "North Korean", male: "North Korean"),
    Demonyms(language: LangFra(), female: "Nord-coréenne", male: "Nord-coréen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangKor(), official: "조선민주주의인민공화국", common: "조선"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKor()];
}
