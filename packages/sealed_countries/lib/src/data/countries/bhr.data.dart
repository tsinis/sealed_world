// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BhrFactory._(CountryBhr _) implements CountryBhr {
  const _BhrFactory() : this._(const CountryBhr._());
}

/// A class that represents the the Bahrain country.
class CountryBhr extends WorldCountry {
  /// {@template sealed_world.country_bhr_constructor}
  /// Creates a instance of [CountryBhr] (Bahrain country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BHR`, ISO 3166-1 Alpha-2 code: `BH`.
  /// {@endtemplate}
  const factory CountryBhr() = _BhrFactory;

  const CountryBhr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Bahrain",
          common: "Bahrain",
        ),
        tld: const [".bh"],
        code: "BHR",
        codeNumeric: "048",
        codeShort: "BH",
        cioc: "BRN",
        idd: const Idd(root: 9, suffixes: [73]),
        altSpellings: const ["BH", "Kingdom of Bahrain", "Mamlakat al-Baḥrayn"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(26, 50.55),
        areaMetric: 765,
        emoji: "🇧🇭",
        maps: const Maps(
          googleMaps: "5Zue99Zc6vFBHxzJ7",
          openStreetMaps: "relation/378734",
        ),
        population: 1501635,
        fifa: "BHR",
        car: const Car(sign: "BRN"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(
          format: "####|###",
          regExpPattern: r"^(\d{3}\d?)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBhd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Manama"),
    latLng: LatLng(26.23, 50.57),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bahraini", male: "Bahraini"),
    Demonyms(language: LangFra(), female: "Bahreïnienne", male: "Bahreïnien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "مملكة البحرين",
      common: "‏البحرين",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
