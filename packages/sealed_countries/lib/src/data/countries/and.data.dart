// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AndFactory._(CountryAnd _) implements CountryAnd {
  const _AndFactory() : this._(const CountryAnd._());
}

/// A class that represents the Andorra country.
class CountryAnd extends WorldCountry {
  /// {@template sealed_world.country_and_constructor}
  /// Creates a instance of [CountryAnd] (Andorra country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AND`, ISO 3166-1 Alpha-2 code: `AD`.
  /// {@endtemplate}
  const factory CountryAnd() = _AndFactory;

  const CountryAnd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Principality of Andorra",
          common: "Andorra",
        ),
        tld: const [".ad"],
        code: "AND",
        codeNumeric: "020",
        codeShort: "AD",
        cioc: "AND",
        idd: const Idd(root: 3, suffixes: [76]),
        altSpellings: const [
          "AD",
          "Principality of Andorra",
          "Principat d'Andorra",
        ],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(42.5, 1.5),
        landlocked: true,
        bordersCodes: const ["Fra", "Esp"],
        areaMetric: 468,
        emoji: "🇦🇩",
        maps: const Maps(
          googleMaps: "JqAnacWE2qEznKgw7",
          openStreetMaps: "relation/9407",
        ),
        population: 79034,
        fifa: "AND",
        car: const Car(sign: "AND"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "AD###",
          regExpPattern: r"^(?:AD)*(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Andorra la Vella"),
    latLng: LatLng(42.5, 1.52),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Andorran", male: "Andorran"),
    Demonyms(language: LangFra(), female: "Andorrane", male: "Andorran"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangCat(),
      official: "Principat d'Andorra",
      common: "Andorra",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangCat()];
}
