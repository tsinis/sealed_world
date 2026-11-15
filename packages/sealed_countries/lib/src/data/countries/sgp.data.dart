// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SgpFactory._(CountrySgp _) implements CountrySgp {
  const new() : this._(const CountrySgp._());
}

/// A class that represents the Singapore country.
class CountrySgp extends WorldCountry {
  /// {@template sealed_world.country_sgp_constructor}
  /// Creates a instance of [CountrySgp] (Singapore country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SGP`, ISO 3166-1 Alpha-2 code: `SG`.
  /// {@endtemplate}
  const factory() = _SgpFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Singapore",
          common: "Singapore",
        ),
        tld: const [".sg", ".新加坡", ".சிங்கப்பூர்"],
        code: "SGP",
        codeNumeric: "702",
        codeShort: "SG",
        cioc: "SGP",
        idd: const Idd(root: 6, suffixes: [5]),
        altSpellings: const ["SG", "Singapura", "Republik Singapura", "新加坡共和国"],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(1.36666666, 103.8),
        areaMetric: 710,
        emoji: "🇸🇬",
        maps: const Maps(
          googleMaps: "QbQt9Y9b5KFzsahV6",
          openStreetMaps: "relation/536780",
        ),
        population: 5685807,
        fifa: "SIN",
        car: const Car(sign: "SGP", isRightSide: false),
        timezones: const ["UTC+08:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSgd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Singapore"),
    latLng: LatLng(1.28, 103.85),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Singaporean", male: "Singaporean"),
    Demonyms(
      language: LangFra(),
      female: "Singapourienne",
      male: "Singapourien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Singapore",
      common: "Singapore",
    ),
    CountryName(language: LangZho(), official: "新加坡共和国", common: "新加坡"),
    CountryName(
      language: LangMsa(),
      official: "Republik Singapura",
      common: "Singapura",
    ),
    CountryName(
      language: LangTam(),
      official: "சிங்கப்பூர் குடியரசு",
      common: "சிங்கப்பூர்",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangZho(),
    LangEng(),
    LangMsa(),
    LangTam(),
  ];
}
