import "../../interfaces/iso_translated.dart";
import "../../model/core/basic_locale.dart";
import "../../model/core/locale_mapping_options.dart";
import "../../model/language/submodels/natural_language.dart";
import "../../model/translated_name.dart";

/// An extension that provides translation methods for objects implementing the
/// [Translated] interface.
///
/// The [TranslatedExtension] extension adds methods to objects that implement
/// the [Translated] interface. It provides convenient ways to retrieve
/// translations based on the specified language, country code, and script.
///
/// Example usage:
///
/// ```dart
/// TranslatedCountry country = ... // An object implementing the Translated interface
///
/// TranslatedName translation = country.translation(BasicLocale(
///   LangAar(), // The desired language.
///   countryCode: 'DE', // Optional country code filter.
///   script: const ScriptLatn(), // Optional script filter.
///   ),
///   orElse: const LangEng(), // Default language if no translation is found.
/// );
/// ```
///
/// In this example, the `country` object is an instance of a class that
/// implements the [Translated] interface. By using the `translation` method
/// provided by the [TranslatedExtension] extension, you can retrieve the
/// translation for a specific language. The method accepts the desired locale
/// [BasicLocale] with required [NaturalLanguage], optional `countryCode`,
/// `script`, and a default `orElse` language if no translation is found. It
/// returns the translation as a [TranslatedName] object. If no translation is
/// found for the specified language, it falls back to the `orElse` language.
extension TranslatedExtension<
  T extends TranslatedName,
  L extends BasicLocale,
  N extends Object
>
    on IsoTranslated<T, N, L> {
  /// Returns a localized common name for this object.
  ///
  /// Parameters:
  /// - [mainLocale]: Required primary locale for translation lookup
  /// - [fallbackLocale]: Optional secondary locale to use if main locale
  /// translation is missing.
  /// - [useLanguageFallback]: Whether to try language-only codes when specific
  /// locale not found.
  /// - [orElse]: Default value to return if translation is not found, defaults
  ///  to empty string.
  ///
  /// Example:
  /// ```dart
  /// // Returns German common name for the language or `orElse` if not found.
  /// final name = language.commonNameFor(const BasicLocale(LangDeu()));
  /// ```
  String commonNameFor<B extends L>(
    B mainLocale, {
    B? fallbackLocale,
    bool useLanguageFallback = true,
    String orElse = "",
  }) =>
      l10n.commonNamesMap(
        {this},
        options: LocaleMappingOptions<B>(
          mainLocale: mainLocale,
          fallbackLocale: fallbackLocale,
          useLanguageFallback: useLanguageFallback,
        ),
      )[this] ??
      orElse;

  /// Returns a localized common name for this object or `null` if not found.
  ///
  /// Parameters:
  /// - [mainLocale]: Primary locale for translation lookup, if `null` is passed
  /// the method returns `null`.
  /// - [fallbackLocale]: Optional secondary locale to use if main locale
  /// translation is missing.
  /// - [useLanguageFallback]: Whether to try language-only codes when specific
  /// locale not found.
  /// - [orElse]: Optional default value to return if translation is not found
  ///
  /// Example:
  /// ```dart
  /// // Returns German common name for the language or `null` if not found.
  /// final name = language.maybeCommonNameFor(const BasicLocale(LangDeu()));
  /// ```
  String? maybeCommonNameFor<B extends L>(
    B? mainLocale, {
    B? fallbackLocale,
    bool useLanguageFallback = true,
    String? orElse,
  }) => mainLocale == null
      ? null
      : (l10n.commonNamesMap(
              {this},
              options: LocaleMappingOptions<B>(
                mainLocale: mainLocale,
                fallbackLocale: fallbackLocale,
                useLanguageFallback: useLanguageFallback,
              ),
            )[this] ??
            orElse);
}
