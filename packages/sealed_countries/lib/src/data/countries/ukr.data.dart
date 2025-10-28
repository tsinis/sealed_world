// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _UkrFactory._(CountryUkr _) implements CountryUkr {
  const _UkrFactory() : this._(const CountryUkr._());
}

/// A class that represents the Ukraine country.
class CountryUkr extends WorldCountry {
  /// {@template sealed_world.country_ukr_constructor}
  /// Creates a instance of [CountryUkr] (Ukraine country).
  ///
  /// ISO 3166-1 Alpha-3 code: `UKR`, ISO 3166-1 Alpha-2 code: `UA`.
  /// {@endtemplate}
  const factory CountryUkr() = _UkrFactory;

  const CountryUkr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Ukraine",
          common: "Ukraine",
        ),
        tld: const [".ua", ".укр"],
        code: "UKR",
        codeNumeric: "804",
        codeShort: "UA",
        cioc: "UKR",
        idd: const Idd(root: 3, suffixes: [80]),
        altSpellings: const ["UA", "Ukrayina", "Украина"],
        continent: const Europe(),
        subregion: const EasternEurope(),
        latLng: const LatLng(49, 32),
        bordersCodes: const ["Blr", "Hun", "Mda", "Pol", "Rou", "Rus", "Svk"],
        areaMetric: 603500,
        emoji: "🇺🇦",
        maps: const Maps(
          googleMaps: "DvgJMiPJ7aozKFZv7",
          openStreetMaps: "relation/60199",
        ),
        population: 44134693,
        gini: const Gini(year: 2019, coefficient: 26.6),
        fifa: "UKR",
        car: const Car(sign: "UA"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUah()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Kyiv"), latLng: LatLng(50.43, 30.52));
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ukrainian", male: "Ukrainian"),
    Demonyms(language: LangFra(), female: "Ukrainienne", male: "Ukrainien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangUkr(), official: "Україна", common: "Україна"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangUkr()];
}
