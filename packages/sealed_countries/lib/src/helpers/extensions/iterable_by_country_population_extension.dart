import "../../model/country/country.dart";

/// Extension on [Iterable] that provides functionality to map items to
/// countries sorted by population in descending order.
///
/// This extension is particularly useful for associating various items (like
/// currencies, languages, etc.) with countries based on their usage patterns
/// while respecting population-based ordering.
///
/// The generic type [T] must extend [Object] and represents any item that can
/// be associated with countries through some mapping function.
extension IterableByCountryPopulationExtension<T extends Object>
    on Iterable<T> {
  /// Maps each item in this iterable to a list of countries sorted by
  /// population.
  ///
  /// This method creates a mapping from items of type [T] to lists of
  /// countries, where countries are ordered by population in descending order
  /// (most populous first). The mapping process considers official
  /// associations, unofficial relationships, and custom overrides:
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
  /// 4. **Unofficial Addition**: Add countries from [unofficialMap] at the
  ///    beginning of the list if they're not already included.
  Map<T, List<WorldCountry>> byPopulationCountryMap(
    Iterable<T>? Function(WorldCountry country) itemsForCountry,
    Map<T, Iterable<WorldCountry>> unofficialMap, {
    required Iterable<WorldCountry> countries,
    Map<T, Iterable<WorldCountry>> custom = const {},
  }) {
    final map = <T, List<WorldCountry>>{};
    final sortedCountries = List.of(countries)
      ..sort((a, b) => b.population.compareTo(a.population));

    for (final item in this) {
      final customValue = custom[item];
      if (customValue != null) {
        map[item] = customValue.toList(growable: false);
        continue;
      }

      map[item] ??= const <WorldCountry>[];
      for (final country in sortedCountries) {
        // ignore: move-variable-outside-iteration, not really as being updated.
        final existing = map[item] ?? const [];
        if (existing.contains(country)) continue;

        final items = itemsForCountry(country);
        if (items == null || items.isEmpty) continue;
        if (items.contains(item)) {
          map[item] = [...existing, country];
        } else {
          final unofficialCountries = unofficialMap[item] ?? const [];
          for (final unoff in unofficialCountries) {
            if (!existing.contains(unoff)) map[item] = [unoff, ...existing];
          }
        }
      }
    }

    return Map.unmodifiable(map);
  }
}
