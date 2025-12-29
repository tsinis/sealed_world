// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _AutFactory._(CountryAut _) implements CountryAut {
  const _AutFactory() : this._(const CountryAut._());
}

/// A class that represents the Austria country.
class CountryAut extends WorldCountry {
  /// {@template sealed_world.country_aut_constructor}
  /// Creates a instance of [CountryAut] (Austria country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AUT`, ISO 3166-1 Alpha-2 code: `AT`.
  /// {@endtemplate}
  const factory CountryAut() = _AutFactory;

  const CountryAut._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Austria",
          common: "Austria",
        ),
        tld: const [".at"],
        code: "AUT",
        codeNumeric: "040",
        codeShort: "AT",
        cioc: "AUT",
        idd: const Idd(root: 4, suffixes: [3]),
        altSpellings: const ["AT", "Osterreich", "Oesterreich"],
        continent: const Europe(),
        subregion: const CentralEurope(),
        latLng: const LatLng(47.33333333, 13.33333333),
        landlocked: true,
        bordersCodes: const [
          "Cze",
          "Deu",
          "Hun",
          "Ita",
          "Lie",
          "Svk",
          "Svn",
          "Che",
        ],
        areaMetric: 83871,
        emoji: "🇦🇹",
        maps: const Maps(
          googleMaps: "pCWpWQhznHyRzQcu9",
          openStreetMaps: "relation/16239",
        ),
        population: 9027999,
        gini: const Gini(year: 2018, coefficient: 30.8),
        fifa: "AUT",
        car: const Car(sign: "A"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Vienna"),
    latLng: LatLng(48.2, 16.37),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Austrian", male: "Austrian"),
    Demonyms(language: LangFra(), female: "Autrichienne", male: "Autrichien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDeu(),
      official: "Republik Österreich",
      common: "Österreich",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDeu()];
}
