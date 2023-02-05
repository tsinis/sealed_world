// ignore_for_file: arguments-ordering

import "package:flutter/widgets.dart";

import '../../helpers/ui_constants.dart';
import "../base_widgets/stateful_indexed_list_view.dart";

class IndexedListViewBuilder<T extends Object>
    extends StatefulIndexedListView<T> {
  const IndexedListViewBuilder({
    required super.items,
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.cacheExtent,
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
    super.showHeader,
    super.separator,
    super.shrinkWrap,
    super.sort,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
  });

  @override
  State<IndexedListViewBuilder> createState() =>
      _IndexedListViewBuilderState<T>();

  Iterable<T> get _items => sort != null
      ? List<T>.unmodifiable(items.toList(growable: false)..sort(sort))
      : items;
}

class _IndexedListViewBuilderState<T extends Object>
    extends State<IndexedListViewBuilder<T>> {
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
                        final item = widget._items.elementAt(i);
                        final child = widget.itemBuilder?.call(bc, i, item);
                        if (child == null) return null;

                        return GestureDetector(
                          onTap: () => widget.onSelect?.call(item),
                          child: widget.itemBuilder?.call(bc, i, item),
                        );
                      },
                    ),
            ),
          ),
        ],
      );
}
