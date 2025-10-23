// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

import "../../interfaces/translated.dart";
import "../../model/core/basic_locale.dart";
import "../../model/core/locale_mapping_options.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";
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

  /// Retrieves the translation for the specified locale [BasicLocale] with
  /// required `language` parameter. This method might be expensive so it's
  /// recommended to use `commonNameFor`/`maybeCommonName` methods instead
  /// or cache the result.
  ///
  /// This method returns the translation for the specified [BasicLocale] with a
  /// required `language` parameter,
  /// optional `countryCode` and `script` parameters. If no translation is found
  /// for the specified [locale], it falls back to the [orElse] language. The
  /// [orElse] language defaults to [LangEng], but it could be any other
  /// language, especially if it's on of the languages defined in
  /// `kSealedLanguagesSupportedLanguages` list (which ensures 100% the
  /// availability of translations for every language in this package).
  ///
  /// If `countryCode` and/or `script` in locale are provided, the method will
  /// filter the translations based on the matching values.
  ///
  /// Example:
  /// ```dart
  /// TranslatedName translation = country.translation(BasicLocale(
  ///   LangAar(), // The desired language.
  ///   countryCode: 'DE', // Optional country code filter.
  ///   script: const ScriptLatn(), // Optional script filter.
  ///   ),
  ///   orElse: const LangEng(), // Default language if no translation is found.
  /// );
  /// ```
  @Deprecated("Use `commonNameFor`/`maybeCommonName` methods instead.")
  T translation<B extends L>(
    B locale, {
    NaturalLanguage orElse = const LangEng(),
  }) =>
      maybeTranslation(locale) ??
      translations.firstWhere((l10n) => l10n.language == orElse);

  /// Retrieves the translation for the specified [BasicLocale] locale with
  /// required `language` parameter and optional `countryCode` and `script`
  /// parameters. This method might be expensive so it's recommended to use
  /// `commonNameFor`/`maybeCommonName` methods instead or cache the result.
  ///
  /// This method returns the translation for the specified [locale] with a
  /// required `language` parameter and optional `countryCode` and `script`
  /// parameters. If no translation is found for the specified [locale], it
  /// returns `null`. The translations are filtered based on the matching
  /// locale's `countryCode` and `script` values. If [useLanguageFallback] is
  /// set to `true`, the method will fall back to the language without filtering
  /// if no matching translation is found.
  ///
  /// Example:
  /// ```dart
  /// TranslatedName? translation = country.maybeTranslation(BasicLocale(
  ///   LangAar(), // The desired language
  ///   countryCode: 'DE', // Optional country code filter
  ///   script: const ScriptLatn(), // Optional script filter
  ///   ),
  ///   useLanguageFallback: false, // Whether to fall back to the
  /// // language if no matching translation is found.
  /// );
  /// ```
  @Deprecated("Use `commonNameFor`/`maybeCommonName` methods instead.")
  T? maybeTranslation<B extends L>(
    B? locale, {
    bool useLanguageFallback = true,
  }) {
    if (locale == null) return null;
    final filtered = List<T>.unmodifiable(
      translations.where((l10n) => l10n.language == locale.language),
    );

    return switch (filtered.length) {
      0 => null,
      1 => filtered.first,
      _ => _maybeTranslation(
        filtered,
        useLanguageFallback: useLanguageFallback,
        countryCode: locale.countryCode,
        script: locale.script,
      ),
    };
  }

  T? _maybeTranslation(
    List<T> translations, {
    required bool useLanguageFallback,
    String? countryCode,
    Script? script,
  }) {
    if (countryCode == null && script == null) return translations.firstOrNull;
    for (final l10n in translations) {
      if (countryCode != null && l10n.countryCode != countryCode) continue;
      if (script != null && l10n.script != script) continue;

      return l10n;
    }

    return useLanguageFallback ? translations.firstOrNull : null;
  }
}
