// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _NclFactory._(CountryNcl _) implements CountryNcl {
  const _NclFactory() : this._(const CountryNcl._());
}

/// A class that represents the New Caledonia country.
class CountryNcl extends WorldCountry {
  /// {@template sealed_world.country_ncl_constructor}
  /// Creates a instance of [CountryNcl] (New Caledonia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NCL`, ISO 3166-1 Alpha-2 code: `NC`.
  /// {@endtemplate}
  const factory CountryNcl() = _NclFactory;

  const CountryNcl._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "New Caledonia",
          common: "New Caledonia",
        ),
        tld: const [".nc"],
        code: "NCL",
        codeNumeric: "540",
        codeShort: "NC",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [87]),
        altSpellings: const ["NC"],
        continent: const Oceania(),
        subregion: const Melanesia(),
        latLng: const LatLng(-21.5, 165.5),
        areaMetric: 18575,
        emoji: "🇳🇨",
        maps: const Maps(
          googleMaps: "cBhtCeMdob4U7FRU9",
          openStreetMaps: "relation/3407643",
        ),
        population: 271960,
        fifa: "NCL",
        car: const Car(sign: "F"),
        timezones: const ["UTC+11:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXpf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nouméa"),
    latLng: LatLng(-22.27, 166.45),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "New Caledonian",
      male: "New Caledonian",
    ),
    Demonyms(
      language: LangFra(),
      female: "Néo-Calédonienne",
      male: "Néo-Calédonien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Nouvelle-Calédonie",
      common: "Nouvelle-Calédonie",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
