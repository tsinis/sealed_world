// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _HrvFactory._(CountryHrv _) implements CountryHrv {
  const _HrvFactory() : this._(const CountryHrv._());
}

/// A class that represents the the Croatia country.
class CountryHrv extends WorldCountry {
  /// {@template sealed_world.country_hrv_constructor}
  /// Creates a instance of [CountryHrv] (Croatia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `HRV`, ISO 3166-1 Alpha-2 code: `HR`.
  /// {@endtemplate}
  const factory CountryHrv() = _HrvFactory;

  const CountryHrv._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Croatia",
          common: "Croatia",
        ),
        tld: const [".hr"],
        code: "HRV",
        codeNumeric: "191",
        codeShort: "HR",
        cioc: "CRO",
        idd: const Idd(root: 3, suffixes: [85]),
        altSpellings: const [
          "HR",
          "Hrvatska",
          "Republic of Croatia",
          "Republika Hrvatska",
        ],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(45.16666666, 15.5),
        bordersCodes: const ["Bih", "Hun", "Mne", "Srb", "Svn"],
        areaMetric: 56594,
        emoji: "🇭🇷",
        maps: const Maps(
          googleMaps: "qSG6xTKUmrYpwmGQ6",
          openStreetMaps: "relation/214885",
        ),
        population: 3871833,
        gini: const Gini(year: 2018, coefficient: 29.7),
        fifa: "CRO",
        car: const Car(sign: "HR"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "HR-#####",
          regExpPattern: r"^(?:HR)*(\d{5})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Zagreb"), latLng: LatLng(45.8, 16));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Croatian", male: "Croatian"),
    Demonyms(language: LangFra(), female: "Croate", male: "Croate"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangHrv(),
      official: "Republika Hrvatska",
      common: "Hrvatska",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangHrv()];
}
