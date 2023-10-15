import "../../data/natural_languages.data.dart";
import "../../interfaces/translated.dart";
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
/// TranslatedName translation = country.translation(
///   LangAar(), // The desired language.
///   countryCode: 'DE', // Optional country code filter.
///   script: const ScriptLatn(), // Optional script filter.
///   orElse: const LangEng(), // Default language if no translation is found.
/// );
/// ```
///
/// In this example, the `country` object is an instance of a class that
/// implements the [Translated] interface. By using the `translation` method
/// provided by the [TranslatedExtension] extension, you can retrieve the
/// translation for a specific language. The method accepts the desired
/// [NaturalLanguage], optional `countryCode`, `script`, and a default `orElse`
/// language if no translation is found. It returns the translation as a
/// [TranslatedName] object. If no translation is found for the specified
/// language, it falls back to the `orElse` language.
extension TranslatedExtension<T extends TranslatedName> on Translated<T> {
  /// Retrieves the translation for the specified [language].
  ///
  /// This method returns the translation for the specified [language], with
  /// optional [countryCode] and [script] filters. If no translation is found
  /// for the specified [language], it falls back to the `orElse` language. The
  /// `orElse` language defaults to [LangEng], but it could be any other
  /// language, especially if it's on of the languages defined in
  /// `kSealedLanguagesSupportedLanguages` list (which ensures 100% the
  /// availability of translations for every language in this package).
  ///
  /// If [countryCode] and/or [script] are provided, the method will filter the
  /// translations based on the matching values.
  ///
  /// Example:
  /// ```dart
  /// TranslatedName translation = country.translation(
  ///   LangAar(), // The desired language.
  ///   countryCode: 'DE', // Optional country code filter.
  ///   script: const ScriptLatn(), // Optional script filter.
  ///   orElse: const LangEng(), // Default language if no translation is found.
  /// );
  /// ```
  T translation(
    NaturalLanguage language, {
    String? countryCode,
    Script? script,
    NaturalLanguage orElse = const LangEng(),
  }) =>
      maybeTranslation(language, countryCode: countryCode, script: script) ??
      translations.firstWhere((translation) => translation.language == orElse);

  /// Retrieves the translation for the specified [language], with optional
  /// [countryCode] and [script] filters.
  ///
  /// This method returns the translation for the specified [language], with
  /// optional [countryCode] and [script] filters. If no translation is found
  /// for the specified [language], it returns `null`. The translations are
  /// filtered based on the matching [countryCode] and [script] values. If
  /// [useLanguageFallback] is set to `true`, the method will fall back to the
  /// language without filtering if no matching translation is found.
  ///
  /// Example:
  /// ```dart
  /// TranslatedName? translation = country.maybeTranslation(
  ///   LangAar(), // The desired language
  ///   countryCode: 'DE', // Optional country code filter
  ///   script: const ScriptLatn(), // Optional script filter
  ///   useLanguageFallback: false, // Whether to fall back to the
  /// // language if no matching translation is found.
  /// );
  /// ```
  T? maybeTranslation(
    NaturalLanguage language, {
    String? countryCode,
    Script? script,
    bool useLanguageFallback = true,
  }) {
    final filtered = List<T>.unmodifiable(
      translations.where((l10n) => l10n.language == language),
    );

    return switch (filtered.length) {
      0 => null,
      1 => filtered.first,
      _ => _maybeTranslation(
          filtered,
          useLanguageFallback: useLanguageFallback,
          countryCode: countryCode,
          script: script,
        ),
    };
  }

  T? _maybeTranslation(
    List<T> translations, {
    required bool useLanguageFallback,
    String? countryCode,
    Script? script,
  }) {
    if (countryCode == null && script == null) return translations.first;
    for (final l10n in translations) {
      if (countryCode != null && l10n.countryCode != countryCode) continue;
      if (script != null && l10n.script != script) continue;

      return l10n;
    }

    return useLanguageFallback ? translations.first : null;
  }
}
