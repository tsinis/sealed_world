// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MdgFactory._(CountryMdg _) implements CountryMdg {
  const _MdgFactory() : this._(const CountryMdg._());
}

/// A class that represents the Madagascar country.
class CountryMdg extends WorldCountry {
  /// {@template sealed_world.country_mdg_constructor}
  /// Creates a instance of [CountryMdg] (Madagascar country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MDG`, ISO 3166-1 Alpha-2 code: `MG`.
  /// {@endtemplate}
  const factory CountryMdg() = _MdgFactory;

  const CountryMdg._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Madagascar",
          common: "Madagascar",
        ),
        tld: const [".mg"],
        code: "MDG",
        codeNumeric: "450",
        codeShort: "MG",
        cioc: "MAD",
        idd: const Idd(root: 2, suffixes: [61]),
        altSpellings: const [
          "MG",
          "Republic of Madagascar",
          "Repoblikan'i Madagasikara",
          "République de Madagascar",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-20, 47),
        areaMetric: 587041,
        emoji: "🇲🇬",
        maps: const Maps(
          googleMaps: "AHQh2ABBaFW6Ngj26",
          openStreetMaps: "relation/447325",
        ),
        population: 31964956,
        gini: const Gini(year: 2012, coefficient: 42.6),
        fifa: "MAD",
        car: const Car(sign: "RM"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(
          format: "###",
          regExpPattern: r"^(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMga()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Antananarivo"),
    latLng: LatLng(-18.92, 47.52),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Malagasy", male: "Malagasy"),
    Demonyms(language: LangFra(), female: "Malgache", male: "Malgache"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République de Madagascar",
      common: "Madagascar",
    ),
    CountryName(
      language: LangMlg(),
      official: "Repoblikan'i Madagasikara",
      common: "Madagasikara",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra(), LangMlg()];
}
