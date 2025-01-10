class LocaleMappingOptions<T extends Object> {
  const LocaleMappingOptions({
    this.altSymbol = "+",
    this.fallbackLocale,
    this.localizeFullNames = true,
    this.mainLocale,
    this.useLanguageFallback = true,
  });

  static const defaultAltSymbol = "+";

  final String altSymbol;
  final T? fallbackLocale;
  final bool localizeFullNames;
  final T? mainLocale;
  final bool useLanguageFallback;

  @override
  String toString() => 'LocaleMappingOptions(altSymbol: "$altSymbol", '
      '${fallbackLocale == null ? '' : ', fallbackLocale: "$fallbackLocale"'}'
      "localizeFullNames: $localizeFullNames, "
      '${mainLocale == null ? '' : ', mainLocale: "$mainLocale" '}'
      "useLanguageFallback: $useLanguageFallback)";
}
