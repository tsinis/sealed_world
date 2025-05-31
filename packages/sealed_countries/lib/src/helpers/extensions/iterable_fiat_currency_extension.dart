import "package:sealed_currencies/sealed_currencies.dart";

import "../../collections/fiat_currency_country_collections.dart";
import "../../model/country/country.dart";
import "iterable_by_country_population_extension.dart";

/// Extension on [Iterable] of [FiatCurrency] that provides specialized
/// functionality to map fiat currencies to their associated countries.
///
/// This extension builds upon [IterableByCountryPopulationExtension] to provide
/// currency-specific mapping capabilities. It automatically handles both
/// official and unofficial currency-country relationships, with countries
/// ordered by population in descending order.
extension IterableFiatCurrencyExtension on Iterable<FiatCurrency> {
  /// Maps each fiat currency to its associated countries, ordered by
  /// population.
  ///
  /// This method creates a comprehensive mapping from fiat currencies to the
  /// countries where they are used, either officially or unofficially.
  /// Countries are automatically sorted by population in descending order,
  /// ensuring the most populous countries appear first for each currency:
  /// * [countries] - The collection of countries to consider. Defaults to
  ///   [WorldCountry.list] (all world countries).
  /// * [custom] - Custom mappings that override the default behavior. If a
  ///   currency exists in this map, its custom country list is used instead of
  ///   the computed one.
  /// * [mapper] - Optional transformation function applied to each currency's
  ///   country list. Useful for custom sorting, filtering, or processing.
  ///
  ///  Usage Example:
  /// ```dart
  /// // Limit to top 1 country per currency.
  /// final limitedMap = FiatCurrency.list.byCountryMap(
  ///   mapper: (currency, countries) => countries.take(1).toList(),
  /// );
  /// ```
  Map<FiatCurrency, List<WorldCountry>> byCountryMap({
    Iterable<WorldCountry> countries = WorldCountry.list,
    Map<FiatCurrency, Iterable<WorldCountry>> custom = const {},
    List<WorldCountry> Function(FiatCurrency, List<WorldCountry>)? mapper,
  }) {
    final map = byPopulationCountryMap(
      (country) => country.currencies,
      unofficialCurrenciesCountryMap,
      countries: countries,
      custom: custom,
    );
    if (mapper == null) return map;

    return map.map((lang, country) => MapEntry(lang, mapper(lang, country)));
  }
}
