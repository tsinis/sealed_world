part of "../country.dart";

/// A class that represents a country in the world.
///
/// The `WorldCountry` class is a class that represents a country in the world.
/// It extends the `Country` class, which represents a country. It consists of
/// various fields that describe the country, such as its name, code,
/// currencies, languages, and more. The `WorldCountry` class includes methods
/// to create a new country object from its code or code short, and a static
/// method `maybeFromValue` to create a new country object from a value, such as
/// a string, while handling null values. The `WorldCountry` class also includes
/// methods to convert the country object to a string representation, and a
/// static constant `list` that contains all of the countries of the world.
///
/// Example usage:
///
/// ```dart
/// final spain = WorldCountry.fromCode("ESP");
/// print(spain.name); // Output: "Spain"
///
/// final japan = WorldCountry.fromCodeShort("JP");
/// print(japan.name); // Output: "Japan"
///
/// final unknown = WorldCountry.maybeFromValue<int>(42);
/// print(unknown); // Output: null
/// ```
class WorldCountry extends Country {
  /// Creates a new `WorldCountry` object with the given properties.
  ///
  /// The `name` parameter is required and must not be empty. The
  /// `altSpellings`, `languages`, `namesNative`, `translations`, `demonyms`,
  /// `timezones`, `bordersCodes`, and `tld` parameters should not be `null`.
  /// The `codeShort`, `codeNumeric`, `code`, `emoji`, `idd`, `latLng`, `maps`,
  /// `areaMetric`, `population`, and `startOfWeek` parameters should not be
  /// `null` and must be valid values.
  const WorldCountry({
    required super.name,
    required this.altSpellings,
    required this.areaMetric,
    required this.code, // CCA3.
    required this.codeNumeric, // CCN3.
    required this.codeShort, // CCA2.
    required this.continent,
    required this.emoji,
    required this.idd, // International Direct Dialing.
    required this.languages,
    required this.latLng,
    required this.maps,
    required this.namesNative,
    required this.population,
    required this.timezones,
    required this.tld, // Top Level Domain.
    required this.translations,
    required this.demonyms,
    required this.currencies,
    this.capitalInfo,
    this.car = const Car(),
    this.cioc, // International Olympic Committee.
    this.fifa,
    this.gini, // Gini Coefficient.
    this.hasCoatOfArms = true,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
    this.regionalBlocs,
  });

  /// Creates a new `WorldCountry` object from the given `code`
  /// ISO 3166-1 Alpha-3 code.
  ///
  /// The `code` parameter is required and must be a valid country code. Returns
  /// a `WorldCountry` object that represents the country with the given `code`.
  /// Throws a `StateError` if no such country exists.
  factory WorldCountry.fromCode(String code) => list.firstWhere(
        (country) => country.code == code.trim().toUpperCase(),
      );

  /// Creates a new `WorldCountry` object from the given `codeShort`
  /// ISO 3166-1 Alpha-2 code.
  ///
  /// The `codeShort` parameter is required and must be a valid country code
  /// short. Returns a `WorldCountry` object that represents the country with
  /// the given `codeShort`. Throws a `StateError` if no such country exists.
  factory WorldCountry.fromCodeShort(String codeShort) => list.firstWhere(
        (country) => country.codeShort == codeShort.trim().toUpperCase(),
      );

  /// The native names of the country.
  final List<CountryName> namesNative;

  /// The top level domain names for the country.
  final List<String> tld;

  /// The three-letter ISO 3166-1 Alpha-3 code of the country.
  final String code;

  /// The three-digit ISO 3166-1 Numeric code of the country.
  final String codeNumeric;

  /// The two-letter ISO 3166-1 Alpha-2 code of the country.
  final String codeShort;

  /// The International Olympic Committee code of the country.
  final String? cioc;

  /// Whether the country is an independent state.
  final bool independent;

  /// Whether the country is a member of the United Nations.
  final bool unMember;

  /// The currencies used in the country.
  final List<FiatCurrency>? currencies;

  /// The international direct dialing codes for the country.
  final Idd idd;

  /// The alternate spellings of the country name.
  final List<String> altSpellings;

  /// The continent where the country is located.
  final Continent continent;

  /// The subregion where the country is located.
  final SubRegion? subregion;

  /// The official languages spoken in the country.
  final List<NaturalLanguage> languages;

  /// The translations of the country name.
  final List<CountryName> translations;

  /// The geographic coordinates of the country.
  final LatLng latLng;

