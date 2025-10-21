// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Turkmenistan country.
class CountryTkm extends WorldCountry {
  /// {@template sealed_world.countries_tkm_constructor}}
  /// Creates a instance of [CountryTkm] (Turkmenistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TKM`, ISO 3166-1 Alpha-2 code: `TM`.
  /// {@endtemplate}
  const factory CountryTkm() = _TkmFactory;

  const CountryTkm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Turkmenistan",
          common: "Turkmenistan",
        ),
        tld: const [".tm"],
        code: "TKM",
        codeNumeric: "795",
        codeShort: "TM",
        cioc: "TKM",
        idd: const Idd(root: 9, suffixes: [93]),
        altSpellings: const ["TM"],
        continent: const Asia(),
        subregion: const CentralAsia(),
        latLng: const LatLng(40, 60),
        landlocked: true,
        bordersCodes: const ["Afg", "Irn", "Kaz", "Uzb"],
        areaMetric: 488100,
        emoji: "🇹🇲",
        maps: const Maps(
          googleMaps: "cgfUcaQHSWKuqeKk9",
          openStreetMaps: "relation/223026",
        ),
        population: 6031187,
        gini: const Gini(year: 1998, coefficient: 40.8),
        fifa: "TKM",
        car: const Car(sign: "TM"),
        timezones: const ["UTC+05:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTmt()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ashgabat"),
    latLng: LatLng(37.95, 58.38),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Turkmen", male: "Turkmen"),
    Demonyms(language: LangFra(), female: "Turkmène", male: "Turkmène"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangRus(),
      official: "Туркменистан",
      common: "Туркмения",
    ),
    CountryName(
      language: LangTuk(),
      official: "Türkmenistan",
      common: "Türkmenistan",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangRus(), LangTuk()];
}

extension type const _TkmFactory._(CountryTkm _) implements CountryTkm {
  const _TkmFactory() : this._(const CountryTkm._());
}
