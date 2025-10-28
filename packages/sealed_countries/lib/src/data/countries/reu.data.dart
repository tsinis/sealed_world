// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ReuFactory._(CountryReu _) implements CountryReu {
  const _ReuFactory() : this._(const CountryReu._());
}

/// A class that represents the Réunion country.
class CountryReu extends WorldCountry {
  /// {@template sealed_world.country_reu_constructor}
  /// Creates a instance of [CountryReu] (Réunion country).
  ///
  /// ISO 3166-1 Alpha-3 code: `REU`, ISO 3166-1 Alpha-2 code: `RE`.
  /// {@endtemplate}
  const factory CountryReu() = _ReuFactory;

  const CountryReu._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Réunion Island",
          common: "Réunion",
        ),
        tld: const [".re"],
        code: "REU",
        codeNumeric: "638",
        codeShort: "RE",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [62]),
        altSpellings: const ["RE", "Reunion"],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-21.15, 55.5),
        areaMetric: 2511,
        emoji: "🇷🇪",
        maps: const Maps(
          googleMaps: "wWpBrXsp8UHVbah29",
          openStreetMaps: "relation/1785276",
        ),
        population: 840974,
        car: const Car(sign: "F"),
        timezones: const ["UTC+04:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(regExpPattern: r"^((97|98)(4|7|8)\d{2})$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Saint-Denis"),
    latLng: LatLng(-20.88, 55.45),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Réunionese", male: "Réunionese"),
    Demonyms(language: LangFra(), female: "Réunionnaise", male: "Réunionnais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Ile de la Réunion",
      common: "La Réunion",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
