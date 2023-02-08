import "package:flutter/widgets.dart";

import "../base_widgets/stateful_searchable.dart";

class SearchListListenableBuilder<T extends Object>
    extends StatefulSearchable<T> {
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
  final Widget Function(BuildContext context, List<T> list) builder;

  @override
  State<SearchListListenableBuilder<T>> createState() =>
      _SearchListListenableBuilderState<T>();
}

class _SearchListListenableBuilderState<T extends Object>
    extends State<SearchListListenableBuilder<T>> {
  List<T> items = const [];

  @override
  void initState() {
    super.initState();
    items = List<T>.unmodifiable(widget.items);
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

  bool search(String input, String itemText) {
    final item = widget.caseSensitiveSearch ? itemText : itemText.toLowerCase();
    final text = widget.caseSensitiveSearch ? input : input.toLowerCase();

    return widget.startWithSearch ? item.startsWith(text) : item.contains(text);
  }

  void textChanged() {
    final filteredItems = widget.items.where(
      (item) => widget.searchIn(item).toSet().any(
            (element) => search(widget.textController.value.text, element),
          ),
    );
    setState(() => items = List<T>.unmodifiable(filteredItems));
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, items);
}
