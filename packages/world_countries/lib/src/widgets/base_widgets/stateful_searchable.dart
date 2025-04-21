import "package:flutter/widgets.dart";

import "../../interfaces/searchable_interface.dart";
import "../../models/typedefs.dart";

/// An abstract stateful widget that provides search functionality.
abstract class StatefulSearchable<T extends Object> extends StatefulWidget
    implements SearchableInterface<T> {
  /// Constructor for the [StatefulSearchable] class.
  ///
  /// * [searchIn] is the function to extract search strings from the items.
  /// * [textController] is the text editing controller for the search bar.
  /// * [caseSensitiveSearch] is a boolean indicating whether the search is
  ///   case-sensitive.
  /// * [startWithSearch] is a boolean indicating whether to start
  /// search with the search string.
  /// * [onSearchResultsBuilder] is the optional function to customize the build
  ///   of the search results.
  const StatefulSearchable({
    required this.searchIn,
    required this.textController,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
    this.onSearchResultsBuilder,
    super.key,
  });

  /// The text editing controller for the search bar.
  final TextEditingController textController;

  @override
  final Iterable<String> Function(T item, BuildContext context) searchIn;

  @override
  final bool caseSensitiveSearch;

  @override
  final bool startWithSearch;

  @override
  final Iterable<T> Function(String query, SearchMap<T> map)?
  onSearchResultsBuilder;
}
