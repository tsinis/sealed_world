// ignore_for_file: long-parameter-list

import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extensions.dart";
import "../../models/item_properties.dart";
import "../adaptive/adaptive_search_text_field.dart";
import "../generic_widgets/implicit_search_delegate.dart";
import "../generic_widgets/searchable_indexed_list_view_builder.dart";

part "basic_picker_state.dart";

@immutable
abstract class BasicPicker<T extends Object>
    extends SearchableIndexedListViewBuilder<T> {
  const BasicPicker(
    super.items, {
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.cacheExtent,
    super.caseSensitiveSearch,
    super.chosen,
    super.clipBehavior,
    super.crossAxisAlignment,
    super.direction,
    super.disabled,
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
  Widget? defaultBuilder(ItemProperties<T> itemProperties);

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
          child: copyWith(
            onSelect: (selectedItem) {
              onSelect?.call(selectedItem);
              internalContext.maybePop(selectedItem);
            },
          ),
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

  @override
  Future<T?> showInSearch(
    BuildContext context, {
    String? query = "",
    bool useRootNavigator = false,
    String? searchFieldLabel,
    TextStyle? searchFieldStyle,
    InputDecorationTheme? searchFieldDecorationTheme,
    PreferredSizeWidget? appBarBottom,
    IconButton? backIconButton,
    IconButton? clearIconButton,
    TextInputType? keyboardType,
    TextInputAction textInputAction = UiConstants.textInputAction,
    ThemeData? appBarThemeData,
  }) =>
      showSearch<T?>(
        context: context,
        delegate: ImplicitSearchDelegate<T>(
          items,
          resultsBuilder: (internalContext, items) => copyWith(
            items: items,
            showSearchBar: false,
            onSelect: (selectedItem) {
              onSelect?.call(selectedItem);
              internalContext.maybePop(selectedItem);
            },
          ),
          searchIn: searchIn ?? defaultSearch,
          appBarBottom: appBarBottom,
          appBarThemeData: appBarThemeData,
          backIconButton: backIconButton,
          caseSensitiveSearch: caseSensitiveSearch,
          clearIconButton: clearIconButton,
          keyboardType: keyboardType,
          resultValidator: (item) => !(disabled?.contains(item) ?? false),
          searchFieldDecorationTheme: searchFieldDecorationTheme,
          searchFieldLabel: searchFieldLabel,
          searchFieldStyle: searchFieldStyle,
          showClearButton: showClearButton,
          startWithSearch: startWithSearch,
          textInputAction: textInputAction,
        ),
        query: query,
        useRootNavigator: useRootNavigator,
      );

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
  }) {
    assert(
      items.length < 10,
      """
\n
Material Design guidelines recommend using a Simple Dialog without scrolling,
(in this case it particularly means - for 9 or fewer items). Provided items
count is ${items.length}. Please consider using a different UI component, for
example via showSearch or showInModalBottomSheet methods instead.
https://m2.material.io/components/dialogs#simple-dialog""",
    );

    return showDialog(
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
        children: [
          SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: copyWith(
                shrinkWrap: true,
                showSearchBar: false,
                onSelect: (selectedItem) {
                  onSelect?.call(selectedItem);
                  internalContext.maybePop(selectedItem);
                },
              ),
            ),
          ),
        ],
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
    Iterable<T>? disabled,
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
    Widget? Function(ItemProperties<T> itemProperties)? itemBuilder,
  });
}
