// ignore_for_file: arguments-ordering

import "package:flutter/widgets.dart";

import "../../helpers/ui_constants.dart";
import "../base_widgets/stateful_indexed_list_view.dart";

class IndexedListViewBuilder<T extends Object>
    extends StatefulIndexedListView<T> {
  const IndexedListViewBuilder({
    required super.items,
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.cacheExtent,
    super.chosen,
    super.clipBehavior,
    super.crossAxisAlignment,
    super.direction,
    super.dragStartBehavior,
    super.emptyStatePlaceholder,
    super.header,
    super.itemBuilder,
    super.key,
    super.keyboardDismissBehavior,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.onSelect,
    super.padding,
    super.physics,
    super.primary,
    super.restorationId,
    super.reverse,
    super.scrollController,
    super.separator,
    super.showHeader,
    super.shrinkWrap,
    super.sort,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
  });

  Iterable<T> get _sortedItems {
    final chosenIsEmpty = chosen?.isEmpty ?? true;
    if (sort == null && chosenIsEmpty) return items;
    final list = items.toList(growable: !chosenIsEmpty);
    if (sort != null) list.sort(sort);
    if (chosenIsEmpty) return List<T>.unmodifiable(list);
    for (final item in chosen ?? <T>[]) {
      list
        ..remove(item)
        ..insert(0, item);
    }

    return List<T>.unmodifiable(list);
  }

  @override
  State<IndexedListViewBuilder> createState() =>
      _IndexedListViewBuilderState<T>();
}

class _IndexedListViewBuilderState<T extends Object>
    extends State<IndexedListViewBuilder<T>> {
  late final Iterable<T> items = widget._sortedItems;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        crossAxisAlignment: widget.crossAxisAlignment,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        textBaseline: widget.textBaseline,
        children: [
          // ignore: avoid-non-null-assertion, it's not a getter.
          if (widget.header != null && widget.showHeader) widget.header!,
          Expanded(
            child: AnimatedSwitcher(
              duration: UiConstants.duration,
              switchInCurve: UiConstants.switchInCurve,
              switchOutCurve: UiConstants.switchOutCurve,
              child: widget.items.isEmpty
                  ? widget.emptyStatePlaceholder
                  // ignore: avoid-shrink-wrap-in-lists, it's false by default.
                  : ListView.separated(
                      addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
                      addRepaintBoundaries: widget.addRepaintBoundaries,
                      addSemanticIndexes: widget.addSemanticIndexes,
                      cacheExtent: widget.cacheExtent,
                      clipBehavior: widget.clipBehavior,
                      controller: widget.scrollController,
                      dragStartBehavior: widget.dragStartBehavior,
                      keyboardDismissBehavior: widget.keyboardDismissBehavior,
                      padding: widget.padding,
                      physics: widget.physics,
                      primary: widget.primary,
                      restorationId: widget.restorationId,
                      reverse: widget.reverse,
                      scrollDirection: widget.direction,
                      shrinkWrap: widget.shrinkWrap,
                      itemCount: widget.items.length,
                      separatorBuilder: (_, __) =>
                          widget.separator ?? const SizedBox.shrink(),
                      itemBuilder: (bc, i) {
                        final item = items.elementAt(i);
                        final isChosen = widget.chosen?.contains(item) ?? false;
                        final child = widget.itemBuilder
                            ?.call(bc, i, item, isChosen: isChosen);
                        if (child == null) return null;

                        return GestureDetector(
                          onTap: () => widget.onSelect?.call(item),
                          child: child,
                        );
                      },
                    ),
            ),
          ),
        ],
      );
}
