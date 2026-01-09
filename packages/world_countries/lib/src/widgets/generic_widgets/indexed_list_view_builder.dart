import "package:flutter/gestures.dart";
import "package:flutter/widgets.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/world_countries_build_context_extension.dart";
import "../../mixins/properties_convertible_mixin.dart";
import "../base_widgets/stateful_indexed_list_view.dart";

/// A stateful indexed list view widget that displays a list of items.
class IndexedListViewBuilder<T extends Object, W extends Widget>
    extends StatefulIndexedListView<T, W>
    with PropertiesConvertibleMixin<T, W> {
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
  /// * [key] is the optional key to use for the widget.
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
    super.spacing,
  });

  @override
  State<IndexedListViewBuilder> createState() =>
      _IndexedListViewBuilderState<T, W>();
}

class _IndexedListViewBuilderState<T extends Object, W extends Widget>
    extends State<IndexedListViewBuilder<T, W>> {
  @override
  // ignore: avoid-high-cyclomatic-complexity, build methods are typically long.
  Widget build(BuildContext context) {
    final theme = context.pickersTheme;
    final header = widget.header ?? theme?.header;

    return Column(
      mainAxisAlignment:
          widget.mainAxisAlignment ??
          theme?.mainAxisAlignment ??
          MainAxisAlignment.start,
      mainAxisSize:
          widget.mainAxisSize ?? theme?.mainAxisSize ?? MainAxisSize.min,
      crossAxisAlignment:
          widget.crossAxisAlignment ??
          theme?.crossAxisAlignment ??
          CrossAxisAlignment.center,
      textDirection: widget.textDirection ?? theme?.textDirection,
      verticalDirection:
          widget.verticalDirection ??
          theme?.verticalDirection ??
          VerticalDirection.down,
      textBaseline: widget.textBaseline ?? theme?.textBaseline,
      spacing: widget.spacing ?? theme?.spacing ?? 0.0,
      children: [
        if (header != null && (widget.showHeader ?? theme?.showHeader ?? true))
          header,
        Flexible(
          child: AnimatedSwitcher(
            duration: UiConstants.duration,
            switchInCurve: UiConstants.switchInCurve,
            switchOutCurve: UiConstants.switchOutCurve,
            child: widget.items.isEmpty
                ? widget.emptyStatePlaceholder
                // ignore: avoid-shrink-wrap-in-lists, it's `false` by default.
                : ListView.separated(
                    scrollDirection:
                        widget.direction ?? theme?.direction ?? Axis.vertical,
                    reverse: widget.reverse ?? theme?.reverse ?? false,
                    controller: widget.scrollController,
                    primary: widget.primary ?? theme?.primary,
                    physics: widget.physics ?? theme?.physics,
                    shrinkWrap: widget.shrinkWrap ?? theme?.shrinkWrap ?? false,
                    padding: widget.padding ?? theme?.padding,
                    itemBuilder: (newContext, index) {
                      final properties = widget.properties(newContext, index);
                      final child = widget.itemBuilder?.call(properties, null);
                      if (child == null) return null;
                      if (properties.isDisabled) return child;

                      return GestureDetector(
                        onTap: () => widget.onSelect?.call(properties.item),
                        child: child,
                      );
                    },
                    separatorBuilder: (_, _) =>
                        widget.separator ??
                        theme?.separator ??
                        UiConstants.separator,
                    itemCount: widget.items.length,
                    addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
                    addRepaintBoundaries:
                        widget.addRepaintBoundaries ??
                        theme?.addRepaintBoundaries ??
                        true,
                    addSemanticIndexes:
                        widget.addSemanticIndexes ??
                        theme?.addSemanticIndexes ??
                        true,
                    cacheExtent: widget.cacheExtent ?? theme?.cacheExtent,
                    dragStartBehavior:
                        widget.dragStartBehavior ??
                        theme?.dragStartBehavior ??
                        DragStartBehavior.start,
                    keyboardDismissBehavior:
                        widget.keyboardDismissBehavior ??
                        theme?.keyboardDismissBehavior ??
                        ScrollViewKeyboardDismissBehavior.manual,
                    restorationId: widget.restorationId,
                    clipBehavior:
                        widget.clipBehavior ??
                        theme?.clipBehavior ??
                        Clip.hardEdge,
                  ),
          ),
        ),
      ],
    );
  }
}
