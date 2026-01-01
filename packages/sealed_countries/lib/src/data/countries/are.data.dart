// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _AreFactory._(CountryAre _) implements CountryAre {
  const _AreFactory() : this._(const CountryAre._());
}

/// A class that represents the United Arab Emirates country.
class CountryAre extends WorldCountry {
  /// {@template sealed_world.country_are_constructor}
  /// Creates a instance of [CountryAre] (United Arab Emirates country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ARE`, ISO 3166-1 Alpha-2 code: `AE`.
  /// {@endtemplate}
  const factory CountryAre() = _AreFactory;

  const CountryAre._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "United Arab Emirates",
          common: "United Arab Emirates",
        ),
        tld: const [".ae", "امارات."],
        code: "ARE",
        codeNumeric: "784",
        codeShort: "AE",
        cioc: "UAE",
        idd: const Idd(root: 9, suffixes: [71]),
        altSpellings: const ["AE", "UAE", "Emirates"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(24, 54),
        bordersCodes: const ["Omn", "Sau"],
        areaMetric: 83600,
        emoji: "🇦🇪",
        maps: const Maps(
          googleMaps: "AZZTDA6GzVAnKMVd8",
          openStreetMaps: "relation/307763",
        ),
        population: 9890400,
        gini: const Gini(year: 2018, coefficient: 26),
        fifa: "UAE",
        car: const Car(sign: "UAE"),
        timezones: const ["UTC+04:00"],
        startOfWeek: Weekday.sunday,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAed()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Abu Dhabi"),
    latLng: LatLng(24.47, 54.37),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Emirati", male: "Emirati"),
    Demonyms(language: LangFra(), female: "Emirienne", male: "Emirien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الإمارات العربية المتحدة",
      common: "الإمارات",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
