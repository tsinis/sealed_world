// ignore_for_file: long-parameter-list

import "package:flutter/material.dart";

import "../../helpers/ui_constants.dart";
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
  Future<T?> showInSearch() {
    // TODO: implement showInSearch.
    throw UnimplementedError();
  }
}
