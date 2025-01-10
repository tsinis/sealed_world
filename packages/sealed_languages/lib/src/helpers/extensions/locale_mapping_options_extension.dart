import "../../model/core/locale_mapping_options.dart";

extension LocaleMappingOptionsExtension<T extends Object>
    on LocaleMappingOptions<T> {
  LocaleMappingOptions<T> copyWith({
    String? altSymbol,
    T? fallbackLocale,
    bool? localizeFullNames,
    T? mainLocale,
    bool? useLanguageFallback,
  }) =>
      LocaleMappingOptions<T>(
        altSymbol: altSymbol ?? this.altSymbol,
        fallbackLocale: fallbackLocale ?? this.fallbackLocale,
        localizeFullNames: localizeFullNames ?? this.localizeFullNames,
        mainLocale: mainLocale ?? this.mainLocale,
        useLanguageFallback: useLanguageFallback ?? this.useLanguageFallback,
      );
}
