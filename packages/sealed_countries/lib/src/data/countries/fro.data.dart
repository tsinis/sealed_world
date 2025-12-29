// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _FroFactory._(CountryFro _) implements CountryFro {
  const _FroFactory() : this._(const CountryFro._());
}

/// A class that represents the Faroe Islands country.
class CountryFro extends WorldCountry {
  /// {@template sealed_world.country_fro_constructor}
  /// Creates a instance of [CountryFro] (Faroe Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `FRO`, ISO 3166-1 Alpha-2 code: `FO`.
  /// {@endtemplate}
  const factory CountryFro() = _FroFactory;

  const CountryFro._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Faroe Islands",
          common: "Faroe Islands",
        ),
        tld: const [".fo"],
        code: "FRO",
        codeNumeric: "234",
        codeShort: "FO",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [98]),
        altSpellings: const ["FO", "Føroyar", "Færøerne"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(62, -7),
        areaMetric: 1393,
        emoji: "🇫🇴",
        maps: const Maps(
          googleMaps: "6sTru4SmHdEVcNkM6",
          openStreetMaps: "relation/52939",
        ),
        population: 48346,
        fifa: "FRO",
        car: const Car(sign: "FO"),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "FO-###",
          regExpPattern: r"^(?:FO)*(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDkk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tórshavn"),
    latLng: LatLng(62.01, -6.77),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Faroese", male: "Faroese"),
    Demonyms(language: LangFra(), female: "Féroïenne", male: "Féroïen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangDan(), official: "Færøerne", common: "Færøerne"),
    CountryName(language: LangFao(), official: "Føroyar", common: "Føroyar"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDan(), LangFao()];
}
