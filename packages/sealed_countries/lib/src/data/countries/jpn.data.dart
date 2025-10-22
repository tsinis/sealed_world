// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _JpnFactory._(CountryJpn _) implements CountryJpn {
  const _JpnFactory() : this._(const CountryJpn._());
}

/// A class that represents the the Japan country.
class CountryJpn extends WorldCountry {
  /// {@template sealed_world.country_jpn_constructor}
  /// Creates a instance of [CountryJpn] (Japan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `JPN`, ISO 3166-1 Alpha-2 code: `JP`.
  /// {@endtemplate}
  const factory CountryJpn() = _JpnFactory;

  const CountryJpn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Japan",
          common: "Japan",
        ),
        tld: const [".jp", ".みんな"],
        code: "JPN",
        codeNumeric: "392",
        codeShort: "JP",
        cioc: "JPN",
        idd: const Idd(root: 8, suffixes: [1]),
        altSpellings: const ["JP", "Nippon", "Nihon"],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(36, 138),
        areaMetric: 377930,
        emoji: "🇯🇵",
        maps: const Maps(
          googleMaps: "NGTLSCSrA8bMrvnX9",
          openStreetMaps: "relation/382313",
        ),
        population: 126146099,
        gini: const Gini(year: 2013, coefficient: 32.9),
        fifa: "JPN",
        car: const Car(sign: "J", isRightSide: false),
        timezones: const ["UTC+09:00"],
        postalCode: const PostalCode(
          format: "###-####",
          regExpPattern: r"^(\d{7})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatJpy()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tokyo"),
    latLng: LatLng(35.68, 139.75),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Japanese", male: "Japanese"),
    Demonyms(language: LangFra(), female: "Japonaise", male: "Japonais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangJpn(), official: "日本国", common: "日本"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangJpn()];
}
