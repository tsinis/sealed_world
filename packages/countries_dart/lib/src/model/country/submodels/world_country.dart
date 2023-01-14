part of "../country.dart";

class WorldCountry extends Country {
  const WorldCountry({
    required super.name,
    required this.nativeNames,
    required this.tld,
    required this.codeShort, // CCA2.
    required this.codeNumeric, // CCN3.
    required this.code, // CCA3.
    required this.altSpellings,
    required this.continent,
    required this.languages,
    required this.translations,
    required this.latLng,
    required this.area,
    required this.emoji,
    required this.maps,
    required this.population,
    required this.car,
    required this.timezones,
    this.capitalInfo,
    this.cioc,
    this.currencies,
    this.demonyms, // Could be required.
    this.fifa,
    this.gini,
    this.hasCoatOfArms = true,
    this.idd,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
  });

  factory WorldCountry.fromCode(String code) =>
      list.firstWhere((country) => country.code == code.toUpperCase());

  factory WorldCountry.fromCodeShort(String codeShort) => list
      .firstWhere((country) => country.codeShort == codeShort.toUpperCase());

  final List<CountryName> nativeNames;
  final List<String> tld;
  final String codeShort;
  final String codeNumeric;
  final String code;
  final String? cioc;
  final bool independent;
  final bool unMember;
  final List<FiatCurrency>? currencies;
  final Idd? idd;
  final List<String> altSpellings;
  final Continent continent;
  final SubRegion? subregion;
  final List<NaturalLanguage> languages;
  final List<CountryName> translations;
  final List<double> latLng;
  final bool landlocked;
  final List<String>? bordersCodes;
  final double area;
  final List<Demonyms>? demonyms;
  final String emoji;
  final Maps maps;
  final int population;
  final Gini? gini;
  final String? fifa;
  final Car car;
  final List<String> timezones;
  final bool hasCoatOfArms;
  final Weekday startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """WorldCountry(name: $name, nativeNames: $nativeNames  tld: $tld, codeShort: $codeShort, codeNumeric: $codeNumeric, code: $code, cioc: $cioc, independent: $independent, unMember: $unMember, currencies: $currencies, idd: $idd, altSpellings: $altSpellings, continent: $continent, subregion: $subregion, languages: $languages, translations: $translations, latLng: $latLng, landlocked: $landlocked, bordersCodes: $bordersCodes, area: $area, demonyms: $demonyms, emoji: $emoji, maps: $maps, population: $population, gini: $gini, fifa: $fifa, car: $car, timezones: $timezones, hasCoatOfArms: $hasCoatOfArms, startOfWeek: $startOfWeek, capitalInfo: $capitalInfo, postalCode: $postalCode)""";

  bool get isOfficiallyAssigned =>
      codeShort.isNotEmpty &&
      code.isNotEmpty &&
      codeNumeric.isNotEmpty &&
      tld.isNotEmpty;

  static WorldCountry? maybeFromValue<T extends Object>(
    T value, {
    T? Function(WorldCountry lang)? where,
    Iterable<WorldCountry> countries = list,
  }) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");
    for (final country in countries) {
      final expectedValue = where?.call(country) ?? country.code;
      if (expectedValue == value) {
        return country;
      }
    }

