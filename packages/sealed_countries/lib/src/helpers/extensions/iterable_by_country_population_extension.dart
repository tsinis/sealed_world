import "package:sealed_currencies/sealed_currencies.dart" show IsoStandardized;

import "../../model/country/country.dart";

/// Extension on [Iterable] that provides functionality to map items to
/// countries sorted by population in descending order.
///
/// This extension is particularly useful for associating various items (like
/// currencies, languages, etc.) with countries based on their usage patterns
/// while respecting population-based ordering.
///
/// The generic type [T] must extend [IsoStandardized] and represents any item
/// that can be associated with countries through some mapping function.
extension IterableByCountryPopulationExtension<T extends IsoStandardized>
    on Iterable<T> {
  /// Maps each item in this iterable to a list of countries sorted by
  /// population.
  ///
  /// This method creates a mapping from items of type [IsoStandardized] to
  /// lists of countries, where countries are ordered by population in
  /// descending order (most populous first). The mapping process considers
  /// official associations, unofficial relationships, and custom overrides:
  /// * [itemsForCountry] - Function that extracts items of type [T] from a
  ///   country. Returns `null` or empty iterable if the country has no
  ///   associated items.
  /// * [unofficialMap] - Map containing unofficial associations between items
  ///   and countries (e.g., historical usage, special relationships).
  /// * [countries] - The collection of countries to consider for mapping.
  ///   Defaults to all world countries.
  /// * [custom] - Custom mappings that override the default behavior. If an
  ///   item exists in this map, its value is used directly.
  ///
  /// ## Algorithm
  ///
  /// 1. **Sorting**: Countries are sorted by population in descending order
  /// 2. **Custom Override**: Items in [custom] map get their predefined
  ///    associations
  /// 3. **Official Mapping**: For each country, extract associated items using
  ///    [itemsForCountry]
  /// 4. **Unofficial Addition**: Add countries from [unofficialMap] (in their
  ///    original order) at the beginning of the list, official countries that
  ///    are already included this way are not duplicated.
  Map<T, List<WorldCountry>> byPopulationCountryMap(
    Iterable<T>? Function(WorldCountry country) itemsForCountry,
    Map<T, Iterable<WorldCountry>> unofficialMap, {
    required Iterable<WorldCountry> countries,
    Map<T, Iterable<WorldCountry>> custom = const {},
  }) {
    final sortedCountries = List.of(countries)
      ..sort((a, b) => b.population.compareTo(a.population));
    final map = <T, List<WorldCountry>>{};

    for (final item in this) {
      final customValue = custom[item];
      if (customValue != null) {
        map[item] = customValue.toList(growable: false);

        continue;
      }

      final official = sortedCountries.where(
        (country) => itemsForCountry(country)?.contains(item) ?? false,
      );
      // LinkedHashSet keeps the insertion order and removes duplicates.
      map[item] = {...?unofficialMap[item], ...official}.toList();
    }

    return Map.unmodifiable(map);
  }
}
