import "../../interfaces/translated.dart";
import "../../model/core/basic_locale.dart";
import "../../model/core/locale_mapping_options.dart";
import "../../model/translated_name.dart";
import "translated_extension.dart";

/// An extension on [Iterable] where the type parameter `I` extends
/// [IsoTranslated].
///
/// This extension provides a method to generate a cache map of translations for
/// a given locale. The cache map can be used to quickly lookup the
/// translation for an [IsoTranslated] object.
extension IsoTranslatedIterableExtension<
    L extends BasicLocale,
    T extends TranslatedName,
    N extends Object,
    I extends IsoTranslated<T, N>> on Iterable<I> {
  /// Generates a cache map of common name translations for the given [locale].
  ///
  /// The cache map is a [Map] where the keys are [IsoTranslated] objects and
  /// the values are the corresponding translations in the given locale.
  ///
  /// The [BasicLocale] parameter with a required `language` parameter and
  /// optional `countryCode` and `script` parameters can be used to specify the
  /// locale for which to generate the translations. If [useLanguageFallback] is
  ///  set to `true`, the method will fall back to the language without
  /// filtering if no matching translation is found.
  ///
  /// The returned map is unmodifiable to prevent accidental modifications.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final cache = NaturalLanguage.list.commonNamesCacheMap(const BasicLocale(
  ///   LangEng(),
  ///   script: ScriptLatn(),
  ///  ),
  /// );
  /// print(cache[const LangAfr()]); // "Afrikaans"
  /// ```
  @Deprecated("Please use `commonNamesMap` instead - it provides more efficient"
      " lookup, consumes less memory and has more `options` to define.")
  Map<I, String> commonNamesCacheMap(
    L locale, {
    bool useLanguageFallback = true,
  }) {
    final map = <I, String>{};
    for (final item in this) {
      final translation = item.maybeTranslation(
        locale,
        useLanguageFallback: useLanguageFallback,
      );
      if (translation != null) map[item] = translation.name;
    }

    return Map.unmodifiable(map);
  }

  /// Extracts a map of common name translations for the given [options].
  ///
  /// The result map is a [Map] where the keys are [IsoTranslated] objects and
  /// the values are the corresponding translations in the given locale(s).
  ///
  /// The returned map is unmodifiable to prevent accidental modifications.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final map = NaturalLanguage.list.commonNamesMap(
  ///   options: const LocaleMappingOptions(
  ///   mainLocale: BasicLocale(LangCes()),
  ///   fallbackLocale: BasicLocale(LangEng(), countryCode: "US"),
  ///   localizeFullNames: false,
  ///   ),
  /// );
  /// print(map[const LangAfr()]); // "Afrikaans"
  /// ```
  Map<I, String> commonNamesMap({required LocaleMappingOptions<L> options}) =>
      isEmpty ? const {} : first.l10n.commonNamesMap(this, options: options);
}
