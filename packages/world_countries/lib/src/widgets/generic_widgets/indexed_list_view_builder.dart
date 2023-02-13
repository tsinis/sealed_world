// ignore_for_file: arguments-ordering

import "package:flutter/widgets.dart";

import "../../constants/ui_constants.dart";
import "../../models/item_properties.dart";
import "../base_widgets/stateful_indexed_list_view.dart";

class IndexedListViewBuilder<T extends Object>
    extends StatefulIndexedListView<T> {
  const IndexedListViewBuilder(
    super.items, {
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.cacheExtent,
    super.chosen,
    super.clipBehavior,
    super.crossAxisAlignment,
    super.direction,
    super.disabled,
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

  Iterable<T> get _sortedItems => sort != null
      ? List<T>.unmodifiable(items.toList(growable: false)..sort(sort))
      : items;

  @override
  State<IndexedListViewBuilder> createState() =>
      _IndexedListViewBuilderState<T>();
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
          Flexible(
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
                          widget.separator ?? UiConstants.placeholder,
                      itemBuilder: (innerContext, index) {
                        final item = widget._sortedItems.elementAt(index);
                        final isChosen = widget.chosen?.contains(item);
                        final isDisabled = widget.disabled?.contains(item);
                        final properties = ItemProperties(
                          innerContext,
                          item,
                          index: index,
                          isChosen: isChosen ?? false,
                          isDisabled: isDisabled ?? false,
                        );
                        final child = widget.itemBuilder?.call(properties);
                        if (child == null) return null;
                        if (properties.isDisabled) return child;

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
