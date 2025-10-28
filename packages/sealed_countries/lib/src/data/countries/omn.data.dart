// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _OmnFactory._(CountryOmn _) implements CountryOmn {
  const _OmnFactory() : this._(const CountryOmn._());
}

/// A class that represents the Oman country.
class CountryOmn extends WorldCountry {
  /// {@template sealed_world.country_omn_constructor}
  /// Creates a instance of [CountryOmn] (Oman country).
  ///
  /// ISO 3166-1 Alpha-3 code: `OMN`, ISO 3166-1 Alpha-2 code: `OM`.
  /// {@endtemplate}
  const factory CountryOmn() = _OmnFactory;

  const CountryOmn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Sultanate of Oman",
          common: "Oman",
        ),
        tld: const [".om"],
        code: "OMN",
        codeNumeric: "512",
        codeShort: "OM",
        cioc: "OMA",
        idd: const Idd(root: 9, suffixes: [68]),
        altSpellings: const ["OM", "Sultanate of Oman", "Salṭanat ʻUmān"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(21, 57),
        bordersCodes: const ["Sau", "Are", "Yem"],
        areaMetric: 309500,
        emoji: "🇴🇲",
        maps: const Maps(
          googleMaps: "L2BoXoAwDDwWecnw5",
          openStreetMaps: "relation/305138",
        ),
        population: 5106622,
        fifa: "OMA",
        car: const Car(sign: "OM"),
        timezones: const ["UTC+04:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(
          format: "###",
          regExpPattern: r"^(\d{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatOmr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Muscat"),
    latLng: LatLng(23.62, 58.58),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Omani", male: "Omani"),
    Demonyms(language: LangFra(), female: "Omanaise", male: "Omanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangAra(), official: "سلطنة عمان", common: "عمان"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