  /// Whether the country is landlocked.
  final bool landlocked;

  /// The codes of the countries that share borders with this country.
  final List<String>? bordersCodes;

  /// The area of the country in square kilometers.
  final double areaMetric;

  /// The demonym names for the people of the country.
  final List<Demonyms> demonyms;

  /// The emoji flag for the country.
  final String emoji;

  /// The maps of the country.
  final Maps maps;

  /// The population of the country.
  final int population;

  /// The Gini coefficient of the country.
  final Gini? gini;

  /// The FIFA code of the country.
  final String? fifa;

  /// The car information of the country.
  final Car car;

  /// The time zones of the country.
  final List<String> timezones;

  /// Whether the country has an official coat of arms.
  final bool hasCoatOfArms;

  /// The first day of the week in the country.
  final Weekday startOfWeek;

  /// The capital city information of the country.
  final CapitalInfo? capitalInfo;

  /// The postal code information of the country.
  final PostalCode? postalCode;

  /// The regional blocs of the country.
  final List<RegionalBloc>? regionalBlocs;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """WorldCountry(name: $name, namesNative: $namesNative  tld: $tld, codeShort: $codeShort, codeNumeric: $codeNumeric, code: $code, cioc: $cioc, independent: $independent, unMember: $unMember, currencies: $currencies, idd: $idd, altSpellings: $altSpellings, continent: $continent, subregion: $subregion, languages: $languages, translations: $translations, latLng: $latLng, landlocked: $landlocked, bordersCodes: $bordersCodes, areaMetric: $areaMetric, demonyms: $demonyms, emoji: $emoji, maps: $maps, population: $population, gini: $gini, fifa: $fifa, car: $car, timezones: $timezones, hasCoatOfArms: $hasCoatOfArms, startOfWeek: $startOfWeek, capitalInfo: $capitalInfo, postalCode: $postalCode)""";

  /// Returns a `WorldCountry` object that represents the country with the given
  /// `value`.
  ///
  /// The `value` parameter is required and should not be `null`. The `where`
  /// parameter is an optional function that takes a `WorldCountry` object as
  /// its parameter and returns a value to compare with `value`. If `where` is
  /// `null`, the `code` field of the `WorldCountry` object will be used. The
  /// `countries` parameter is an optional iterable of `WorldCountry` objects
  /// that defaults to `list`. Returns a `WorldCountry` object that represents
  /// the country with the given `value`, or `null` if no such country exists.
  static WorldCountry? maybeFromValue<T extends Object>(
    T value, {
    T? Function(WorldCountry country)? where,
    Iterable<WorldCountry> countries = list,
  }) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");
    for (final country in countries) {
      final expectedValue = where?.call(country) ?? country.code;
      if (expectedValue == value) return country;
    }

