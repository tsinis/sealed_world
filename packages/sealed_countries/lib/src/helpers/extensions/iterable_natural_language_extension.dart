import "package:sealed_currencies/sealed_currencies.dart";

import "../../collections/natural_language_country_collections.dart";
import "../../model/country/country.dart";
import "iterable_by_country_population_extension.dart";

/// Extension on [Iterable] of [NaturalLanguage]s that provides specialized
/// functionality to map natural languages to their associated countries.
///
/// This extension builds upon [IterableByCountryPopulationExtension] to provide
/// language-specific mapping capabilities with intelligent defaults for
/// language prioritization and country ordering. It handles both official and
/// unofficial language-country relationships while applying contextual logic
/// for optimal language-country associations.
extension IterableNaturalLanguageExtension on Iterable<NaturalLanguage> {
  /// Maps each natural language to its associated countries with intelligent
  /// prioritization.
  ///
  /// This method creates a comprehensive mapping from natural languages to the
  /// countries where they are spoken, applying contextual logic to prioritize
  /// culturally or historically significant countries for each language. The
  /// mapping considers official status, unofficial usage, and applies special
  /// rules for optimal language-country associations:
  /// * [countries] - The collection of countries to consider. Defaults to
  ///   [WorldCountry.list] (all world countries).
  /// * [custom] - Custom mappings that override the default behavior. If a
  ///   language exists in this map, its custom country list is used instead of
  ///   the computed one.
  /// * [mapper] - Optional transformation function applied to each language's
  ///   country list. If not provided, the default mapper is used, which
  ///   applies intelligent language-specific prioritization rules (see below).
  ///
  /// Default prioritization rules:
  /// * Constructed languages (i.e. Esperanto) are not tied to any country, so
  ///   an empty list is returned for them.
  /// * Some regional languages (Guarani, Somali, Setswana, Swati) use reversed
  ///   population order, to highlight smaller countries where the language has
  ///   special cultural significance.
  /// * English, French, Portuguese and Spanish have their country of origin
  ///   moved to the first place (if it's present in the list).
  ///
  /// Usage Example:
  /// ```dart
  /// import 'package:sealed_countries/sealed_countries.dart';
  ///
  /// void main() {
  ///   final allLanguages = NaturalLanguage.list.byCountryMap();
  ///   final arabicCountries = allLanguages[const LangAra()];
  ///   assert(arabicCountries?.isNotEmpty ?? false);
  /// }
  /// ```
  Map<NaturalLanguage, List<WorldCountry>> byCountryMap({
    Iterable<WorldCountry> countries = WorldCountry.list,
    Map<NaturalLanguage, Iterable<WorldCountry>> custom = const {},
    List<WorldCountry> Function(NaturalLanguage, List<WorldCountry>)? mapper,
  }) {
    final valueMap = mapper ?? _defaultCountryMapper;
    final map = byPopulationCountryMap(
      (country) => country.languages,
      unofficialLanguagesCountryMap,
      countries: countries,
      custom: custom,
    );

    return map.map((lang, country) => MapEntry(lang, valueMap(lang, country)));
  }

  /// Default country mapping logic that applies language-specific
  /// prioritization rules, described in the [byCountryMap] documentation.
  List<WorldCountry> _defaultCountryMapper(
    NaturalLanguage language,
    List<WorldCountry> countries,
  ) => switch (language) {
    NaturalLanguage(isConstructed: true) => const [],
    const LangGrn() ||
    const LangSom() ||
    const LangSsw() ||
    const LangTsn() => countries.reversed.toList(growable: false),
    const LangEng() => _changeFirst(const CountryGbr(), countries),
    const LangFra() => _changeFirst(const CountryFra(), countries),
    const LangPor() => _changeFirst(const CountryPrt(), countries),
    const LangSpa() => _changeFirst(const CountryEsp(), countries),
    // ignore: avoid-wildcard-cases-with-sealed-classes, it's ok to have here.
    _ => countries,
  };

  List<WorldCountry> _changeFirst(WorldCountry first, List<WorldCountry> all) =>
      all.any((country) => country.isSameAs(first))
      ? [first, ...all.where((country) => !country.isSameAs(first))]
      : all;
}
