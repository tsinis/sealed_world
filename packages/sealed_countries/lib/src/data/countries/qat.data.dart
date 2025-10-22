// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _QatFactory._(CountryQat _) implements CountryQat {
  const _QatFactory() : this._(const CountryQat._());
}

/// A class that represents the Qatar country.
class CountryQat extends WorldCountry {
  /// {@template sealed_world.country_qat_constructor}
  /// Creates a instance of [CountryQat] (Qatar country).
  ///
  /// ISO 3166-1 Alpha-3 code: `QAT`, ISO 3166-1 Alpha-2 code: `QA`.
  /// {@endtemplate}
  const factory CountryQat() = _QatFactory;

  const CountryQat._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "State of Qatar",
          common: "Qatar",
        ),
        tld: const [".qa", "قطر."],
        code: "QAT",
        codeNumeric: "634",
        codeShort: "QA",
        cioc: "QAT",
        idd: const Idd(root: 9, suffixes: [74]),
        altSpellings: const ["QA", "State of Qatar", "Dawlat Qaṭar"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(25.5, 51.25),
        bordersCodes: const ["Sau"],
        areaMetric: 11586,
        emoji: "🇶🇦",
        maps: const Maps(
          googleMaps: "ZV76Y49z7LLUZ2KQ6",
          openStreetMaps: "relation/305095",
        ),
        population: 2881060,
        fifa: "QAT",
        car: const Car(sign: "Q"),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatQar()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Doha"), latLng: LatLng(25.28, 51.53));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Qatari", male: "Qatari"),
    Demonyms(language: LangFra(), female: "Qatarienne", male: "Qatarien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangAra(), official: "دولة قطر", common: "قطر"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
