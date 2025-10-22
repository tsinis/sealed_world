// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TurFactory._(CountryTur _) implements CountryTur {
  const _TurFactory() : this._(const CountryTur._());
}

/// A class that represents the the Turkey country.
class CountryTur extends WorldCountry {
  /// {@template sealed_world.country_tur_constructor}
  /// Creates a instance of [CountryTur] (Turkey country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TUR`, ISO 3166-1 Alpha-2 code: `TR`.
  /// {@endtemplate}
  const factory CountryTur() = _TurFactory;

  const CountryTur._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Türkiye",
          common: "Turkey",
        ),
        tld: const [".tr"],
        code: "TUR",
        codeNumeric: "792",
        codeShort: "TR",
        cioc: "TUR",
        idd: const Idd(root: 9, suffixes: [0]),
        altSpellings: const [
          "TR",
          "Turkiye",
          "Republic of Turkey",
          "Türkiye Cumhuriyeti",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(39, 35),
        bordersCodes: const [
          "Arm",
          "Aze",
          "Bgr",
          "Geo",
          "Grc",
          "Irn",
          "Irq",
          "Syr",
        ],
        areaMetric: 783562,
        emoji: "🇹🇷",
        maps: const Maps(
          googleMaps: "dXFFraiUDfcB6Quk6",
          openStreetMaps: "relation/174737",
        ),
        population: 85664944,
        gini: const Gini(year: 2021, coefficient: 44.4),
        fifa: "TUR",
        car: const Car(sign: "TR"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTry()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ankara"),
    latLng: LatLng(39.917, 32.85),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Turkish", male: "Turkish"),
    Demonyms(language: LangFra(), female: "Turque", male: "Turc"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangTur(),
      official: "Türkiye Cumhuriyeti",
      common: "Türkiye",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangTur()];
}
