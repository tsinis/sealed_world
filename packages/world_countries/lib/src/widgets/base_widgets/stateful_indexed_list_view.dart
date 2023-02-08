import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/widgets.dart";

import "../../models/item_properties.dart";

abstract class StatefulIndexedListView<T extends Object>
    extends StatefulWidget {
  const StatefulIndexedListView({
    required this.items,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.chosen,
    this.clipBehavior = Clip.hardEdge,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.direction = Axis.vertical,
    this.disabled,
    this.dragStartBehavior = DragStartBehavior.start,
    this.emptyStatePlaceholder = const SizedBox.shrink(),
    this.header,
    this.itemBuilder,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.onSelect,
    this.padding,
    this.physics,
    this.primary,
    this.restorationId,
    this.reverse = false,
    this.scrollController,
    this.separator,
    this.showHeader = true,
    this.shrinkWrap = false,
    this.sort,
    this.textBaseline,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    super.key,
  });

  final Widget? Function(ItemProperties<T> itemProperties)? itemBuilder;
  final Widget emptyStatePlaceholder;
  final Iterable<T> items;
  final ValueSetter<T>? onSelect;
  final Iterable<T>? chosen;
  final Iterable<T>? disabled;
  final Widget? separator;
  final int Function(T, T)? sort;
  final bool showHeader;
  final Widget? header;

  /// {@macro flutter.widgets.scroll_view.scrollDirection}
  final Axis direction;

  /// {@template sealed_world.main_axis_alignment}
  /// How the items should be placed along the main axis.
  ///
  /// For example, [MainAxisAlignment.start], the default, places the children
  /// at the start (i.e., the left for a horizontal axis or the top for
  /// a vertical) of the main axis.
  /// {@endtemplate}
  final MainAxisAlignment mainAxisAlignment;

  /// {@template sealed_world.main_axis_size}
  /// How much space should be occupied in the main axis.
  ///
  /// After allocating space to items, there might be some remaining free
  /// space. This value controls whether to maximize or minimize the amount of
  /// free space, subject to the incoming layout constraints.
  /// {@endtemplate}
  final MainAxisSize mainAxisSize;

  /// {@template sealed_world.cross_axis_alignment}
  /// How the items should be placed along the cross axis.
  ///
  /// For example, [CrossAxisAlignment.center], the default, centers the
  /// children in the cross axis.
  /// {@endtemplate}
  final CrossAxisAlignment crossAxisAlignment;

  /// {@template sealed_world.text_direction}
  /// Determines the order to lay children out horizontally and how to interpret
  /// `start` and `end` in the horizontal direction.
  ///
  /// Defaults to the ambient [Directionality].
  ///
  /// If [textDirection] is [TextDirection.rtl], then the direction in which
  /// text flows starts from right to left. Otherwise, if [textDirection] is
  /// [TextDirection.ltr], then the direction in which text flows starts from
  /// left to right.
  ///
  /// If the [direction] is [Axis.horizontal], this controls the order in which
  /// the children are positioned (left-to-right or right-to-left), and the
  /// meaning of the [mainAxisAlignment] property's [MainAxisAlignment.start]
  /// and [MainAxisAlignment.end] values.
  ///
  /// If the [direction] is [Axis.horizontal], and either the
  /// [mainAxisAlignment] is either [MainAxisAlignment.start] or
  /// [MainAxisAlignment.end], or there's more than one child, then the
  /// [textDirection] (or the ambient [Directionality]) must not be null.
  ///
  /// If the [direction] is [Axis.vertical], this controls the meaning of the
  /// [crossAxisAlignment] property's [CrossAxisAlignment.start] and
  /// [CrossAxisAlignment.end] values.
  ///
  /// If the [direction] is [Axis.vertical], and the [crossAxisAlignment] is
  /// either [CrossAxisAlignment.start] or [CrossAxisAlignment.end], then the
  /// [textDirection] (or the ambient [Directionality]) must not be null.
  /// {@endtemplate}
  final TextDirection? textDirection;

  /// {@template sealed_world.vertical_direction}
  /// Determines the order to lay children out vertically and how to interpret
  /// `start` and `end` in the vertical direction.
  ///
  /// Defaults to [VerticalDirection.down].
  ///
  /// If the [direction] is [Axis.vertical], this controls which order children
  /// are painted in (down or up), the meaning of the [mainAxisAlignment]
  /// property's [MainAxisAlignment.start] and [MainAxisAlignment.end] values.
  ///
  /// If the [direction] is [Axis.vertical], and either the [mainAxisAlignment]
  /// is either [MainAxisAlignment.start] or [MainAxisAlignment.end], or there's
  /// more than one child, then the [verticalDirection] must not be null.
  ///
  /// If the [direction] is [Axis.horizontal], this controls the meaning of the
  /// [crossAxisAlignment] property's [CrossAxisAlignment.start] and
  /// [CrossAxisAlignment.end] values.
  ///
  /// If the [direction] is [Axis.horizontal], and the [crossAxisAlignment] is
  /// either [CrossAxisAlignment.start] or [CrossAxisAlignment.end], then the
  /// [verticalDirection] must not be null.
  /// {@endtemplate}
  final VerticalDirection verticalDirection;

  /// {@template sealed_world.text_baseline}
  /// If aligning items according to their baseline, which baseline to use.
  ///
  /// This must be set if using baseline alignment. There is no default because
  /// there is no way for the framework to know the correct baseline _a priori_.
  /// {@endtemplate}
  final TextBaseline? textBaseline;

  /// {@macro flutter.material.Material.clipBehavior}
  final Clip clipBehavior;

  /// {@macro flutter.widgets.scroll_view.reverse}
  final bool reverse;

  /// {@macro flutter.widgets.scroll_view.controller}
  final ScrollController? scrollController;

  /// {@macro flutter.widgets.scroll_view.primary}
  final bool? primary;

  /// {@macro flutter.widgets.scroll_view.shrinkWrap}
  final bool shrinkWrap;

  /// {@macro flutter.widgets.scrollable.restorationId}
  final String? restorationId;

  /// {@macro flutter.widgets.scroll_view.physics}
  final ScrollPhysics? physics;

  /// The amount of space by which to inset the children.
  final EdgeInsetsGeometry? padding;

  /// {@template sealed_world.add_automatic_keep_alives}
  /// Whether to wrap each child in an [AutomaticKeepAlive].
  ///
  /// Typically, children in lazy list are wrapped in [AutomaticKeepAlive]
  /// widgets so that children can use [KeepAliveNotification]s to preserve
  /// their state when they would otherwise be garbage collected off-screen.
  ///
  /// This feature (and [addRepaintBoundaries]) must be disabled if the children
  /// are going to manually maintain their [KeepAlive] state. It may also be
  /// more efficient to disable this feature if it is known ahead of time that
  /// none of the children will ever try to keep themselves alive.
  ///
  /// Defaults to true.
  /// {@endtemplate}
  final bool addAutomaticKeepAlives;

  /// {@template sealed_world.add_repaint_boundaries}
  /// Whether to wrap each child in a [RepaintBoundary].
  ///
  /// Typically, children in a scrolling container are wrapped in repaint
  /// boundaries so that they do not need to be repainted as the list scrolls.
  /// If the children are easy to repaint (e.g., solid color blocks or a short
  /// snippet of text), it might be more efficient to not add a repaint boundary
  /// and instead always repaint the children during scrolling.
  ///
  /// Defaults to true.
  /// {@endtemplate}
  final bool addRepaintBoundaries;

  /// {@template sealed_world.add_semantic_indexes}
  /// Whether to wrap each child in an [IndexedSemantics].
  ///
  /// Typically, children in a scrolling container must be annotated with a
  /// semantic index in order to generate the correct accessibility
  /// announcements. This should only be set to false if the indexes have
  /// already been provided by an [IndexedSemantics] widget.
  ///
  /// Defaults to true.
  ///
  /// See also:
  ///
  ///  * [IndexedSemantics], for an explanation of how to manually
  ///    provide semantic indexes.
  /// {@endtemplate}
  final bool addSemanticIndexes;

  /// {@macro flutter.rendering.RenderViewportBase.cacheExtent}
  final double? cacheExtent;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// {@macro flutter.widgets.scroll_view.keyboardDismissBehavior}
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
}
