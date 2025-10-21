// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Barbados country.
class CountryBrb extends WorldCountry {
  /// {@template sealed_world.countries_brb_constructor}}
  /// Creates a instance of [CountryBrb] (Barbados country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BRB`, ISO 3166-1 Alpha-2 code: `BB`.
  /// {@endtemplate}
  const factory CountryBrb() = _BrbFactory;

  const CountryBrb._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Barbados",
          common: "Barbados",
        ),
        tld: const [".bb"],
        code: "BRB",
        codeNumeric: "052",
        codeShort: "BB",
        cioc: "BAR",
        idd: const Idd(root: 1, suffixes: [246]),
        altSpellings: const ["BB"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(13.16666666, -59.53333333),
        areaMetric: 430,
        emoji: "🇧🇧",
        maps: const Maps(
          googleMaps: "2m36v8STvbGAWd9c7",
          openStreetMaps: "relation/547511",
        ),
        population: 287371,
        fifa: "BRB",
        car: const Car(sign: "BDS", isRightSide: false),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(
          format: "BB#####",
          regExpPattern: r"^(?:BB)*(\d{5})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBbd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bridgetown"),
    latLng: LatLng(13.1, -59.62),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Barbadian", male: "Barbadian"),
    Demonyms(language: LangFra(), female: "Barbadienne", male: "Barbadien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Barbados", common: "Barbados"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _BrbFactory._(CountryBrb _) implements CountryBrb {
  const _BrbFactory() : this._(const CountryBrb._());
}
