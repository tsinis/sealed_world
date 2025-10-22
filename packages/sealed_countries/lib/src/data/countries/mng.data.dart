// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MngFactory._(CountryMng _) implements CountryMng {
  const _MngFactory() : this._(const CountryMng._());
}

/// A class that represents the Mongolia country.
class CountryMng extends WorldCountry {
  /// {@template sealed_world.country_mng_constructor}
  /// Creates a instance of [CountryMng] (Mongolia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MNG`, ISO 3166-1 Alpha-2 code: `MN`.
  /// {@endtemplate}
  const factory CountryMng() = _MngFactory;

  const CountryMng._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Mongolia",
          common: "Mongolia",
        ),
        tld: const [".mn", ".мон"],
        code: "MNG",
        codeNumeric: "496",
        codeShort: "MN",
        cioc: "MGL",
        idd: const Idd(root: 9, suffixes: [76]),
        altSpellings: const ["MN"],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(48, 106),
        landlocked: true,
        bordersCodes: const ["Chn", "Rus"],
        areaMetric: 1564116,
        emoji: "🇲🇳",
        maps: const Maps(
          googleMaps: "A1X7bMCKThBDNjzH6",
          openStreetMaps: "relation/161033",
        ),
        population: 3504741,
        gini: const Gini(year: 2018, coefficient: 32.7),
        fifa: "MNG",
        car: const Car(sign: "MGL"),
        timezones: const ["UTC+07:00", "UTC+08:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMnt()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ulaanbaatar"),
    latLng: LatLng(47.91, 106.88),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mongolian", male: "Mongolian"),
    Demonyms(language: LangFra(), female: "Mongole", male: "Mongol"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangMon(),
      official: "Монгол улс",
      common: "Монгол улс",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangMon()];
}
