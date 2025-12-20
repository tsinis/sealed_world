import "../../interfaces/iso_translated.dart";
import "../../model/core/basic_locale.dart";
import "../../model/core/locale_mapping_options.dart";
import "../../model/translated_name.dart";

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
  I extends IsoTranslated<T, N, L>
>
    on Iterable<I> {
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
  Map<I, String> commonNamesMap<B extends L>({
    required LocaleMappingOptions<B> options,
  }) => isEmpty ? const {} : first.l10n.commonNamesMap(this, options: options);
}
