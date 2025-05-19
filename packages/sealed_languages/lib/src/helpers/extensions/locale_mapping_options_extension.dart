import "../../model/core/locale_mapping_options.dart";

/// Extension methods for [LocaleMappingOptions] class.
///
/// Type parameter [T] represents the type of locale identifier that can be used
/// for main and fallback locales.
extension LocaleMappingOptionsExtension<T extends Object>
    on LocaleMappingOptions<T> {
  /// Creates a copy of this [LocaleMappingOptions] with the given fields
  /// replaced.
  ///
  /// Parameters:
  /// - [altSymbol]: New symbol for alternative names.
  /// - [fallbackLocale]: New fallback locale.
  /// - [localizeFullNames]: New flag for full names localization.
  /// - [mainLocale]: New main locale.
  /// - [useLanguageFallback]: New flag for language fallback.
  ///
  /// Returns a new [LocaleMappingOptions] instance with the specified changes.
  LocaleMappingOptions<T> copyWith({
    String? altSymbol,
    T? fallbackLocale,
    bool? localizeFullNames,
    T? mainLocale,
    bool? useLanguageFallback,
  }) => LocaleMappingOptions<T>(
    altSymbol: altSymbol ?? this.altSymbol,
    fallbackLocale: fallbackLocale ?? this.fallbackLocale,
    localizeFullNames: localizeFullNames ?? this.localizeFullNames,
    mainLocale: mainLocale ?? this.mainLocale,
    useLanguageFallback: useLanguageFallback ?? this.useLanguageFallback,
  );
}
