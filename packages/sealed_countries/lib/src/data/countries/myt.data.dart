// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _MytFactory._(CountryMyt _) implements CountryMyt {
  const _MytFactory() : this._(const CountryMyt._());
}

/// A class that represents the Mayotte country.
class CountryMyt extends WorldCountry {
  /// {@template sealed_world.country_myt_constructor}
  /// Creates a instance of [CountryMyt] (Mayotte country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MYT`, ISO 3166-1 Alpha-2 code: `YT`.
  /// {@endtemplate}
  const factory CountryMyt() = _MytFactory;

  const CountryMyt._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Department of Mayotte",
          common: "Mayotte",
        ),
        tld: const [".yt"],
        code: "MYT",
        codeNumeric: "175",
        codeShort: "YT",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [62]),
        altSpellings: const [
          "YT",
          "Department of Mayotte",
          "Département de Mayotte",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-12.83333333, 45.16666666),
        areaMetric: 374,
        emoji: "🇾🇹",
        maps: const Maps(
          googleMaps: "1e7MXmfBwQv3TQGF7",
          openStreetMaps: "relation/1259885",
        ),
        population: 226915,
        car: const Car(sign: "F"),
        timezones: const ["UTC+03:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Mamoudzou"),
    latLng: LatLng(-12.78, 45.22),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mahoran", male: "Mahoran"),
    Demonyms(language: LangFra(), female: "Mahoraise", male: "Mahorais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Département de Mayotte",
      common: "Mayotte",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
