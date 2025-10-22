// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BelFactory._(CountryBel _) implements CountryBel {
  const _BelFactory() : this._(const CountryBel._());
}

/// A class that represents the the Belgium country.
class CountryBel extends WorldCountry {
  /// {@template sealed_world.country_bel_constructor}
  /// Creates a instance of [CountryBel] (Belgium country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BEL`, ISO 3166-1 Alpha-2 code: `BE`.
  /// {@endtemplate}
  const factory CountryBel() = _BelFactory;

  const CountryBel._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Belgium",
          common: "Belgium",
        ),
        tld: const [".be"],
        code: "BEL",
        codeNumeric: "056",
        codeShort: "BE",
        cioc: "BEL",
        idd: const Idd(root: 3, suffixes: [2]),
        altSpellings: const [
          "BE",
          "België",
          "Belgie",
          "Belgien",
          "Belgique",
          "Kingdom of Belgium",
          "Koninkrijk België",
          "Royaume de Belgique",
          "Königreich Belgien",
        ],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(50.83333333, 4),
        bordersCodes: const ["Fra", "Deu", "Lux", "Nld"],
        areaMetric: 30528,
        emoji: "🇧🇪",
        maps: const Maps(
          googleMaps: "UQQzat85TCtPRXAL8",
          openStreetMaps: "relation/52411",
        ),
        population: 11812354,
        gini: const Gini(year: 2018, coefficient: 27.2),
        fifa: "BEL",
        car: const Car(sign: "B"),
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
    capital: Capital("Brussels"),
    latLng: LatLng(50.83, 4.33),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Belgian", male: "Belgian"),
    Demonyms(language: LangFra(), female: "Belge", male: "Belge"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDeu(),
      official: "Königreich Belgien",
      common: "Belgien",
    ),
    CountryName(
      language: LangFra(),
      official: "Royaume de Belgique",
      common: "Belgique",
    ),
    CountryName(
      language: LangNld(),
      official: "Koninkrijk België",
      common: "België",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangDeu(),
    LangFra(),
    LangNld(),
  ];
}
