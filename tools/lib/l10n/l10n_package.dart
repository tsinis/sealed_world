/// The l10n_* packages whose main library is generated from their data files.
enum L10nPackage {
  countries(
    item: "country",
    exampleCodes: _alpha3Codes,
    isoCode: "USA",
    germanName: "Vereinigte Staaten",
    frenchName: "Allemagne",
  ),
  currencies(
    item: "currency",
    exampleCodes: "{'USD', 'RUB'}",
    isoCode: "USD",
    germanName: "US-Dollar",
    frenchName: "Franc suisse",
  ),
  languages(
    item: "language",
    exampleCodes: _alpha3Codes,
    isoCode: "ENG",
    germanName: "Englisch",
    frenchName: "Anglais",
  );

  new({
    required this.item,
    required this.exampleCodes,
    required this.isoCode,
    required this.germanName,
    required this.frenchName,
  });

  static const _alpha3Codes = "{'FRA', 'RUS'}";

  /// Singular name of a translated item, as used in the docs.
  final String item;

  /// ISO codes used in the `localize` doc example.
  final String exampleCodes;

  /// An ISO code that the `de`, `en` and `fr` locales translate, used in the
  /// generated tests.
  final String isoCode;

  /// The `de` name of [isoCode], which a build with only `de` must contain.
  final String germanName;

  /// An ASCII-only `fr` name (of any ISO code), which a full build must
  /// contain and a build with only `de` must not: dart2js escapes non-ASCII
  /// characters, so those would never match.
  final String frenchName;

  /// Parses a package from `currencies` or `l10n_currencies`.
  static L10nPackage? maybeFromName(String name) {
    final short = name.trim().toLowerCase().replaceFirst("l10n_", "");

    return values.where((package) => package.name == short).firstOrNull;
  }

  /// Directory (and library) name of the package.
  String get dirName => "l10n_$name";

  /// Pascal case name, the infix of the data classes (`AfCurrenciesL10N`).
  String get pascalName => name.replaceRange(0, 1, name[0].toUpperCase());

  /// Name of the generated mapper class.
  String get mapperName => "${pascalName}LocaleMapper";
}
