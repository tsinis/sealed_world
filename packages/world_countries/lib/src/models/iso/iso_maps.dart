import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart";

import "../locale/typed_locale.dart" show TypedLocale;
import "../typedefs.dart";

/// Immutable wrapper for translation and flag maps used by [TypedLocale].
///
/// [IsoMaps] centralizes the frequently shared translation caches (countries,
/// currencies, languages) and optional flag lookups so they can be passed
/// around as a single unit.
@immutable
class IsoMaps {
  /// Creates a fully-configured [IsoMaps] instance.
  ///
  /// All parameters default to empty constant maps so the object can be
  /// instantiated in `const` contexts.
  const IsoMaps({
    this.countryTranslations = const {},
    this.currencyTranslations = const {},
    this.languageTranslations = const {},
    this.currencyFlags = const {},
    this.languageFlags = const {},
  });

  /// Common country names translations for the current locale.
  final TranslationMap<WorldCountry> countryTranslations;

  /// Common currency names translations for the current locale.
  final TranslationMap<FiatCurrency> currencyTranslations;

  /// Common language names translations for the current locale.
  final TranslationMap<NaturalLanguage> languageTranslations;

  /// Optional mapping of currencies to their [BasicFlag] representation.
  final Map<FiatCurrency, BasicFlag> currencyFlags;

  /// Optional mapping of languages to their [BasicFlag] representation.
  final Map<NaturalLanguage, BasicFlag> languageFlags;

  @override
  String toString({bool short = true}) => short
      ? "IsoMaps(countryTranslations: ${countryTranslations.length}, "
            "currencyTranslations: ${currencyTranslations.length}, "
            "languageTranslations: ${languageTranslations.length}, "
            "currencyFlags: ${currencyFlags.length}, "
            "languageFlags: ${languageFlags.length})"
      : "IsoMaps(\n"
            "countryTranslations: $countryTranslations,\n"
            "currencyTranslations: $currencyTranslations,\n"
            "languageTranslations: $languageTranslations,\n"
            "currencyFlags: $currencyFlags,\n"
            "languageFlags: $languageFlags\n)";
}
