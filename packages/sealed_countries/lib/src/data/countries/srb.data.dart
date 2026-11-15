// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SrbFactory._(CountrySrb _) implements CountrySrb {
  const new() : this._(const CountrySrb._());
}

/// A class that represents the Serbia country.
class CountrySrb extends WorldCountry {
  /// {@template sealed_world.country_srb_constructor}
  /// Creates a instance of [CountrySrb] (Serbia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SRB`, ISO 3166-1 Alpha-2 code: `RS`.
  /// {@endtemplate}
  const factory() = _SrbFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Serbia",
          common: "Serbia",
        ),
        tld: const [".rs", ".срб"],
        code: "SRB",
        codeNumeric: "688",
        codeShort: "RS",
        cioc: "SRB",
        idd: const Idd(root: 3, suffixes: [81]),
        altSpellings: const [
          "RS",
          "Srbija",
          "Republic of Serbia",
          "Република Србија",
          "Republika Srbija",
        ],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(44, 21),
        landlocked: true,
        bordersCodes: const ["Bih", "Bgr", "Hrv", "Hun", "Mkd", "Mne", "Rou"],
        areaMetric: 88361,
        emoji: "🇷🇸",
        maps: const Maps(
          googleMaps: "2Aqof7aV2Naq8YEK8",
          openStreetMaps: "relation/1741311",
        ),
        population: 6908224,
        gini: const Gini(year: 2017, coefficient: 36.2),
        fifa: "SRB",
        car: const Car(sign: "SRB"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatRsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Belgrade"),
    latLng: LatLng(44.83, 20.5),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Serbian", male: "Serbian"),
    Demonyms(language: LangFra(), female: "Serbe", male: "Serbe"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSrp(),
      official: "Република Србија",
      common: "Србија",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSrp()];
}
