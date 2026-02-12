// ignore_for_file: prefer-widget-private-members

import "dart:collection";

import "package:flutter/widgets.dart"
    show BuildContext, State, Widget, WidgetsBinding;

import "../../extensions/iterable_search_map_extension.dart";
import "../../mixins/compare_search_mixin.dart";
import "../../model/typedefs.dart";
import "../base_widgets/stateful_searchable.dart";

/// A stateful searchable widget that builds a list view based on a list of
/// items.
class SearchListListenableBuilder<T extends Object>
    extends StatefulSearchable<T>
    with CompareSearchMixin<T> {
  /// Constructor for the [SearchListListenableBuilder] class.
  ///
  /// * [builder] is the builder function to use for the list view.
  /// * [items] is the list of items to display in the list view.
  /// * [searchIn] is the optional function to use to extract the searchable
  ///   string from an item.
  /// * [onSearchResultsBuilder] is the optional function to customize the build
  ///   of the search results.
  /// * [textController] is the text controller to use for the search bar.
  /// * [caseSensitiveSearch] is a boolean indicating whether to use
  ///   case-sensitive search.
  /// * [startWithSearch] is a boolean indicating whether to search from the
  ///   beginning of the string.
  /// * [key] is the optional key to use for the widget.
  const SearchListListenableBuilder({
    required this.builder,
    required this.items,
    required super.searchIn,
    required super.textController,
    super.onSearchResultsBuilder,
    super.caseSensitiveSearch,
    super.startWithSearch,
    super.key,
  });

  /// The list of items to display in the list view.
  final Iterable<T> items;

  /// The builder function to use for the list view.
  final Widget Function(BuildContext context, UnmodifiableListView<T> list)
  builder;

  @override
  State<SearchListListenableBuilder<T>> createState() =>
      _SearchListListenableBuilderState<T>();
}

class _SearchListListenableBuilderState<T extends Object>
    extends State<SearchListListenableBuilder<T>> {
  UnmodifiableListView<T> items = UnmodifiableListView(const []);
  SearchMap<T> map = const {};

  @override
  void initState() {
    super.initState();
    items = UnmodifiableListView(widget.items);
    widget.textController.addListener(textChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) => updateMap());
  }

  @override
  void didUpdateWidget(SearchListListenableBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items.length != widget.items.length) updateMap();
    if (oldWidget.textController != widget.textController) {
      oldWidget.textController.removeListener(textChanged);
      widget.textController.addListener(textChanged);
    }
  }

  bool hasSameText(String itemText) =>
      widget.compareWithTextInput(widget.textController, itemText);

  void textChanged() {
    final text = widget.textController.text.trim();
    final filteredItems =
        widget.onSearchResultsBuilder?.call(text, map) ??
        widget.items.searchResults(map, hasSameText);

    setState(() => items = UnmodifiableListView(filteredItems));
  }

  void updateMap() => map = widget.items.searchMap(context, widget.searchIn);

  @override
  void dispose() {
    widget.textController.removeListener(textChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, items);
}