    return null;
  }

  /// The list of all countries.
  static const list = [
    CountryAfg(),
    CountryAla(),
    CountryAlb(),
    CountryDza(),
    CountryAsm(),
    CountryAnd(),
    CountryAgo(),
    CountryAia(),
    CountryAta(),
    CountryAtg(),
    CountryArg(),
    CountryArm(),
    CountryAbw(),
    CountryAus(),
    CountryAut(),
    CountryAze(),
    CountryBhs(),
    CountryBhr(),
    CountryBgd(),
    CountryBrb(),
    CountryBlr(),
    CountryBel(),
    CountryBlz(),
    CountryBen(),
    CountryBmu(),
    CountryBtn(),
    CountryBol(),
    CountryBih(),
    CountryBwa(),
    CountryBvt(),
    CountryBra(),
    CountryIot(),
    CountryVgb(),
    CountryBrn(),
    CountryBgr(),
    CountryBfa(),
    CountryBdi(),
    CountryKhm(),
    CountryCmr(),
    CountryCan(),
    CountryCpv(),
    CountryBes(),
    CountryCym(),
    CountryCaf(),
    CountryTcd(),
    CountryChl(),
    CountryChn(),
    CountryCxr(),
    CountryCck(),
    CountryCol(),
    CountryCom(),
    CountryCok(),
    CountryCri(),
    CountryHrv(),
    CountryCub(),
    CountryCuw(),
    CountryCyp(),
    CountryCze(),
    CountryCod(),
    CountryDnk(),
    CountryDji(),
    CountryDma(),
    CountryDom(),
    CountryEcu(),
    CountryEgy(),
    CountrySlv(),
    CountryGnq(),
    CountryEri(),
    CountryEst(),
    CountrySwz(),
    CountryEth(),
    CountryFlk(),
    CountryFro(),
    CountryFji(),
    CountryFin(),
    CountryFra(),
    CountryGuf(),
    CountryPyf(),
    CountryAtf(),
    CountryGab(),
    CountryGmb(),
    CountryGeo(),
    CountryDeu(),
    CountryGha(),
    CountryGib(),
    CountryGrc(),
    CountryGrl(),
    CountryGrd(),
    CountryGlp(),
    CountryGum(),
    CountryGtm(),
    CountryGgy(),
    CountryGin(),
    CountryGnb(),
    CountryGuy(),
    CountryHti(),
    CountryHmd(),
    CountryHnd(),
    CountryHkg(),
    CountryHun(),
    CountryIsl(),
    CountryInd(),
    CountryIdn(),
    CountryIrn(),
    CountryIrq(),
    CountryIrl(),
    CountryImn(),
    CountryIsr(),
    CountryIta(),
    CountryCiv(),
    CountryJam(),
    CountryJpn(),
    CountryJey(),
    CountryJor(),
    CountryKaz(),
    CountryKen(),
    CountryKir(),
    CountryKwt(),
    CountryKgz(),
    CountryLao(),
    CountryLva(),
    CountryLbn(),
    CountryLso(),
    CountryLbr(),
    CountryLby(),
    CountryLie(),
    CountryLtu(),
    CountryLux(),
    CountryMac(),
    CountryMdg(),
    CountryMwi(),
    CountryMys(),
    CountryMdv(),
    CountryMli(),
    CountryMlt(),
    CountryMhl(),
    CountryMtq(),
    CountryMrt(),
    CountryMus(),
    CountryMyt(),
    CountryMex(),
    CountryFsm(),
    CountryMda(),
    CountryMco(),
    CountryMng(),
    CountryMne(),
    CountryMsr(),
    CountryMar(),
    CountryMoz(),
    CountryMmr(),
    CountryNam(),
    CountryNru(),
    CountryNpl(),
    CountryNld(),
    CountryNcl(),
    CountryNzl(),
    CountryNic(),
    CountryNer(),
    CountryNga(),
    CountryNiu(),
    CountryNfk(),
    CountryPrk(),
    CountryMkd(),
    CountryMnp(),
    CountryNor(),
    CountryOmn(),
    CountryPak(),
    CountryPlw(),
    CountryPse(),
    CountryPan(),
    CountryPng(),
    CountryPry(),
    CountryPer(),
    CountryPhl(),
    CountryPcn(),
    CountryPol(),
    CountryPrt(),
    CountryPri(),
    CountryQat(),
    CountryCog(),
    CountryRou(),
    CountryRus(),
    CountryRwa(),
    CountryReu(),
    CountryBlm(),
    CountryShn(),
    CountryKna(),
    CountryLca(),
    CountryMaf(),
    CountrySpm(),
    CountryVct(),
    CountryWsm(),
    CountrySmr(),
    CountrySau(),
    CountrySen(),
    CountrySrb(),
    CountrySyc(),
    CountrySle(),
    CountrySgp(),
    CountrySxm(),
    CountrySvk(),
    CountrySvn(),
    CountrySlb(),
    CountrySom(),
    CountryZaf(),
    CountrySgs(),
    CountryKor(),
    CountrySsd(),
    CountryEsp(),
    CountryLka(),
    CountrySdn(),
    CountrySur(),
    CountrySjm(),
    CountrySwe(),
    CountryChe(),
    CountrySyr(),
    CountryStp(),
    CountryTwn(),
    CountryTjk(),
    CountryTza(),
    CountryTha(),
    CountryTls(),
    CountryTgo(),
    CountryTkl(),
    CountryTon(),
    CountryTto(),
    CountryTun(),
    CountryTur(),
    CountryTkm(),
    CountryTca(),
    CountryTuv(),
    CountryUga(),
    CountryUkr(),
    CountryAre(),
    CountryGbr(),
    CountryUsa(),
    CountryUmi(),
    CountryVir(),
    CountryUry(),
    CountryUzb(),
    CountryVut(),
    CountryVat(),
    CountryVen(),
    CountryVnm(),
    CountryWlf(),
    CountryEsh(),
    CountryYem(),
    CountryZmb(),
    CountryZwe(),
    CountryUnk(),
  ];
}
