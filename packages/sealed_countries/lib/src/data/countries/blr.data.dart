// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Belarus country.
class CountryBlr extends WorldCountry {
  /// {@template sealed_world.countries_blr_constructor}}
  /// Creates a instance of [CountryBlr] (Belarus country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BLR`, ISO 3166-1 Alpha-2 code: `BY`.
  /// {@endtemplate}
  const factory CountryBlr() = _BlrFactory;

  const CountryBlr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Belarus",
          common: "Belarus",
        ),
        tld: const [".by"],
        code: "BLR",
        codeNumeric: "112",
        codeShort: "BY",
        cioc: "BLR",
        idd: const Idd(root: 3, suffixes: [75]),
        altSpellings: const [
          "BY",
          "Bielaruś",
          "Republic of Belarus",
          "Белоруссия",
          "Республика Белоруссия",
        ],
        continent: const Europe(),
        subregion: const EasternEurope(),
        latLng: const LatLng(53, 28),
        landlocked: true,
        bordersCodes: const ["Lva", "Ltu", "Pol", "Rus", "Ukr"],
        areaMetric: 207600,
        emoji: "🇧🇾",
        maps: const Maps(
          googleMaps: "PJUDU3EBPSszCQcu6",
          openStreetMaps: "relation/59065",
        ),
        population: 9109280,
        gini: const Gini(year: 2019, coefficient: 25.3),
        fifa: "BLR",
        car: const Car(sign: "BY"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatByn()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Minsk"), latLng: LatLng(53.9, 27.57));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Belarusian", male: "Belarusian"),
    Demonyms(language: LangFra(), female: "Biélorusse", male: "Biélorusse"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangBel(),
      official: "Рэспубліка Беларусь",
      common: "Беларусь",
    ),
    CountryName(
      language: LangRus(),
      official: "Республика Беларусь",
      common: "Беларусь",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangBel(), LangRus()];
}

extension type const _BlrFactory._(CountryBlr _) implements CountryBlr {
  const _BlrFactory() : this._(const CountryBlr._());
}
