// ignore_for_file: long-parameter-list
// ignore_for_file: avoid-nullable-parameters-with-default-values

import "package:flutter/gestures.dart";
import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/world_countries_build_context_extension.dart";
import "../../interfaces/material_context_interface.dart";
import "../../interfaces/searchable_interface.dart";
import "../../mixins/popped_mixin.dart";
import "../../mixins/properties_convertible_mixin.dart";
import "../../models/typedefs.dart";
import "../base_widgets/stateful_indexed_list_view.dart";
import "indexed_list_view_builder.dart";
import "search_list_listenable_builder.dart";

part "searchable_indexed_list_view_builder_state.dart";

/// A widget that displays a list of items, with search functionality and
/// indexing support.
class SearchableIndexedListViewBuilder<T extends Object>
    extends StatefulIndexedListView<T>
    with PropertiesConvertibleMixin<T>, PoppedMixin<T>
    implements MaterialContextInterface<T>, SearchableInterface<T> {
  /// Constructor for the [SearchableIndexedListViewBuilder] class.
  ///
  /// * [items] is the list of items to display.
  /// * [addAutomaticKeepAlives] is a boolean indicating whether to add
  ///   automatic keep-alives to the items.
  /// * [addRepaintBoundaries] is a boolean indicating whether to add repaint
  ///   boundaries to the items.
  /// * [addSemanticIndexes] is a boolean indicating whether to add semantic
  ///   indexes to the items.
  /// * [cacheExtent] is the cache extent for the list.
  /// * [chosen] is the index of the currently chosen item.
  /// * [clipBehavior] is the clip behavior for the list.
  /// * [crossAxisAlignment] is the cross-axis alignment for the list.
  /// * [direction] is the direction of the list.
  /// * [disabled] is a boolean indicating whether the list is disabled.
  /// * [dragStartBehavior] is the drag start behavior for the list.
  /// * [emptyStatePlaceholder] is the widget to display when the list is empty.
  /// * [header] is the optional header to display above the list.
  /// * [itemBuilder] is the builder function for the items.
  /// * [key] is the optional key to use for the widget.
  /// * [keyboardDismissBehavior] is the keyboard dismiss behavior for the list.
  /// * [mainAxisAlignment] is the main axis alignment for the list.
  /// * [mainAxisSize] is the main axis size for the list.
  /// * [onSelect] is the callback function to call when an item is selected.
  /// * [padding] is the padding for the list.
  /// * [physics] is the physics for the list.
  /// * [primary] is a boolean indicating whether the list is the primary scroll
  ///   view.
  /// * [restorationId] is the restoration id for the list.
  /// * [reverse] is a boolean indicating whether to reverse the order of the
  ///   items.
  /// * [scrollController] is the scroll controller for the list.
  /// * [separator] is the optional separator to display between items.
  /// * [shrinkWrap] is a boolean indicating whether to shrink-wrap the list.
  /// * [sort] is the sorting function for the items.
  /// * [textBaseline] is the text baseline for the items.
  /// * [textDirection] is the text direction for the items.
  /// * [verticalDirection] is the vertical direction for the items.
  /// * [textController] is the optional text editing controller for the search
  ///   bar.
  /// * [searchIn] is the optional function to extract search strings from the
  ///   items.
  /// * [onSearchResultsBuilder] is the optional function to customize the build
  ///   of the search results.
  /// * [caseSensitiveSearch] is a boolean indicating whether the search is
  ///   case-sensitive.
  /// * [startWithSearch] is a boolean indicating whether the search should only
  ///   start with the search string.
  /// * [showSearchBar] is a nullable boolean indicating whether to show the
  /// search bar. If not specified uses `PickersThemeData.showHeader` value and
  /// fallbacks to items count condition `if (items.length > 5)`, according to
  /// the Hick's law optimal range number of options.
  const SearchableIndexedListViewBuilder(
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
    super.shrinkWrap,
    super.sort,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    super.spacing,
    this.caseSensitiveSearch = false,
    this.searchIn,
    this.startWithSearch = true,
    this.textController,
    this.onSearchResultsBuilder,

    /// If not specified uses `PickersThemeData.showHeader` and fallbacks to
    /// items count condition `if (items.length > 5)`, according to the Hick's
    /// law optimal range number of options.
    bool? showSearchBar,
  }) : super(showHeader: showSearchBar);

  /// The text editing controller for the search bar.
  final TextEditingController? textController;

  /// The method to apply search to the items.
  @override
  final Iterable<String> Function(T item, BuildContext context)? searchIn;

  /// A boolean indicating whether the search is case-sensitive.
  @override
  final bool caseSensitiveSearch;

  /// A boolean indicating whether to start search with the search string.
  @override
  final bool startWithSearch;

  @override
  final Iterable<T> Function(String query, SearchMap<T> map)?
  onSearchResultsBuilder;

  @override
  State<SearchableIndexedListViewBuilder<T>> createState() =>
      _SearchableIndexedListViewBuilderState<T>();

  @override
  Future<T?> showInModalBottomSheet(
    BuildContext context, {
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape = UiConstants.shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = true,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    double? heightFactor = 0.66,
    AnimationStyle? sheetAnimationStyle,
    bool? requestFocus,
  }) async => null;

  @override
  Future<T?>? showInSearch(
    BuildContext context, {
    String? query = "",
    bool useRootNavigator = false,
  }) => null;

  @override
  Future<T?>? showInDialog(
    BuildContext context, {
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    Key? key,
    Widget? icon,
    EdgeInsetsGeometry? iconPadding,
    Color? iconColor,
    Widget? title,
    EdgeInsetsGeometry? titlePadding,
    TextStyle? titleTextStyle,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? contentTextStyle,
    List<Widget>? actions,
    EdgeInsetsGeometry? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    OverflowBarAlignment? actionsOverflowAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    EdgeInsetsGeometry? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    String? semanticLabel,
    EdgeInsets insetPadding = const EdgeInsets.symmetric(
      vertical: 24,
      horizontal: 40,
    ),
    Clip clipBehavior = Clip.none,
    ShapeBorder? shape,
    AlignmentGeometry? alignment,
    bool scrollable = false,
    bool? requestFocus,
    AnimationStyle? animationStyle,
  }) => null;
}
