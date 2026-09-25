import "dart:collection";

import "package:flutter/foundation.dart";
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
  SearchMap<T> _map = const {};

  @override
  void initState() {
    super.initState();
    _items = UnmodifiableListView(widget.items);
    widget.textController.addListener(_textChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateMap());
  }

  bool _hasSameText(String itemText) =>
      widget.compareWithTextInput(widget.textController, itemText);

  void _textChanged() {
    final text = widget.textController.text.trim();
    final filteredItems =
        widget.onSearchResultsBuilder?.call(text, _map) ??
        widget.items.searchResults(_map, _hasSameText);

    setState(() => _items = UnmodifiableListView(filteredItems));
  }

  void _updateMap() => _map = widget.items.searchMap(context, widget.searchIn);

  @override
  void didUpdateWidget(SearchListListenableBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items.length != widget.items.length) _updateMap();
    if (oldWidget.textController != widget.textController) {
      oldWidget.textController.removeListener(_textChanged);
      widget.textController.addListener(_textChanged);
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
      ..add(IntProperty("mapLength", _map.length));
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, _items);
}
