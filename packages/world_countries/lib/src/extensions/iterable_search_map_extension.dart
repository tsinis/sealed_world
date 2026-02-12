import "package:flutter/foundation.dart" show internal;
import "package:flutter/widgets.dart" show BuildContext;
import "package:meta/meta.dart" show useResult;

import "../model/search_data.dart";
import "../model/typedefs.dart";

/// Extension on [Iterable] that provides functionality for creating search maps
/// and finding search results.
///
/// This extension helps with implementing search functionality by creating
/// searchable mappings from objects to search terms and filtering objects based
/// on search criteria.
@internal
extension IterableSearchMapExtension<T extends Object> on Iterable<T> {
  /// Creates an unmodifiable search map from this iterable.
  ///
  /// The [search] function is called for each item in the iterable to generate
  /// a list of searchable strings for that item.
  ///
  /// [context] is passed to the search function to support localized search
  /// terms.
  ///
  /// Returns a [SearchMap] that maps each item to its searchable terms.
  @useResult
  SearchMap<T> searchMap(
    BuildContext context,
    SearchData Function(T, BuildContext) search,
  ) => SearchMap<T>.unmodifiable({
    for (final item in this) item: search(item, context),
  });

  /// Filters items in this iterable based on search criteria.
  ///
  /// Returns an iterable containing only the items that have at least one
  /// search term in [map] that passes the [test] function.
  ///
  /// [map] is the search map containing items and their searchable terms.
  /// [test] is a function that tests if a search term matches the search
  /// criteria.
  @useResult
  Iterable<T> searchResults(SearchMap<T> map, bool Function(String) test) =>
      where((item) => map[item]?.any(test) ?? false);
}
