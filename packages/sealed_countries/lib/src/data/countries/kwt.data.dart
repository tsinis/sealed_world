// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _KwtFactory._(CountryKwt _) implements CountryKwt {
  const _KwtFactory() : this._(const CountryKwt._());
}

/// A class that represents the Kuwait country.
class CountryKwt extends WorldCountry {
  /// {@template sealed_world.country_kwt_constructor}
  /// Creates a instance of [CountryKwt] (Kuwait country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KWT`, ISO 3166-1 Alpha-2 code: `KW`.
  /// {@endtemplate}
  const factory CountryKwt() = _KwtFactory;

  const CountryKwt._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "State of Kuwait",
          common: "Kuwait",
        ),
        tld: const [".kw"],
        code: "KWT",
        codeNumeric: "414",
        codeShort: "KW",
        cioc: "KUW",
        idd: const Idd(root: 9, suffixes: [65]),
        altSpellings: const ["KW", "State of Kuwait", "Dawlat al-Kuwait"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(29.5, 45.75),
        bordersCodes: const ["Irq", "Sau"],
        areaMetric: 17818,
        emoji: "🇰🇼",
        maps: const Maps(
          googleMaps: "aqr3aNQjS1BAvksJ7",
          openStreetMaps: "relation/305099",
        ),
        population: 4270563,
        fifa: "KUW",
        car: const Car(sign: "KWT"),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKwd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kuwait City"),
    latLng: LatLng(29.37, 47.97),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Kuwaiti", male: "Kuwaiti"),
    Demonyms(language: LangFra(), female: "Koweïtienne", male: "Koweïtien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangAra(), official: "دولة الكويت", common: "الكويت"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
