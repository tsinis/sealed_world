// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Eswatini country.
class CountrySwz extends WorldCountry {
  /// {@template sealed_world.countries_swz_constructor}}
  /// Creates a instance of [CountrySwz] (Eswatini country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SWZ`, ISO 3166-1 Alpha-2 code: `SZ`.
  /// {@endtemplate}
  const factory CountrySwz() = _SwzFactory;

  const CountrySwz._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Eswatini",
          common: "Eswatini",
        ),
        tld: const [".sz"],
        code: "SWZ",
        codeNumeric: "748",
        codeShort: "SZ",
        cioc: "SWZ",
        idd: const Idd(root: 2, suffixes: [68]),
        altSpellings: const [
          "SZ",
          "Swaziland",
          "weSwatini",
          "Swatini",
          "Ngwane",
          "Kingdom of Eswatini",
          "Umbuso weSwatini",
        ],
        continent: const Africa(),
        subregion: const SouthernAfrica(),
        latLng: const LatLng(-26.5, 31.5),
        landlocked: true,
        bordersCodes: const ["Moz", "Zaf"],
        areaMetric: 17364,
        emoji: "🇸🇿",
        maps: const Maps(
          googleMaps: "cUY79eqQihFSE8hV6",
          openStreetMaps: "relation/88210",
        ),
        population: 1160164,
        gini: const Gini(year: 2016, coefficient: 54.6),
        fifa: "SWZ",
        car: const Car(sign: "SD", isRightSide: false),
        timezones: const ["UTC+02:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(
          format: "@###",
          regExpPattern: r"^([A-Z]\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSzl(), FiatZar()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Mbabane"),
    latLng: LatLng(-26.32, 31.13),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Swazi", male: "Swazi"),
    Demonyms(language: LangFra(), female: "Swazie", male: "Swazie"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Kingdom of Eswatini",
      common: "Eswatini",
    ),
    CountryName(
      language: LangSsw(),
      official: "Umbuso weSwatini",
      common: "eSwatini",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSsw()];
}

extension type const _SwzFactory._(CountrySwz _) implements CountrySwz {
  const _SwzFactory() : this._(const CountrySwz._());
}
