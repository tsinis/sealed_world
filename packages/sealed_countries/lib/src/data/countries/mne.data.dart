// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Montenegro country.
class CountryMne extends WorldCountry {
  /// {@template sealed_world.countries_mne_constructor}}
  /// Creates a instance of [CountryMne] (Montenegro country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MNE`, ISO 3166-1 Alpha-2 code: `ME`.
  /// {@endtemplate}
  const factory CountryMne() = _MneFactory;

  const CountryMne._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Montenegro",
          common: "Montenegro",
        ),
        tld: const [".me"],
        code: "MNE",
        codeNumeric: "499",
        codeShort: "ME",
        cioc: "MNE",
        idd: const Idd(root: 3, suffixes: [82]),
        altSpellings: const ["ME", "Crna Gora"],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(42.5, 19.3),
        bordersCodes: const ["Alb", "Bih", "Hrv", "Srb", "Unk"],
        areaMetric: 13883,
        emoji: "🇲🇪",
        maps: const Maps(
          googleMaps: "4THX1fM7WqANuPbB8",
          openStreetMaps: "relation/53296",
        ),
        population: 623633,
        gini: const Gini(year: 2023, coefficient: 29.4),
        fifa: "MNE",
        car: const Car(sign: "MNE"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Podgorica"),
    latLng: LatLng(42.43, 19.27),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Montenegrin", male: "Montenegrin"),
    Demonyms(language: LangFra(), female: "Monténégrine", male: "Monténégrin"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSrp(),
      official: "Црна Гора",
      common: "Црна Гора",
    ),
    CountryName(
      language: LangSrp(),
      official: "Crna Gora",
      common: "Crna Gora",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSrp()];
}

extension type const _MneFactory._(CountryMne _) implements CountryMne {
  const _MneFactory() : this._(const CountryMne._());
}
