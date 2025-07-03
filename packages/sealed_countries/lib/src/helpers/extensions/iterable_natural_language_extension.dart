import "package:sealed_currencies/sealed_currencies.dart";

import "../../collections/natural_language_country_collections.dart";
import "../../data/official_world_countries.data.dart";
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
  ///   country list. If not provided, uses [_defaultCountryMapper] which
  ///   applies intelligent language-specific prioritization rules.
  ///
  /// Usage Example:
  /// ```dart
  /// // Map all languages to their countries
  /// final allLanguages = NaturalLanguage.list.byCountryMap();
  /// // Get countries for a specific language.
  /// final arabicCountries = allLanguages[LangAra()];
  /// print('Arabic spoken in ${arabicCountries?.length} countries');
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
  /// prioritization rules.
  ///
  /// This method implements contextual intelligence for language-country
  /// associations, ensuring that languages are primarily associated with their
  /// most culturally or historically significant countries rather than just
  /// population-based ordering.
  ///
  /// Prioritization Logic:
  ///
  /// - European Colonial Languages.
  /// For languages with strong colonial history, prioritizes the origin
  /// country:
  /// - **English**: United Kingdom first, then other English-speaking countries
  /// - **French**: France first, then other Francophone countries
  /// - **Portuguese**: Portugal first, then other Lusophone countries
  /// - **Spanish**: Spain first, then other Spanish-speaking countries
  ///
  /// - African Regional Languages.
  /// For certain African languages, uses reverse population order to highlight
  /// smaller countries where the language has special cultural significance:
  /// - Regional languages (Guarani, Somali, Setswana, Swati)
  ///
  /// - Constructed Languages.
  /// Returns empty lists for artificial/constructed languages that aren't tied
  /// to specific geographical regions:
  /// - Esperanto, Interlingua, Ido, Volapük, Interlingue
  ///
  /// - Default Behavior
  /// For all other languages, returns the countries list as-is
  /// (population-ordered).
  List<WorldCountry> _defaultCountryMapper(
    NaturalLanguage language,
    List<WorldCountry> countries,
  ) => switch (language) {
    LangEpo() || LangIle() || LangIna() || LangIdo() || LangVol() => const [],
    const LangGrn() ||
    const LangSom() ||
    const LangSsw() ||
    const LangTsn() => countries.reversed.toList(growable: false),
    const LangEng() => _changeFirst(const CountryGbr(), countries),
    const LangFra() => _changeFirst(const CountryFra(), countries),
    const LangPor() => _changeFirst(const CountryPrt(), countries),
    const LangSpa() => _changeFirst(const CountryEsp(), countries),
    _ => countries,
  };

  List<WorldCountry> _changeFirst(WorldCountry first, List<WorldCountry> all) =>
      [first, ...all.where((country) => !country.isSameAs(first))];
}
