// ignore_for_file: long-parameter-list

import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";

import "../../helpers/ui_constants.dart";
import "../adaptive/adaptive_search_text_field.dart";
import "../generic_widgets/searchable_indexed_list_view_builder.dart";

part "basic_picker_state.dart";

@immutable
abstract class BasicPicker<T extends Object>
    extends SearchableIndexedListViewBuilder<T> {
  const BasicPicker({
    required super.items,
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.cacheExtent,
    super.caseSensitiveSearch,
    super.chosen,
    super.clipBehavior,
    super.crossAxisAlignment,
    super.direction,
    super.dragStartBehavior,
    super.emptyStatePlaceholder,
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
    super.searchIn,
    super.separator,
    super.showSearchBar,
    super.shrinkWrap,
    super.sort,
    super.startWithSearch,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    this.searchBar,
    this.searchBarPadding = UiConstants.padding,
    this.showClearButton = true,
  }) : super(header: searchBar);

  final bool showClearButton;
  final TextField? searchBar;
  final EdgeInsetsGeometry? searchBarPadding;

  @required
  @protected
  Widget? defaultBuilder(
    BuildContext context,
    int index,
    T item, {
    bool isChosen,
  });

  @required
  @protected
  Iterable<String> defaultSearch(T item);

  @override
  State<BasicPicker<T>> createState() => _BasicPickerState<T>();

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
        builder: (internalContext) => FractionallySizedBox(
          heightFactor: heightFactor,
          child: copyWith(onSelect: Navigator.of(internalContext).pop),
        ),
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

  @required
  BasicPicker<T> copyWith({
    Iterable<T>? items,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    bool? caseSensitiveSearch,
    Iterable<T>? chosen,
    Clip? clipBehavior,
    CrossAxisAlignment? crossAxisAlignment,
    Axis? direction,
    DragStartBehavior? dragStartBehavior,
    Widget? emptyStatePlaceholder,
    Key? key,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    void Function(T item)? onSelect,
    EdgeInsetsGeometry? padding,
    ScrollPhysics? physics,
    bool? primary,
    String? restorationId,
    bool? reverse,
    ScrollController? scrollController,
    TextField? searchBar,
    EdgeInsetsGeometry? searchBarPadding,
    Widget? separator,
    bool? showClearButton,
    bool? showSearchBar,
    bool? shrinkWrap,
    int Function(T a, T b)? sort,
    bool? startWithSearch,
    TextBaseline? textBaseline,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    Iterable<String> Function(T item)? searchIn,
    Widget? Function(
      BuildContext context,
      int index,
      T item, {
      bool isChosen,
    })?
        itemBuilder,
  });
}
