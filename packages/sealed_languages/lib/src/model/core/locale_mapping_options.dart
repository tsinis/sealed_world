import '../../typedefs/typedefs.dart';

/// Configuration options for locale mapping operations.
///
/// Type parameter [T] represents the type of locale identifier that can be used
/// for main and fallback locales.
class LocaleMappingOptions<T extends Object> {
  /// Creates a [LocaleMappingOptions] instance with the specified
  /// configuration.
  ///
  /// Parameters:
  /// - [mainLocale]: Primary locale for translation lookup.
  /// - [fallbackLocale]: Secondary locale to use if main locale translation is
  /// missing.
  /// - [localizeFullNames]: Whether to include full/official names in
  /// localization.
  /// - [useLanguageFallback]: Whether to fallback to language-only codes.
  /// - [altSymbol]: Symbol used to mark alternative names, defaults to `"+"`.
  /// - [formatter]: Optional function to customize localized string formatting.
  const LocaleMappingOptions({
    this.mainLocale,
    this.fallbackLocale,
    this.localizeFullNames = true,
    this.useLanguageFallback = true,
    this.altSymbol = "+",
    this.formatter,
  });

  /// Default symbol used to mark alternative names in localization maps.
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

  /// Optional formatter function for customizing localized strings.
  final String Function(IsoLocaleKey isoLocale, String l10n)?
  // ignore: prefer-correct-callback-field-name, to match L10N naming.
  formatter;

  @override
  String toString() =>
      'LocaleMappingOptions(altSymbol: "$altSymbol", '
      '${fallbackLocale == null ? '' : ', fallbackLocale: "$fallbackLocale"'}'
      "localizeFullNames: $localizeFullNames, "
      '${mainLocale == null ? '' : ', mainLocale: "$mainLocale" '}'
      "useLanguageFallback: $useLanguageFallback, "
      "formatter: ${(formatter != null)})";
}
