// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MdaFactory._(CountryMda _) implements CountryMda {
  const _MdaFactory() : this._(const CountryMda._());
}

/// A class that represents the Moldova country.
class CountryMda extends WorldCountry {
  /// {@template sealed_world.country_mda_constructor}
  /// Creates a instance of [CountryMda] (Moldova country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MDA`, ISO 3166-1 Alpha-2 code: `MD`.
  /// {@endtemplate}
  const factory CountryMda() = _MdaFactory;

  const CountryMda._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Moldova",
          common: "Moldova",
        ),
        tld: const [".md"],
        code: "MDA",
        codeNumeric: "498",
        codeShort: "MD",
        cioc: "MDA",
        idd: const Idd(root: 3, suffixes: [73]),
        altSpellings: const [
          "MD",
          "Moldova, Republic of",
          "Republic of Moldova",
          "Republica Moldova",
        ],
        continent: const Europe(),
        subregion: const EasternEurope(),
        latLng: const LatLng(47, 29),
        landlocked: true,
        bordersCodes: const ["Rou", "Ukr"],
        areaMetric: 33846,
        emoji: "🇲🇩",
        maps: const Maps(
          googleMaps: "JjmyUuULujnDeFPf7",
          openStreetMaps: "relation/58974",
        ),
        population: 2617820,
        gini: const Gini(year: 2018, coefficient: 25.7),
        fifa: "MDA",
        car: const Car(sign: "MD"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "MD-####",
          regExpPattern: r"^(?:MD)*(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMdl()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Chișinău"),
    latLng: LatLng(47.01, 28.9),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Moldovan", male: "Moldovan"),
    Demonyms(language: LangFra(), female: "Moldave", male: "Moldave"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangRon(),
      official: "Republica Moldova",
      common: "Moldova",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangRon()];
}
