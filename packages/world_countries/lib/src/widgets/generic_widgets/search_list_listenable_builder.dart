import "dart:collection";

import "package:flutter/widgets.dart";

import "../../mixins/compare_search_mixin.dart";
import "../base_widgets/stateful_searchable.dart";

class SearchListListenableBuilder<T extends Object>
    extends StatefulSearchable<T> with CompareSearchMixin<T> {
  const SearchListListenableBuilder({
    required this.builder,
    required this.items,
    required super.searchIn,
    required super.textController,
    super.caseSensitiveSearch,
    super.startWithSearch,
    super.key,
  });

  final Iterable<T> items;
  final Widget Function(BuildContext context, UnmodifiableListView<T> list)
      builder;

  @override
  State<SearchListListenableBuilder<T>> createState() =>
      _SearchListListenableBuilderState<T>();
}

class _SearchListListenableBuilderState<T extends Object>
    extends State<SearchListListenableBuilder<T>> {
  UnmodifiableListView<T> items = UnmodifiableListView([]);

  @override
  void initState() {
    super.initState();
    items = UnmodifiableListView(widget.items);
    widget.textController.addListener(textChanged);
  }

  @override
  void didUpdateWidget(SearchListListenableBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.textController != widget.textController) {
      oldWidget.textController.removeListener(textChanged);
      widget.textController.addListener(textChanged);
    }
  }

  @override
  void dispose() {
    widget.textController.removeListener(textChanged);
    super.dispose();
  }

  bool hasSameText(String itemText) =>
      widget.compareWithInput(widget.textController.value.text, itemText);

  void textChanged() {
    final filteredItems =
        widget.items.where((i) => widget.searchIn(i).toSet().any(hasSameText));
    setState(() => items = UnmodifiableListView(filteredItems));
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, items);
}
