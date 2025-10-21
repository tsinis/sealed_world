// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Guernsey country.
class CountryGgy extends WorldCountry {
  /// {@template sealed_world.countries_ggy_constructor}}
  /// Creates a instance of [CountryGgy] (Guernsey country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GGY`, ISO 3166-1 Alpha-2 code: `GG`.
  /// {@endtemplate}
  const factory CountryGgy() = _GgyFactory;

  const CountryGgy._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Bailiwick of Guernsey",
          common: "Guernsey",
        ),
        tld: const [".gg"],
        code: "GGY",
        codeNumeric: "831",
        codeShort: "GG",
        independent: false,
        unMember: false,
        idd: const Idd(root: 4, suffixes: [4]),
        altSpellings: const [
          "GG",
          "Bailiwick of Guernsey",
          "Bailliage de Guernesey",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(49.46666666, -2.58333333),
        areaMetric: 78,
        emoji: "🇬🇬",
        maps: const Maps(
          googleMaps: "6kXnQU5QvEZMD9VB7",
          openStreetMaps: "relation/270009",
        ),
        population: 63950,
        car: const Car(sign: "GBG", isRightSide: false),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
          regExpPattern:
              r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGbp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("St. Peter Port"),
    latLng: LatLng(49.45, -2.54),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Channel Islander",
      male: "Channel Islander",
    ),
    Demonyms(language: LangFra(), female: "Guernesiaise", male: "Guernesiais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Bailiwick of Guernsey",
      common: "Guernsey",
    ),
    CountryName(
      language: LangFra(),
      official: "Bailliage de Guernesey",
      common: "Guernesey",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFra()];
}

extension type const _GgyFactory._(CountryGgy _) implements CountryGgy {
  const _GgyFactory() : this._(const CountryGgy._());
}
