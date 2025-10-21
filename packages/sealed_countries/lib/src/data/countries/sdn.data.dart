// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Sudan country.
class CountrySdn extends WorldCountry {
  /// {@template sealed_world.countries_sdn_constructor}}
  /// Creates a instance of [CountrySdn] (Sudan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SDN`, ISO 3166-1 Alpha-2 code: `SD`.
  /// {@endtemplate}
  const factory CountrySdn() = _SdnFactory;

  const CountrySdn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Sudan",
          common: "Sudan",
        ),
        tld: const [".sd"],
        code: "SDN",
        codeNumeric: "729",
        codeShort: "SD",
        cioc: "SUD",
        idd: const Idd(root: 2, suffixes: [49]),
        altSpellings: const [
          "SD",
          "Republic of the Sudan",
          "Jumhūrīyat as-Sūdān",
        ],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(15, 30),
        bordersCodes: const ["Caf", "Tcd", "Egy", "Eri", "Eth", "Lby", "Ssd"],
        areaMetric: 1886068,
        emoji: "🇸🇩",
        maps: const Maps(
          googleMaps: "bNW7YUJCaqR8zcXn7",
          openStreetMaps: "relation/192789",
        ),
        population: 43849269,
        gini: const Gini(year: 2014, coefficient: 34.2),
        fifa: "SDN",
        car: const Car(sign: "SUD"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSdg()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Khartoum"),
    latLng: LatLng(15.6, 32.53),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Sudanese", male: "Sudanese"),
    Demonyms(language: LangFra(), female: "Soudanaise", male: "Soudanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "جمهورية السودان",
      common: "السودان",
    ),
    CountryName(
      language: LangEng(),
      official: "Republic of the Sudan",
      common: "Sudan",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangEng()];
}

extension type const _SdnFactory._(CountrySdn _) implements CountrySdn {
  const _SdnFactory() : this._(const CountrySdn._());
}
