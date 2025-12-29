// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _WlfFactory._(CountryWlf _) implements CountryWlf {
  const _WlfFactory() : this._(const CountryWlf._());
}

/// A class that represents the Wallis and Futuna country.
class CountryWlf extends WorldCountry {
  /// {@template sealed_world.country_wlf_constructor}
  /// Creates a instance of [CountryWlf] (Wallis and Futuna country).
  ///
  /// ISO 3166-1 Alpha-3 code: `WLF`, ISO 3166-1 Alpha-2 code: `WF`.
  /// {@endtemplate}
  const factory CountryWlf() = _WlfFactory;

  const CountryWlf._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Territory of the Wallis and Futuna Islands",
          common: "Wallis and Futuna",
        ),
        tld: const [".wf"],
        code: "WLF",
        codeNumeric: "876",
        codeShort: "WF",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [81]),
        altSpellings: const [
          "WF",
          "Territory of the Wallis and Futuna Islands",
          "Territoire des îles Wallis et Futuna",
        ],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-13.3, -176.2),
        areaMetric: 142,
        emoji: "🇼🇫",
        maps: const Maps(
          googleMaps: "CzVqK74QYtbHv65r5",
          openStreetMaps: "relation/3412448",
        ),
        population: 11750,
        car: const Car(sign: "F"),
        timezones: const ["UTC+12:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(regExpPattern: r"^(986\d{2})$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXpf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Mata-Utu"),
    latLng: LatLng(-13.95, -171.93),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Wallis and Futuna Islander",
      male: "Wallis and Futuna Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Territoire des îles Wallis et Futuna",
      common: "Wallis et Futuna",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
