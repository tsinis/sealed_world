import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";
import "../../interfaces/indexed_list_view_interface.dart";
import "../../models/item_properties.dart";

/// A stateful widget for displaying an indexed list of items.
///
/// This widget can be used to display a list of items, each of which can be
/// selected by the user. The items are displayed in an indexed list, meaning
/// that each item is associated with a unique index. The user can select an
/// item by tapping on it, and the selected item will be highlighted.
///
/// This widget is designed to be highly customizable. The appearance and
/// behavior of the list can be customized by passing in optional parameters
/// to the constructor.
///
/// This widget can be used in conjunction with the [ItemProperties] class to
/// customize the appearance and behavior of individual items in the list.
abstract class StatefulIndexedListView<T extends Object, W extends Widget>
    extends StatefulWidget
    implements IndexedListViewInterface {
  /// Creates a [StatefulIndexedListView] with the given parameters.
  ///
  /// The [items] parameter is required and specifies the list of items to
  /// display.
  ///
  /// The optional parameters allow customization of the list's appearance and
  /// behavior.
  const StatefulIndexedListView(
    this.items, {
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries, // Default to: true.
    this.addSemanticIndexes, // Default to: true.
    this.cacheExtent,
    this.chosen,
    this.clipBehavior, // Default to: Clip.hardEdge.
    this.crossAxisAlignment, // Default to: CrossAxisAlignment.center.
    this.direction, // Default to: Axis.vertical.
    this.disabled,
    this.dragStartBehavior, // Default to: DragStartBehavior.start.
    this.emptyStatePlaceholder = UiConstants.placeholder, // SizedBox.shrink().
    this.header,
    this.itemBuilder,
    // Default to: ScrollViewKeyboardDismissBehavior.manual.
    this.keyboardDismissBehavior,
    this.mainAxisAlignment, // Default to: MainAxisAlignment.start.
    this.mainAxisSize, // Default to: MainAxisSize.min.
    this.onSelect,
    this.padding,
    this.physics,
    this.primary,
    this.restorationId,
    this.reverse, // Default to: false.
    this.scrollController,
    this.separator,
    this.showHeader, // Default to: true.
    this.shrinkWrap, // Default to: false.
    this.sort,
    this.textBaseline,
    this.textDirection,
    this.verticalDirection, // Default to: VerticalDirection.down.
    this.spacing,
    super.key,
  });

  /// The list of items to display.
  final Iterable<T> items;

  /// A builder that returns a widget to display an item in the list.
  ///
  /// The builder is called for each item in the list and should return a widget
  /// that displays the item. The argument passed to the builder is an
  /// [ItemProperties] object that contains information about the item being
  /// displayed.
  final Widget? Function(ItemProperties<T>, W?)? itemBuilder;

  /// A widget to display when the list is empty.
  final Widget emptyStatePlaceholder;

  /// A callback that is called when an item is selected.
  final ValueSetter<T>? onSelect;

  /// A list of items that should be highlighted as selected.
  final Iterable<T>? chosen;

  /// A list of items that should be disabled.
  final Iterable<T>? disabled;

  @override
  final Widget? separator;

  /// A function to sort the items in the list.
  // ignore: prefer-correct-callback-field-name, A breaking change.
  final int Function(T, T)? sort;

  @override
  final bool? showHeader;

  /// A widget to display above the list of items.
  @override
  final Widget? header;

  @override
  final Axis? direction;

  @override
  final MainAxisAlignment? mainAxisAlignment;

  @override
  final MainAxisSize? mainAxisSize;

  @override
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  final TextDirection? textDirection;

  @override
  final VerticalDirection? verticalDirection;

  @override
  final TextBaseline? textBaseline;

  @override
  final Clip? clipBehavior;

  @override
  final bool? reverse;

  /// {@macro flutter.widgets.scroll_view.controller}
  final ScrollController? scrollController;

  @override
  final bool? primary;

  @override
  final bool? shrinkWrap;

  /// {@macro flutter.widgets.scrollable.restorationId}
  final String? restorationId;

  @override
  final ScrollPhysics? physics;

  @override
  final EdgeInsetsGeometry? padding;

  /// {@template sealed_world.add_automatic_keep_alives}
  /// Whether to wrap each child in an [AutomaticKeepAlive].
  ///
  /// Typically, children in lazy list are wrapped in [AutomaticKeepAlive]
  /// widgets so that children can use [KeepAliveNotification]s to preserve
  /// their state when they would otherwise be garbage collected off-screen.
  ///
  /// This feature (and `addRepaintBoundaries`) must be disabled if the children
  /// are going to manually maintain their [KeepAlive] state. It may also be
  /// more efficient to disable this feature if it is known ahead of time that
  /// none of the children will ever try to keep themselves alive.
  ///
  /// Defaults to `true`.
  /// {@endtemplate}
  final bool addAutomaticKeepAlives;

  @override
  final bool? addRepaintBoundaries;

  @override
  final bool? addSemanticIndexes;

  @override
  final double? cacheExtent;

  @override
  final DragStartBehavior? dragStartBehavior;

  @override
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  @override
  final double? spacing;
}