    return null;
  }

  List<WorldCountry>? get borders => bordersCodes != null
      ? List.unmodifiable(
          bordersCodes!.map<WorldCountry>(WorldCountry.fromCode),
        )
      : null;

  static const list = [
    CountryCpv(),
    CountrySgp(),
    CountryMrt(),
    CountryPol(),
    CountryTcd(),
    CountryJpn(),
    CountryCub(),
    CountryMoz(),
    CountryGbr(),
    CountryIrl(),
    CountryNer(),
    CountryGmb(),
    CountryUzb(),
    CountryRus(),
    CountryTkm(),
    CountryAia(),
    CountryVnm(),
    CountryAta(),
    CountrySwz(),
    CountryKhm(),
    CountryVut(),
    CountryAla(),
    CountryAus(),
    CountryIot(),
    CountrySvk(),
    CountryBra(),
    CountryTjk(),
    CountrySgs(),
    CountryLbr(),
    CountryNga(),
    CountryCol(),
    CountrySmr(),
    CountryShn(),
    CountryEgy(),
    CountryHnd(),
    CountryIdn(),
    CountryPrk(),
    CountryMac(),
    CountrySle(),
    CountryMda(),
    CountryPhl(),
    CountryCmr(),
    CountryGrl(),
    CountryMtq(),
    CountryLbn(),
    CountryRwa(),
    CountryBih(),
    CountryMhl(),
    CountryIta(),
    CountryTkl(),
    CountryGab(),
    CountryCck(),
    CountryPak(),
    CountryReu(),
    CountryMus(),
    CountryGrd(),
    CountryOmn(),
    CountryBfa(),
    CountryWsm(),
    CountryTto(),
    CountryVct(),
    CountryPlw(),
    CountryZaf(),
    CountryAgo(),
    CountryKor(),
    CountryAtf(),
    CountryIsl(),
    CountryGuf(),
    CountryNor(),
    CountryHun(),
    CountryPse(),
    CountryLca(),
    CountryNpl(),
    CountryMng(),
    CountryZmb(),
    CountryWlf(),
    CountryMwi(),
    CountryBhr(),
    CountryUkr(),
    CountryNru(),
    CountryMyt(),
    CountryDza(),
    CountryCan(),
    CountryLie(),
    CountryEth(),
    CountryDom(),
    CountryBvt(),
    CountryNfk(),
    CountryNld(),
    CountryMnp(),
    CountryHkg(),
    CountryIrq(),
    CountryEsp(),
    CountryTgo(),
    CountryChn(),
    CountryFlk(),
    CountryUsa(),
    CountryMaf(),
    CountryIrn(),
    CountryMex(),
    CountryBrn(),
    CountryCyp(),
    CountryNic(),
    CountryCuw(),
    CountryPri(),
    CountryNcl(),
    CountrySsd(),
    CountrySom(),
    CountryGrc(),
    CountryBes(),
    CountryLao(),
    CountryBlz(),
    CountrySlv(),
    CountryJam(),
    CountryUry(),
    CountryPng(),
    CountryLux(),
    CountryChl(),
    CountryVat(),
    CountryGnb(),
    CountryUga(),
    CountryVen(),
    CountrySrb(),
    CountryBen(),
    CountryBgd(),
    CountryBhs(),
    CountryNiu(),
    CountryAtg(),
    CountryBlm(),
    CountrySyc(),
    CountryEsh(),
    CountryLby(),
    CountryMkd(),
    CountryPer(),
    CountryBdi(),
    CountryKir(),
    CountryTur(),
    CountryTza(),
    CountryTun(),
    CountryMsr(),
    CountryKgz(),
    CountryImn(),
    CountryGlp(),
    CountryKwt(),
    CountryVgb(),
    CountryCiv(),
    CountryCxr(),
    CountryLso(),
    CountryJey(),
    CountrySvn(),
    CountryBel(),
    CountryTca(),
    CountryGib(),
    CountryQat(),
    CountryBwa(),
    CountryGnq(),
    CountryDji(),
    CountryGuy(),
    CountryGum(),
    CountryMco(),
    CountrySlb(),
    CountryGgy(),
    CountryPry(),
    CountrySur(),
    CountryUmi(),
    CountryGin(),
    CountryCze(),
    CountryCom(),
    CountryGha(),
    CountryKna(),
    CountryPyf(),
    CountryZwe(),
    CountryKen(),
    CountryKaz(),
    CountryMne(),
    CountryTuv(),
    CountryPan(),
    CountryAnd(),
    CountryVir(),
    CountryIsr(),
    CountryPrt(),
    CountryAut(),
    CountryFin(),
    CountryEst(),
    CountryDma(),
    CountryYem(),
    CountryAfg(),
    CountrySyr(),
    CountryMdv(),
    CountryTls(),
    CountryLtu(),
    CountryNzl(),
    CountryBmu(),
    CountryDeu(),
    CountryArg(),
    CountryBlr(),
    CountryBrb(),
    CountryGtm(),
    CountryAze(),
    CountryMar(),
    CountryCok(),
    CountryCaf(),
    CountryRou(),
    CountryMlt(),
    CountryArm(),
    CountrySen(),
    CountryBgr(),
    CountryCod(),
    CountryHti(),
    CountryAlb(),
    CountryJor(),
    CountrySjm(),
    CountryMdg(),
    CountryFra(),
    CountryFsm(),
    CountryAbw(),
    CountryInd(),
    CountryNam(),
    CountryFji(),
    CountrySdn(),
    CountryStp(),
    CountrySau(),
    CountryHmd(),
    CountryLka(),
    CountrySwe(),
    CountryTon(),
    CountryDnk(),
    CountryMys(),
    CountryCri(),
    CountryBol(),
    CountryBtn(),
    CountryCym(),
    CountryPcn(),
    CountryMli(),
    CountrySxm(),
    CountryLva(),
    CountryAsm(),
    CountrySpm(),
    CountryEcu(),
    CountryTha(),
    CountryAre(),
    CountryHrv(),
    CountryMmr(),
    CountryGeo(),
    CountryTwn(),
    CountryChe(),
    CountryEri(),
    CountryCog(),
    CountryFro(),
    CountryUnk(),
  ];
}
