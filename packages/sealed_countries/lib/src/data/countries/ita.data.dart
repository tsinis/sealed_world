// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ItaFactory._(CountryIta _) implements CountryIta {
  const _ItaFactory() : this._(const CountryIta._());
}

/// A class that represents the Italy country.
class CountryIta extends WorldCountry {
  /// {@template sealed_world.country_ita_constructor}
  /// Creates a instance of [CountryIta] (Italy country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ITA`, ISO 3166-1 Alpha-2 code: `IT`.
  /// {@endtemplate}
  const factory CountryIta() = _ItaFactory;

  const CountryIta._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Italian Republic",
          common: "Italy",
        ),
        tld: const [".it"],
        code: "ITA",
        codeNumeric: "380",
        codeShort: "IT",
        cioc: "ITA",
        idd: const Idd(root: 3, suffixes: [9]),
        altSpellings: const ["IT", "Italian Republic", "Repubblica italiana"],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(42.83333333, 12.83333333),
        bordersCodes: const ["Aut", "Fra", "Smr", "Svn", "Che", "Vat"],
        areaMetric: 301336,
        emoji: "🇮🇹",
        maps: const Maps(
          googleMaps: "8M1K27TDj7StTRTq8",
          openStreetMaps: "relation/365331",
        ),
        population: 58934177,
        gini: const Gini(year: 2020, coefficient: 32.5),
        fifa: "ITA",
        car: const Car(sign: "I"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Rome"), latLng: LatLng(41.9, 12.48));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Italian", male: "Italian"),
    Demonyms(language: LangFra(), female: "Italienne", male: "Italien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangIta(),
      official: "Repubblica italiana",
      common: "Italia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangIta()];
}
