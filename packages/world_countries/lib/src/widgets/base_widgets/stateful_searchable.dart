import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart"
    show BuildContext, StatefulWidget, TextEditingController;

import "../../interfaces/searchable_interface.dart";
import "../../model/search_data.dart";
import "../../model/typedefs.dart";

/// An abstract stateful widget that provides search functionality.
abstract class StatefulSearchable<T extends Object> extends StatefulWidget
    implements SearchableInterface<T> {
  /// Constructor for the [StatefulSearchable] class.
  ///
  /// * [searchIn] is the function to extract search data from the items.
  /// * [textController] is the text editing controller for the search bar.
  /// * [caseSensitiveSearch] is a boolean indicating whether the search is
  ///   case-sensitive.
  /// * [startWithSearch] is a boolean indicating whether to start
  /// search with the search string.
  /// * [onSearchResultsBuilder] is the optional function to customize the build
  ///   of the search results.
  const new({
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
  final SearchData Function(T item, BuildContext context) searchIn;

  @override
  final bool caseSensitiveSearch;

  @override
  final bool startWithSearch;

  @override
  final Iterable<T> Function(String query, SearchMap<T> map)?
  onSearchResultsBuilder;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<TextEditingController>(
          "textController",
          textController,
        ),
      )
      ..add(
        ObjectFlagProperty<
          // ignore: prefer-typedefs-for-callbacks, it's just a debug property.
          SearchData Function(T item, BuildContext context)
        >.has("searchIn", searchIn),
      )
      ..add(
        DiagnosticsProperty<bool>(
          "caseSensitiveSearch",
          caseSensitiveSearch,
          defaultValue: false,
        ),
      )
      ..add(
        DiagnosticsProperty<bool>(
          "startWithSearch",
          startWithSearch,
          defaultValue: true,
        ),
      )
      ..add(
        ObjectFlagProperty<
          // ignore: prefer-typedefs-for-callbacks, it's just a debug property.
          Iterable<T> Function(String query, SearchMap<T> map)?
        >.has("onSearchResultsBuilder", onSearchResultsBuilder),
      );
  }
}
