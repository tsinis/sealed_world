import "package:flutter/widgets.dart";

import "../../constants/ui_constants.dart";
import "../../mixins/properties_convertible_mixin.dart";
import "../base_widgets/stateful_indexed_list_view.dart";

/// A stateful indexed list view widget that displays a list of items.
class IndexedListViewBuilder<T extends Object>
    extends StatefulIndexedListView<T> with PropertiesConvertibleMixin<T> {
  /// Constructor for the [IndexedListViewBuilder] class.
  ///
  /// * [items] is the list of items to display in the list view.
  /// * [sort] is the optional function to use to sort the items.
  /// * [addAutomaticKeepAlives] is a boolean indicating whether to add
  ///   automatic keep alives.
  /// * [addRepaintBoundaries] is a boolean indicating whether to add repaint
  ///   boundaries.
  /// * [addSemanticIndexes] is a boolean indicating whether to add semantic
  ///   indexes.
  /// * [cacheExtent] is the cache extent to use.
  /// * [chosen] is the optional item that is chosen by default.
  /// * [clipBehavior] is the clip behavior to use.
  /// * [crossAxisAlignment] is the cross axis alignment to use.
  /// * [direction] is the direction to use.
  /// * [disabled] is a boolean indicating whether the list view is disabled.
  /// * [dragStartBehavior] is the drag start behavior to use.
  /// * [emptyStatePlaceholder] is the placeholder widget to display when the
  ///   list is empty.
  /// * [header] is the optional header widget to display.
  /// * [itemBuilder] is the builder function to use for the items.
  /// * `key` is the optional key to use for the widget.
  /// * [keyboardDismissBehavior] is the keyboard dismiss behavior to use.
  /// * [mainAxisAlignment] is the main axis alignment to use.
  /// * [mainAxisSize] is the main axis size to use.
  /// * [onSelect] is the callback function to call when an item is selected.
  /// * [padding] is the padding to use.
  /// * [physics] is the physics to use.
  /// * [primary] is a boolean indicating whether the list view is the primary
  ///   widget.
  /// * [restorationId] is the optional restoration ID to use.
  /// * [reverse] is a boolean indicating whether to reverse the list view.
  /// * [scrollController] is the scroll controller to use.
  /// * [separator] is the optional separator widget to use.
  /// * [showHeader] is a boolean indicating whether to show the header.
  /// * [shrinkWrap] is a boolean indicating whether to shrink wrap the items.
  /// * [textBaseline] is the text baseline to use.
  /// * [textDirection] is the text direction to use.
  /// * [verticalDirection] is the vertical direction to use.
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
                      scrollDirection: widget.direction,
                      reverse: widget.reverse,
                      controller: widget.scrollController,
                      primary: widget.primary,
                      physics: widget.physics,
                      shrinkWrap: widget.shrinkWrap,
                      padding: widget.padding,
                      itemBuilder: (newContext, index) {
                        final properties = widget.properties(newContext, index);
                        final child = widget.itemBuilder?.call(properties);
                        if (child == null) return null;
                        if (properties.isDisabled) return child;

                        return GestureDetector(
                          onTap: () => widget.onSelect?.call(properties.item),
                          child: child,
                        );
                      },
                      separatorBuilder: (_, __) =>
                          widget.separator ?? UiConstants.placeholder,
                      itemCount: widget.items.length,
                      addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
                      addRepaintBoundaries: widget.addRepaintBoundaries,
                      addSemanticIndexes: widget.addSemanticIndexes,
                      cacheExtent: widget.cacheExtent,
                      dragStartBehavior: widget.dragStartBehavior,
                      keyboardDismissBehavior: widget.keyboardDismissBehavior,
                      restorationId: widget.restorationId,
                      clipBehavior: widget.clipBehavior,
                    ),
            ),
          ),
        ],
      );
}
