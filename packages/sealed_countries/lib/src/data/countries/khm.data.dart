// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Cambodia country.
class CountryKhm extends WorldCountry {
  /// {@template sealed_world.countries_khm_constructor}}
  /// Creates a instance of [CountryKhm] (Cambodia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KHM`, ISO 3166-1 Alpha-2 code: `KH`.
  /// {@endtemplate}
  const factory CountryKhm() = _KhmFactory;

  const CountryKhm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Cambodia",
          common: "Cambodia",
        ),
        tld: const [".kh"],
        code: "KHM",
        codeNumeric: "116",
        codeShort: "KH",
        cioc: "CAM",
        idd: const Idd(root: 8, suffixes: [55]),
        altSpellings: const ["KH", "Kingdom of Cambodia"],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(13, 105),
        bordersCodes: const ["Lao", "Tha", "Vnm"],
        areaMetric: 181035,
        emoji: "🇰🇭",
        maps: const Maps(
          googleMaps: "nztQtFSrUXZymJaW8",
          openStreetMaps: "relation/49898",
        ),
        population: 17638801,
        fifa: "CAM",
        car: const Car(sign: "K"),
        timezones: const ["UTC+07:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKhr(), FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Phnom Penh"),
    latLng: LatLng(11.55, 104.92),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Cambodian", male: "Cambodian"),
    Demonyms(language: LangFra(), female: "Cambodgienne", male: "Cambodgien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangKhm(),
      official: "ព្រះរាជាណាចក្រកម្ពុជា",
      common: "កម្ពុជា",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKhm()];
}

extension type const _KhmFactory._(CountryKhm _) implements CountryKhm {
  const _KhmFactory() : this._(const CountryKhm._());
}
