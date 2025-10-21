// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Saint Helena, Ascension and Tristan da Cunha country.
class CountryShn extends WorldCountry {
  /// {@template sealed_world.countries_shn_constructor}}
  /// Creates a instance of [CountryShn] (Saint Helena, Ascension and Tristan da Cunha country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SHN`, ISO 3166-1 Alpha-2 code: `SH`.
  /// {@endtemplate}
  const factory CountryShn() = _ShnFactory;

  const CountryShn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Saint Helena, Ascension and Tristan da Cunha",
          common: "Saint Helena, Ascension and Tristan da Cunha",
        ),
        tld: const [".sh", ".ac"],
        code: "SHN",
        codeNumeric: "654",
        codeShort: "SH",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [90, 47]),
        altSpellings: const [
          "Saint Helena",
          "St. Helena, Ascension and Tristan da Cunha",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(-15.95, -5.72),
        areaMetric: 394,
        emoji: "🇸🇭",
        maps: const Maps(
          googleMaps: "iv4VxnPzHkjLCJuc6",
          openStreetMaps: "relation/4868269#map=13/-15.9657/-5.7120",
        ),
        population: 53192,
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC+00:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(
          format: "STHL 1ZZ",
          regExpPattern: r"^(STHL1ZZ)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGbp(), FiatShp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Jamestown"),
    latLng: LatLng(-15.93, -5.72),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Saint Helenian",
      male: "Saint Helenian",
    ),
    Demonyms(
      language: LangFra(),
      female: "Sainte-Hélénoise",
      male: "Sainte-Hélènois",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Saint Helena, Ascension and Tristan da Cunha",
      common: "Saint Helena, Ascension and Tristan da Cunha",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _ShnFactory._(CountryShn _) implements CountryShn {
  const _ShnFactory() : this._(const CountryShn._());
}
