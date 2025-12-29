// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _AbwFactory._(CountryAbw _) implements CountryAbw {
  const _AbwFactory() : this._(const CountryAbw._());
}

/// A class that represents the Aruba country.
class CountryAbw extends WorldCountry {
  /// {@template sealed_world.country_abw_constructor}
  /// Creates a instance of [CountryAbw] (Aruba country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ABW`, ISO 3166-1 Alpha-2 code: `AW`.
  /// {@endtemplate}
  const factory CountryAbw() = _AbwFactory;

  const CountryAbw._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Aruba",
          common: "Aruba",
        ),
        tld: const [".aw"],
        code: "ABW",
        codeNumeric: "533",
        codeShort: "AW",
        cioc: "ARU",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [97]),
        altSpellings: const ["AW"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(12.5, -69.96666666),
        areaMetric: 180,
        emoji: "🇦🇼",
        maps: const Maps(
          googleMaps: "8hopbQqifHAgyZyg8",
          openStreetMaps: "relation/1231749",
        ),
        population: 106766,
        fifa: "ARU",
        car: const Car(sign: "A"),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAwg()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Oranjestad"),
    latLng: LatLng(12.52, -70.03),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Aruban", male: "Aruban"),
    Demonyms(language: LangFra(), female: "Arubaise", male: "Arubais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangNld(), official: "Aruba", common: "Aruba"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNld()];
}
