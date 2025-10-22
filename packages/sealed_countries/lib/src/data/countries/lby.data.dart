// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _LbyFactory._(CountryLby _) implements CountryLby {
  const _LbyFactory() : this._(const CountryLby._());
}

/// A class that represents the Libya country.
class CountryLby extends WorldCountry {
  /// {@template sealed_world.country_lby_constructor}
  /// Creates a instance of [CountryLby] (Libya country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LBY`, ISO 3166-1 Alpha-2 code: `LY`.
  /// {@endtemplate}
  const factory CountryLby() = _LbyFactory;

  const CountryLby._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "State of Libya",
          common: "Libya",
        ),
        tld: const [".ly"],
        code: "LBY",
        codeNumeric: "434",
        codeShort: "LY",
        cioc: "LBA",
        idd: const Idd(root: 2, suffixes: [18]),
        altSpellings: const ["LY", "State of Libya", "Dawlat Libya"],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(25, 17),
        bordersCodes: const ["Dza", "Tcd", "Egy", "Ner", "Sdn", "Tun"],
        areaMetric: 1759540,
        emoji: "🇱🇾",
        maps: const Maps(
          googleMaps: "eLgGnaQWcJEdYRMy5",
          openStreetMaps: "relation/192758",
        ),
        population: 7361263,
        fifa: "LBY",
        car: const Car(sign: "LAR"),
        timezones: const ["UTC+01:00"],
        startOfWeek: Weekday.sunday,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatLyd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tripoli"),
    latLng: LatLng(32.88, 13.17),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Libyan", male: "Libyan"),
    Demonyms(language: LangFra(), female: "Libyenne", male: "Libyen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الدولة ليبيا",
      common: "‏ليبيا",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
