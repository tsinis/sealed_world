import "dart:collection";

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext, State, Widget;

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
  const new({
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

  bool _filtersLike(SearchListListenableBuilder<T> other) =>
      caseSensitiveSearch == other.caseSensitiveSearch &&
      startWithSearch == other.startWithSearch &&
      onSearchResultsBuilder == other.onSearchResultsBuilder;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<T>("items", items))
      ..add(
        ObjectFlagProperty<
          // ignore: prefer-typedefs-for-callbacks, it's just a debug property.
          Widget Function(BuildContext context, UnmodifiableListView<T> list)
        >.has("builder", builder),
      );
  }

  @override
  State<SearchListListenableBuilder<T>> createState() =>
      _SearchListListenableBuilderState<T>();
}

class _SearchListListenableBuilderState<T extends Object>
    extends State<SearchListListenableBuilder<T>> {
  UnmodifiableListView<T> _items = UnmodifiableListView(const []);

  /// The search data of the items, built once they are searched.
  SearchMap<T>? _map;

  /// The trimmed text the [_items] were last filtered with.
  String? _query;

  @override
  void initState() {
    super.initState();
    widget.textController.addListener(_textChanged);
  }

  void _textChanged() {
    // The controller also notifies about selection and composing changes.
    if (widget.textController.text.trim() == _query) return;
    setState(_filter);
  }

  void _filter() {
    final query = widget.textController.text.trim();
    _query = query;
    final items = widget.items;
    final onSearchResultsBuilder = widget.onSearchResultsBuilder;
    final filtered = query.isEmpty && onSearchResultsBuilder == null
        ? items
        : (onSearchResultsBuilder?.call(query, _searchMap) ??
              items.searchResults(
                _searchMap,
                (itemText) => widget.compareWithTextInput(
                  widget.textController,
                  itemText,
                ),
              ));

    // A list view reads the items by length and index, so the (lazy) results
    // are put into a list once, instead of being filtered again on each read.
    _items = UnmodifiableListView(List.of(filtered, growable: false));
  }

  SearchMap<T> get _searchMap =>
      _map ??= widget.items.searchMap(context, widget.searchIn);

  bool _hasSameItems(Iterable<T> oldItems) {
    final items = widget.items;
    if (identical(items, oldItems)) return true;
    // A length of a lazy iterable is one more pass over all of its items.
    if (items is List<T> &&
        oldItems is List<T> &&
        items.length != oldItems.length) {
      return false;
    }
    final oldIterator = oldItems.iterator;
    for (final item in items) {
      if (!oldIterator.moveNext() || oldIterator.current != item) return false;
    }

    return !oldIterator.moveNext();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The search data may come from the context (e.g. translations of the
    // current locale), so it is built again whenever the context changes.
    _map = null;
    _filter();
  }

  @override
  void didUpdateWidget(SearchListListenableBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final hasNewController = oldWidget.textController != widget.textController;
    if (hasNewController) {
      oldWidget.textController.removeListener(_textChanged);
      widget.textController.addListener(_textChanged);
    }

    if (!_hasSameItems(oldWidget.items) ||
        oldWidget.searchIn != widget.searchIn) {
      _map = null;
      _filter();
    } else if (hasNewController || !widget._filtersLike(oldWidget)) {
      _filter();
    }
  }

  @override
  void dispose() {
    widget.textController.removeListener(_textChanged);
    super.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<T>("items", _items))
      ..add(IntProperty("mapLength", _map?.length));
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, _items);
}
