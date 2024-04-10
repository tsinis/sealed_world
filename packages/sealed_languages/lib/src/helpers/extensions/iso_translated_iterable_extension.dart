import "../../interfaces/translated.dart";
import "../../model/core/basic_locale.dart";
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
  /// Generates a cache map of translations for the given [locale].
  ///
  /// The cache map is a [Map] where the keys are [IsoTranslated] objects and
  /// the values are the corresponding translations in the given locale.
  ///
  /// The [BasicLocale] parameter with a required `language` parameter and
  /// optional`countryCode` and `script` parameters can be used to specify the
  /// locale for which to generate the translations. If [useLanguageFallback] is
  ///  set to `true`, the method will fall back to the language without
  /// filtering if no matching translation is found.
  ///
  /// The returned map is unmodifiable to prevent accidental modifications.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final cache = NaturalLanguage.list.translationsCacheMap(const BasicLocale(
  ///   LangEng(),
  ///   script: ScriptLatn(),
  ///  ),
  /// );
  /// print(cache[const LangAfr()]?.name); // "Afrikaans"
  /// ```
  Map<I, T> translationsCacheMap(L locale, {bool useLanguageFallback = true}) {
    final map = <I, T>{};
    for (final item in this) {
      final translation = item.maybeTranslation(
        locale,
        useLanguageFallback: useLanguageFallback,
      );
      if (translation != null) map[item] = translation;
    }

    return Map<I, T>.unmodifiable(map);
  }
}
