/// The l10n_* packages whose main library is generated from their data files.
enum L10nPackage {
  countries(item: "country", exampleCodes: _alpha3Codes),
  currencies(item: "currency", exampleCodes: "{'USD', 'RUB'}"),
  languages(item: "language", exampleCodes: _alpha3Codes);

  new({required this.item, required this.exampleCodes});

  static const _alpha3Codes = "{'FRA', 'RUS'}";

  /// Singular name of a translated item, as used in the docs.
  final String item;

  /// ISO codes used in the `localize` doc example.
  final String exampleCodes;

  /// Parses a package from `currencies` or `l10n_currencies`.
  static L10nPackage? maybeFromName(String name) {
    final short = name.trim().toLowerCase().replaceFirst("l10n_", "");

    return values.where((package) => package.name == short).firstOrNull;
  }

  /// Directory (and library) name of the package.
  String get dirName => "l10n_$name";

  /// Name of the generated mapper class.
  String get mapperName =>
      "${name.replaceRange(0, 1, name[0].toUpperCase())}LocaleMapper";
}
