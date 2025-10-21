// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Dominican Republic country.
class CountryDom extends WorldCountry {
  /// {@template sealed_world.countries_dom_constructor}}
  /// Creates a instance of [CountryDom] (Dominican Republic country).
  ///
  /// ISO 3166-1 Alpha-3 code: `DOM`, ISO 3166-1 Alpha-2 code: `DO`.
  /// {@endtemplate}
  const factory CountryDom() = _DomFactory;

  const CountryDom._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Dominican Republic",
          common: "Dominican Republic",
        ),
        tld: const [".do"],
        code: "DOM",
        codeNumeric: "214",
        codeShort: "DO",
        cioc: "DOM",
        idd: const Idd(root: 1, suffixes: [809, 829, 849]),
        altSpellings: const ["DO"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(19, -70.66666666),
        bordersCodes: const ["Hti"],
        areaMetric: 48671,
        emoji: "🇩🇴",
        maps: const Maps(
          googleMaps: "soxooTHxEeiAbn3UA",
          openStreetMaps: "relation/307828",
        ),
        population: 11532151,
        gini: const Gini(year: 2022, coefficient: 37),
        fifa: "DOM",
        car: const Car(sign: "DOM"),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDop()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Santo Domingo"),
    latLng: LatLng(18.47, -69.9),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM(), BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Dominican", male: "Dominican"),
    Demonyms(language: LangFra(), female: "Dominicaine", male: "Dominicain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República Dominicana",
      common: "República Dominicana",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}

extension type const _DomFactory._(CountryDom _) implements CountryDom {
  const _DomFactory() : this._(const CountryDom._());
}
