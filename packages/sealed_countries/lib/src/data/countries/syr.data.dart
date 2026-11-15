// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SyrFactory._(CountrySyr _) implements CountrySyr {
  const new() : this._(const CountrySyr._());
}

/// A class that represents the Syria country.
class CountrySyr extends WorldCountry {
  /// {@template sealed_world.country_syr_constructor}
  /// Creates a instance of [CountrySyr] (Syria country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SYR`, ISO 3166-1 Alpha-2 code: `SY`.
  /// {@endtemplate}
  const factory() = _SyrFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Syrian Arab Republic",
          common: "Syria",
        ),
        tld: const [".sy", "سوريا."],
        code: "SYR",
        codeNumeric: "760",
        codeShort: "SY",
        cioc: "SYR",
        idd: const Idd(root: 9, suffixes: [63]),
        altSpellings: const [
          "SY",
          "Syrian Arab Republic",
          "Al-Jumhūrīyah Al-ʻArabīyah As-Sūrīyah",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(35, 38),
        bordersCodes: const ["Irq", "Isr", "Jor", "Lbn", "Tur"],
        areaMetric: 185180,
        emoji: "🇸🇾",
        maps: const Maps(
          googleMaps: "Xe3VnFbwdb4nv2SM9",
          openStreetMaps: "relation/184840",
        ),
        population: 17500657,
        gini: const Gini(year: 2003, coefficient: 37.5),
        fifa: "SYR",
        car: const Car(sign: "SYR"),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSyp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Damascus"),
    latLng: LatLng(33.5, 36.3),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Syrian", male: "Syrian"),
    Demonyms(language: LangFra(), female: "Syrienne", male: "Syrien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الجمهورية العربية السورية",
      common: "سوريا",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
