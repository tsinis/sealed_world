// ignore_for_file: long-parameter-list

import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";
import "../../interfaces/material_context_interface.dart";
import "../base_widgets/stateful_indexed_list_view.dart";
import "indexed_list_view_builder.dart";
import "search_list_listenable_builder.dart";

part "searchable_indexed_list_view_builder_state.dart";

class SearchableIndexedListViewBuilder<T extends Object>
    extends StatefulIndexedListView<T> implements MaterialContextInterface<T> {
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
    super.separator = const Divider(height: 1),
    super.shrinkWrap,
    super.sort,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    this.caseSensitiveSearch = false,
    this.searchIn,
    this.startWithSearch = true,
    this.textController,
    bool showSearchBar = true,
  }) : super(showHeader: showSearchBar);

  final TextEditingController? textController;
  final Iterable<String> Function(T item)? searchIn;
  final bool caseSensitiveSearch;
  final bool startWithSearch;

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
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    double? heightFactor = 0.6,
  }) =>
      showModalBottomSheet<T>(
        context: context,
        builder: (_) =>
            FractionallySizedBox(heightFactor: heightFactor, child: this),
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: shape,
        clipBehavior: clipBehavior,
        constraints: constraints,
        barrierColor: barrierColor,
        isScrollControlled: isScrollControlled,
        useRootNavigator: useRootNavigator,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        useSafeArea: useSafeArea,
        routeSettings: routeSettings,
        transitionAnimationController: transitionAnimationController,
        anchorPoint: anchorPoint,
      );

  @override
  Future<T?>? showInSearch(
    BuildContext context, {
    String? query = "",
    bool useRootNavigator = false,
  }) =>
      null;

  @override
  Future<T?>? showInSimpleDialog(
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
    Widget? title,
    EdgeInsetsGeometry titlePadding =
        const EdgeInsets.only(left: 24, top: 24, right: 24),
    TextStyle? titleTextStyle,
    List<Widget>? children,
    EdgeInsetsGeometry contentPadding =
        const EdgeInsets.only(top: 12, bottom: 16),
    Color? backgroundColor,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    String? semanticLabel,
    EdgeInsets insetPadding =
        const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
    Clip clipBehavior = Clip.hardEdge,
    ShapeBorder? shape,
    AlignmentGeometry? alignment,
  }) =>
      showDialog(
        context: context,
        // ignore: arguments-ordering, false positive.
        builder: (internalContext) => SimpleDialog(
          title: title,
          titlePadding: titlePadding,
          titleTextStyle: titleTextStyle,
          contentPadding: contentPadding,
          backgroundColor: backgroundColor,
          elevation: elevation,
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTintColor,
          semanticLabel: semanticLabel,
          insetPadding: insetPadding,
          clipBehavior: clipBehavior,
          shape: shape,
          alignment: alignment,
          children: [SizedBox(width: double.maxFinite, child: this)],
        ),
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
        anchorPoint: anchorPoint,
        traversalEdgeBehavior: traversalEdgeBehavior,
      );
}
