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
class WorldCountry extends Country
    implements
        IsoTranslated<TranslatedName, CountryName>,
        JsonEncodable<WorldCountry> {
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
  })  : assert(
          code.length == IsoStandardized.codeLength,
          """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
        ),
        assert(
          codeShort.length == IsoStandardized.codeShortLength,
          """`codeShort` should be exactly ${IsoStandardized.codeShortLength} characters long!""",
        ),
        assert(emoji.length > 0, "`emoji` should not be empty!"),
        assert(
          namesNative != const <CountryName>[],
          "`namesNative` should not be empty!",
        ),
        assert(
          altSpellings != const <String>[],
          "`altSpellings` should not be empty!",
        ),
        assert(
          languages != const <NaturalLanguage>[],
          "`languages` should not be empty!",
        ),
        assert(
          timezones != const <String>[],
          "`timezones` should not be empty!",
        ),
        assert(
          translations != const <TranslatedName>[],
          "`translations` should not be empty!",
        ),
        assert(
          demonyms != const <Demonyms>[],
          "`demonyms` should not be empty!",
        ),
        assert(cioc == null || cioc.length > 0, "`cioc` should not be empty!"),
        assert(fifa == null || fifa.length > 0, "`fifa` should not be empty!"),
        assert(
          bordersCodes != const <String>[],
          "`bordersCodes` should not be empty!",
        ),
        assert(
          regionalBlocs != const <RegionalBloc>[],
          "`bordersCodes` should not be empty!",
        );

  /// Returns an `WorldCountry` object from the given `code`
  /// ISO 3166-1 Alpha-3 code.
  ///
  /// The `code` parameter is required and must be a valid country code. Returns
  /// a `WorldCountry` object that represents the country with the given `code`.
  /// Throws a `StateError` if no such country exists.
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  factory WorldCountry.fromCode(
    String code, [
    Iterable<WorldCountry> countries = list,
  ]) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");

    return countries.firstWhere((co) => co.code == code.trim().toUpperCase());
  }

  /// Returns an `WorldCountry` object from the given `codeShort`
  /// ISO 3166-1 Alpha-2 code.
  ///
  /// The `codeShort` parameter is required and must be a valid country code
  /// short. Returns a `WorldCountry` object that represents the country with
  /// the given `codeShort`. Throws a `StateError` if no such country exists.
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  factory WorldCountry.fromCodeShort(
    String codeShort, [
    Iterable<WorldCountry> countries = list,
  ]) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");

    return countries
        .firstWhere((co) => co.codeShort == codeShort.trim().toUpperCase());
  }

  /// Returns an [WorldCountry] object from the given `code` ISO 3166-1 code.
  ///
  /// The `code` parameter is required and must be a valid country code. Returns
  /// a [WorldCountry] object that represents the country with the given `code`.
  /// Throws a `StateError` if no such country exists.
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  factory WorldCountry.fromCodeNumeric(
    String codeNumeric, [
    Iterable<WorldCountry> countries = list,
  ]) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");

    return countries.firstWhere((co) => co.codeNumeric == codeNumeric.trim());
  }

  /// Returns an instance of the [WorldCountry] class from any valid
  /// ISO 3166 code.
  ///
  /// The [code] parameter is required and should be a string representing the
  /// ISO 3166 code for the country. The optional [countries] parameter can be
  /// used to specify a list of [WorldCountry] objects to search through.
  /// This method returns the [WorldCountry] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final country = WorldCountry.fromAnyCode("BLR");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "BLR". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [WorldCountry] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [WorldCountry] instance. The resulting [WorldCountry] instance is assigned
  /// to the `code` variable.
  factory WorldCountry.fromAnyCode(
    String code, [
    Iterable<WorldCountry> countries = list,
  ]) =>
      code.maybeMapIsoCode(
        orElse: (_) => WorldCountry.fromCode(code, countries),
        short: (_) => WorldCountry.fromCodeShort(code, countries),
        numeric: (_) => WorldCountry.fromCodeNumeric(code, countries),
      );

  /// The native names of the country.
  @override
  final List<CountryName> namesNative;

  /// The top level domain names for the country.
  final List<String> tld;

  /// The three-letter ISO 3166-1 Alpha-3 code of the country.
  @override
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
  @override
  final List<TranslatedName> translations;

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
  String? get codeOther => codeShort;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''WorldCountry(name: $name, namesNative: $namesNative, tld: ${jsonEncode(tld)}, code: "$code", codeNumeric: "$codeNumeric", codeShort: "$codeShort", cioc: ${cioc == null ? cioc : '"$cioc"'}, independent: $independent, unMember: $unMember, currencies: ${currencies?.toInstancesString()}, idd: $idd, altSpellings: ${jsonEncode(altSpellings)}, continent: ${continent.runtimeType}(), subregion: ${subregion == null ? subregion : '${subregion?.runtimeType}()'}, languages: ${languages.toInstancesString()}, translations: ${code.toLowerCase()}CountryTranslations, latLng: $latLng, landlocked: $landlocked, bordersCodes: ${jsonEncode(bordersCodes)}, areaMetric: $areaMetric, demonyms: $demonyms, emoji: "$emoji", maps: $maps, population: $population, gini: $gini, fifa: ${fifa == null ? fifa : '"$fifa"'}, car: $car, timezones: ${jsonEncode(timezones)}, hasCoatOfArms: $hasCoatOfArms, startOfWeek: $startOfWeek, capitalInfo: ${capitalInfo?.toString(short: false)}, postalCode: $postalCode, regionalBlocs: ${regionalBlocs?.toInstancesString()})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

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

  /// Returns a [WorldCountry] instance that corresponds to the given code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and represents the value to match
  /// against. The optional [countries] parameter can be used to specify a list
  /// of [WorldCountry] objects to search through. This method returns the
  /// [WorldCountry] instance that corresponds to the given value, or `null` if
  /// no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// WorldCountry? blr = WorldCountry.maybeFromAnyCode(CountryEnum.blr.name);
  /// print(blr != null) // Prints: true.
  /// ```
  ///
  /// In the above example, the `maybeFromAnyCode` method is called with the
  /// value "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [WorldCountry] instance.
  /// If the value is two characters code, it compares it
  /// with the `codeShort` property of each [WorldCountry] instance.
  /// Otherwise, it compares it with the uppercase version of the `code`
  /// property of each [WorldCountry] instance. The resulting [WorldCountry]
  /// instance is assigned to the `country` variable.
  static WorldCountry? maybeFromAnyCode(
    String? code, [
    Iterable<WorldCountry> countries = list,
  ]) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");
    final trimmedCode = code?.trim().toUpperCase();
    if (trimmedCode?.isEmpty ?? true) return null;

    for (final country in countries) {
      final expectedValue = trimmedCode?.maybeMapIsoCode(
        orElse: (_) => country.code,
        numeric: (_) => country.codeNumeric,
        short: (_) => country.codeShort,
      );
      if (expectedValue == trimmedCode) return country;
    }

    return null;
  }

  /// The general standard ISO code for countries, defined as ISO 3166-1.
  static const standardGeneralName = "3166-1";

  /// The standard ISO code name for countries, defined as ISO 3166-1 Alpha-3.
  static const standardCodeName = "$standardGeneralName Alpha-3";

  /// The standard ISO code name for countries, defined as ISO 3166-1 Alpha-2.
  static const standardCodeShortName = "$standardGeneralName Alpha-2";

  /// The standard numeric ISO code name for countries, defined as
  /// ISO 3166-1 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A list of all the countries currently
  /// supported by the [WorldCountry] class.
  static const list = [
    CountryAbw(),
    CountryAfg(),
    CountryAgo(),
    CountryAia(),
    CountryAla(),
    CountryAlb(),
    CountryAnd(),
    CountryAre(),
    CountryArg(),
    CountryArm(),
    CountryAsm(),
    CountryAta(),
    CountryAtf(),
    CountryAtg(),
    CountryAus(),
    CountryAut(),
    CountryAze(),
    CountryBdi(),
    CountryBel(),
    CountryBen(),
    CountryBes(),
    CountryBfa(),
    CountryBgd(),
    CountryBgr(),
    CountryBhr(),
    CountryBhs(),
    CountryBih(),
    CountryBlm(),
    CountryBlr(),
    CountryBlz(),
    CountryBmu(),
    CountryBol(),
    CountryBra(),
    CountryBrb(),
    CountryBrn(),
    CountryBtn(),
    CountryBvt(),
    CountryBwa(),
    CountryCaf(),
    CountryCan(),
    CountryCck(),
    CountryChe(),
    CountryChl(),
    CountryChn(),
    CountryCiv(),
    CountryCmr(),
    CountryCod(),
    CountryCog(),
    CountryCok(),
    CountryCol(),
    CountryCom(),
    CountryCpv(),
    CountryCri(),
    CountryCub(),
    CountryCuw(),
    CountryCxr(),
    CountryCym(),
    CountryCyp(),
    CountryCze(),
    CountryDeu(),
    CountryDji(),
    CountryDma(),
    CountryDnk(),
    CountryDom(),
    CountryDza(),
    CountryEcu(),
    CountryEgy(),
    CountryEri(),
    CountryEsh(),
    CountryEsp(),
    CountryEst(),
    CountryEth(),
    CountryFin(),
    CountryFji(),
    CountryFlk(),
    CountryFra(),
    CountryFro(),
    CountryFsm(),
    CountryGab(),
    CountryGbr(),
    CountryGeo(),
    CountryGgy(),
    CountryGha(),
    CountryGib(),
    CountryGin(),
    CountryGlp(),
    CountryGmb(),
    CountryGnb(),
    CountryGnq(),
    CountryGrc(),
    CountryGrd(),
    CountryGrl(),
    CountryGtm(),
    CountryGuf(),
    CountryGum(),
    CountryGuy(),
    CountryHkg(),
    CountryHmd(),
    CountryHnd(),
    CountryHrv(),
    CountryHti(),
    CountryHun(),
    CountryIdn(),
    CountryImn(),
    CountryInd(),
    CountryIot(),
    CountryIrl(),
    CountryIrn(),
    CountryIrq(),
    CountryIsl(),
    CountryIsr(),
    CountryIta(),
    CountryJam(),
    CountryJey(),
    CountryJor(),
    CountryJpn(),
    CountryKaz(),
    CountryKen(),
    CountryKgz(),
    CountryKhm(),
    CountryKir(),
    CountryKna(),
    CountryKor(),
    CountryKwt(),
    CountryLao(),
    CountryLbn(),
    CountryLbr(),
    CountryLby(),
    CountryLca(),
    CountryLie(),
    CountryLka(),
    CountryLso(),
    CountryLtu(),
    CountryLux(),
    CountryLva(),
    CountryMac(),
    CountryMaf(),
    CountryMar(),
    CountryMco(),
    CountryMda(),
    CountryMdg(),
    CountryMdv(),
    CountryMex(),
    CountryMhl(),
    CountryMkd(),
    CountryMli(),
    CountryMlt(),
    CountryMmr(),
    CountryMne(),
    CountryMng(),
    CountryMnp(),
    CountryMoz(),
    CountryMrt(),
    CountryMsr(),
    CountryMtq(),
    CountryMus(),
    CountryMwi(),
    CountryMys(),
    CountryMyt(),
    CountryNam(),
    CountryNcl(),
    CountryNer(),
    CountryNfk(),
    CountryNga(),
    CountryNic(),
    CountryNiu(),
    CountryNld(),
    CountryNor(),
    CountryNpl(),
    CountryNru(),
    CountryNzl(),
    CountryOmn(),
    CountryPak(),
    CountryPan(),
    CountryPcn(),
    CountryPer(),
    CountryPhl(),
    CountryPlw(),
    CountryPng(),
    CountryPol(),
    CountryPri(),
    CountryPrk(),
    CountryPrt(),
    CountryPry(),
    CountryPse(),
    CountryPyf(),
    CountryQat(),
    CountryReu(),
    CountryRou(),
    CountryRus(),
    CountryRwa(),
    CountrySau(),
    CountrySdn(),
    CountrySen(),
    CountrySgp(),
    CountrySgs(),
    CountryShn(),
    CountrySjm(),
    CountrySlb(),
    CountrySle(),
    CountrySlv(),
    CountrySmr(),
    CountrySom(),
    CountrySpm(),
    CountrySrb(),
    CountrySsd(),
    CountryStp(),
    CountrySur(),
    CountrySvk(),
    CountrySvn(),
    CountrySwe(),
    CountrySwz(),
    CountrySxm(),
    CountrySyc(),
    CountrySyr(),
    CountryTca(),
    CountryTcd(),
    CountryTgo(),
    CountryTha(),
    CountryTjk(),
    CountryTkl(),
    CountryTkm(),
    CountryTls(),
    CountryTon(),
    CountryTto(),
    CountryTun(),
    CountryTur(),
    CountryTuv(),
    CountryTwn(),
    CountryTza(),
    CountryUga(),
    CountryUkr(),
    CountryUmi(),
    CountryUry(),
    CountryUsa(),
    CountryUzb(),
    CountryVat(),
    CountryVct(),
    CountryVen(),
    CountryVgb(),
    CountryVir(),
    CountryVnm(),
    CountryVut(),
    CountryWlf(),
    CountryWsm(),
    CountryYem(),
    CountryZaf(),
    CountryZmb(),
    CountryZwe(),
    CountryUnk(), // User assigned country.
  ];
}
