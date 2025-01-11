/// Configuration options for locale mapping operations.
///
/// Type parameter [T] represents the type of locale identifier that can be used
/// for main and fallback locales.
class LocaleMappingOptions<T extends Object> {
  /// Creates a [LocaleMappingOptions] instance with the specified
  /// configuration.
  ///
  /// Parameters:
  /// - [altSymbol]: Symbol used to mark alternative names, defaults to "+".
  /// - [fallbackLocale]: Secondary locale to use if main locale translation is
  ///       missing.
  /// - [localizeFullNames]: Whether to include full/official names in
  ///       localization.
  /// - [mainLocale]: Primary locale for translation lookup.
  /// - [useLanguageFallback]: Whether to fallback to language-only codes.
  const LocaleMappingOptions({
    this.altSymbol = "+",
    this.fallbackLocale,
    this.localizeFullNames = true,
    this.mainLocale,
    this.useLanguageFallback = true,
  });

  /// Default symbol used to mark alternative names in localization.
  static const defaultAltSymbol = "+";

  /// Symbol used to mark alternative/full names in localized strings.
  final String altSymbol;

  /// Secondary locale used when translation is not found in [mainLocale].
  final T? fallbackLocale;

  /// Whether to include full/official names in localization results.
  final bool localizeFullNames;

  /// Primary locale used for translation lookup.
  final T? mainLocale;

  /// Whether to try language-only codes when specific locale is not found.
  ///
  /// For example, if true and `'en_US'` is not found, will try `'en'`.
  final bool useLanguageFallback;

  @override
  String toString() => 'LocaleMappingOptions(altSymbol: "$altSymbol", '
      '${fallbackLocale == null ? '' : ', fallbackLocale: "$fallbackLocale"'}'
      "localizeFullNames: $localizeFullNames, "
      '${mainLocale == null ? '' : ', mainLocale: "$mainLocale" '}'
      "useLanguageFallback: $useLanguageFallback)";
}
