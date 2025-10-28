// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MrtFactory._(CountryMrt _) implements CountryMrt {
  const _MrtFactory() : this._(const CountryMrt._());
}

/// A class that represents the Mauritania country.
class CountryMrt extends WorldCountry {
  /// {@template sealed_world.country_mrt_constructor}
  /// Creates a instance of [CountryMrt] (Mauritania country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MRT`, ISO 3166-1 Alpha-2 code: `MR`.
  /// {@endtemplate}
  const factory CountryMrt() = _MrtFactory;

  const CountryMrt._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Islamic Republic of Mauritania",
          common: "Mauritania",
        ),
        tld: const [".mr"],
        code: "MRT",
        codeNumeric: "478",
        codeShort: "MR",
        cioc: "MTN",
        idd: const Idd(root: 2, suffixes: [22]),
        altSpellings: const [
          "MR",
          "Islamic Republic of Mauritania",
          "al-Jumhūriyyah al-ʾIslāmiyyah al-Mūrītāniyyah",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(20, -12),
        bordersCodes: const ["Dza", "Mli", "Sen", "Esh"],
        areaMetric: 1030700,
        emoji: "🇲🇷",
        maps: const Maps(
          googleMaps: "im2MmQ5jFjzxWBks5",
          openStreetMaps: "relation/192763",
        ),
        population: 4649660,
        gini: const Gini(year: 2014, coefficient: 32.6),
        fifa: "MTN",
        car: const Car(sign: "RIM"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMru()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nouakchott"),
    latLng: LatLng(18.07, -15.97),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mauritanian", male: "Mauritanian"),
    Demonyms(language: LangFra(), female: "Mauritanienne", male: "Mauritanien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الجمهورية الإسلامية الموريتانية",
      common: "موريتانيا",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
