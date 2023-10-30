import "package:flutter/widgets.dart";

import "../../interfaces/searchable_interface.dart";

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
  const StatefulSearchable({
    required this.searchIn,
    required this.textController,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
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
}
