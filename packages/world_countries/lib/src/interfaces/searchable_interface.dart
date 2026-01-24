import "package:flutter/widgets.dart" show BuildContext;

import "../models/search_data.dart";

/// An interface for classes that can be searched.
abstract interface class SearchableInterface<T extends Object> {
  /// Constructor for the [SearchableInterface] class.
  ///
  /// * [searchIn] is a function that takes an item and [BuildContext] and
  ///   returns a [SearchData] containing the searchable terms for that item.
  /// * [caseSensitiveSearch] is a boolean indicating whether the search should
  ///   be case-sensitive.
  /// * [startWithSearch] is a boolean indicating whether the search field
  ///   should only search by starting with the search string.
  const SearchableInterface( // coverage:ignore-line
  {
    required this.searchIn,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
    this.onSearchResultsBuilder,
  });

  /// A function that takes an item and context and returns [SearchData] to
  /// search in.
  // ignore: prefer-correct-callback-field-name, Might be breaking change.
  final SearchData Function(T item, BuildContext context)? searchIn;

  /// A function that takes a query (usually user typed input) and a map of
  /// items to their search strings and returns an iterable of items that match
  /// the query. Useful for customizing the search results with different
  /// search algorithms.
  final Iterable<T> Function(String query, Map<T, SearchData> map)?
  onSearchResultsBuilder;

  /// A boolean indicating whether the search should be case-sensitive.
  final bool caseSensitiveSearch;

  /// A boolean indicating whether the search field
  /// should only search by starting with the search string.
  final bool startWithSearch;
}
