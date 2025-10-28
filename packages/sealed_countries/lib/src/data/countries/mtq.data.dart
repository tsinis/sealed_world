// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MtqFactory._(CountryMtq _) implements CountryMtq {
  const _MtqFactory() : this._(const CountryMtq._());
}

/// A class that represents the Martinique country.
class CountryMtq extends WorldCountry {
  /// {@template sealed_world.country_mtq_constructor}
  /// Creates a instance of [CountryMtq] (Martinique country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MTQ`, ISO 3166-1 Alpha-2 code: `MQ`.
  /// {@endtemplate}
  const factory CountryMtq() = _MtqFactory;

  const CountryMtq._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Martinique",
          common: "Martinique",
        ),
        tld: const [".mq"],
        code: "MTQ",
        codeNumeric: "474",
        codeShort: "MQ",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [96]),
        altSpellings: const ["MQ"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(14.666667, -61),
        areaMetric: 1128,
        emoji: "🇲🇶",
        maps: const Maps(
          googleMaps: "87ER7sDAFU7JjcvR6",
          openStreetMaps: "relation/2473088",
        ),
        population: 378243,
        car: const Car(sign: "F"),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Fort-de-France"),
    latLng: LatLng(14.6, -61.08),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Martinican", male: "Martinican"),
    Demonyms(
      language: LangFra(),
      female: "Martiniquaise",
      male: "Martiniquais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Martinique",
      common: "Martinique",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
