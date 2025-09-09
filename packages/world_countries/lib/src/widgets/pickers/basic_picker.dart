// ignore_for_file: avoid-unnecessary-nullable-return-type, avoid-long-files
// ignore_for_file: avoid-nullable-parameters-with-default-values

import "dart:async" show FutureOr, unawaited;

import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extension.dart";
import "../../extensions/duration_extension.dart";
import "../../extensions/iterable_search_map_extension.dart";
import "../../extensions/world_countries_build_context_extension.dart";
import "../../helpers/typed_locale_delegate.dart";
import "../../interfaces/basic_picker_interface.dart";
import "../../mixins/compare_search_mixin.dart";
import "../../models/item_properties.dart";
import "../../models/locale/typed_locale.dart";
import "../../models/typedefs.dart";
import "../../theme/pickers_theme_data.dart";
import "../adaptive/adaptive_search_text_field.dart";
import "../generic_widgets/implicit_search_delegate.dart";
import "../generic_widgets/searchable_indexed_list_view_builder.dart";

part "basic_picker_state.dart";

/// An abstract class that provides a basic picker [Widget], with search
/// functionality and indexing support.
@immutable
abstract class BasicPicker<T extends IsoTranslated>
    extends SearchableIndexedListViewBuilder<T>
    with CompareSearchMixin<T>
    implements BasicPickerInterface {
  /// Constructor for the [BasicPicker] class.
  ///
  /// * [items] is the list of items to display.
  /// * [addAutomaticKeepAlives] is a boolean indicating whether to add
  ///   automatic keep-alives to the items.
  /// * [addRepaintBoundaries] is a boolean indicating whether to add repaint
  ///   boundaries to the items.
  /// * [addSemanticIndexes] is a boolean indicating whether to add semantic
  ///   indexes to the items.
  /// * [cacheExtent] is the cache extent for the list.
  /// * [caseSensitiveSearch] is a boolean indicating whether the search is
  ///   case-sensitive.
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
  /// * [searchBar] is the optional search bar to display.
  /// * [searchBarPadding] is the padding to apply to the search bar.
  /// * [showClearButton] is a boolean indicating whether to show a clear button
  ///   in the search bar.
  /// * [translation] is the optional parameter to use for translations.
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
    super.startWithSearch = false,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    super.onSearchResultsBuilder,
    super.spacing,
    this.searchBar,
    this.searchBarPadding, // Default: EdgeInsets.only(left:8, top:8, right:8).
    this.showClearButton = true,
    this.translation,
    this.flagsMap = const {},
  }) : super(header: searchBar);

  /// A boolean indicating whether to show a clear button in the search bar.
  @override
  final bool? showClearButton;

  /// The optional search bar to display.
  @override
  final TextField? searchBar;

  /// The padding to apply to the search bar.
  @override
  final EdgeInsetsGeometry? searchBarPadding;

  /// The local to use for translations.
  @override
  final TypedLocale? translation;

  @override
  final Map<T, BasicFlag> flagsMap;

  /// Returns the default builder for the items.
  /// It also has an optional parameter `isDense`, which indicates whether the
  /// item uses less vertical space or not, defaults to `false`.
  @required
  @protected
  Widget defaultBuilder(
    BuildContext context,
    ItemProperties<T> itemProperties, {
    bool? isDense,
  });

  /// Returns the default search function for the items. By default returns
  /// translated name of the item (if exists).
  @required
  @protected
  @mustCallSuper
  Iterable<String> defaultSearch(T item, BuildContext context) => [
    _maybeNameTranslation(item, context) ?? item.internationalName,
  ];

  /// Returns the name translation of the item (if exists) in form
  /// of [Text] widget.
  Text? itemNameTranslated(T item, BuildContext context) {
    final title = _maybeNameTranslation(item, context);

    return title == null ? null : Text(title, overflow: TextOverflow.ellipsis);
  }

  /// Called to get the suggestion list for the search view (typically in
  /// [SearchAnchor] widgets).
  FutureOr<Iterable<Widget>> searchSuggestions(
    BuildContext context,
    // SDK bug fixed in v3.27.0: https://github.com/flutter/flutter/pull/155219
    SearchController controller,
  ) {
    final text = controller.text.trim();
    final map = items.searchMap(context, searchIn ?? defaultSearch);
    final x = text.isNotEmpty
        ? (onSearchResultsBuilder?.call(text, map) ??
              items.searchResults(
                map,
                (itemText) => compareWithTextInput(controller, itemText),
              ))
        : items;

    return List<Widget>.generate(
      x.length,
      (i) =>
          itemBuilder?.call(filteredProperties(x, context, i), isDense: true) ??
          // ignore: avoid-returning-widgets, Might be breaking change.
          defaultBuilder(
            context,
            filteredProperties(x, context, i),
            isDense: true,
          ),
      growable: false,
    );
  }

  String? _maybeNameTranslation(T item, BuildContext context) {
    final direct = translation;
    final global = context.maybeLocale;
    final theme = context.pickersTheme?.translation;

    if (direct == null && theme == null && global == null) return null;
    String? result;

    if (direct != null) {
      result = nameTranslationCache(item, direct);
      if (result != null) return result;
    }

    if (theme != null) {
      result = nameTranslationCache(item, theme);
      if (result != null) return result;
    }

    if (global != null) {
      result = nameTranslationCache(item, global);
      if (result != null) return result;
    }

    assert(
      direct == null,
      "The $TypedLocale passed to the `translation` parameter in the "
      "$this lacks a translation for item: $item. Verify that the provided "
      "${TranslationMap<T>} translations map includes a key value pair for the "
      "{${item.runtimeType}(): '${item.internationalName} translation'} there."
      " Consider adding `localizationsDelegates: const [TypedLocaleDelegate()]`"
      " in the app to enable device locale-based auto. translation maps cache.",
    );

    assert(
      theme == null,
      "The $TypedLocale passed to the `translation` parameter in "
      "$PickersThemeData lacks a translation for item: $item. Verify that the "
      "${TranslationMap<T>} translations map includes a key value pair for the "
      "{${item.runtimeType}(): '${item.internationalName} translation'} there.",
    );

    assert(
      global == null,
      "The $TypedLocaleDelegate passed to the app's `localizationsDelegates` "
      "parameter lacks a translation for item: $item. Verify that the "
      "translation cache includes a key value pair for the "
      "{${item.runtimeType}(): '${item.internationalName} translation'} there.",
    );

    return result;
  }

  /// Returns translated common name of the item (if exists).
  @required
  @protected
  String? nameTranslationCache(T item, TypedLocale locale);

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
    bool? showDragHandle,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    double? heightFactor = 0.66,
    AnimationStyle? sheetAnimationStyle,
    bool? requestFocus,
  }) => showModalBottomSheet<T>(
    context: context,
    builder: (newContext) => Padding(
      padding: newContext.media.viewInsets,
      child: FractionallySizedBox(
        heightFactor: heightFactor,
        child: copyWith(
          onSelect: (selected) => maybeSelectAndPop(selected, newContext),
        ),
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
    showDragHandle: showDragHandle,
    useSafeArea: useSafeArea,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    anchorPoint: anchorPoint,
    sheetAnimationStyle: sheetAnimationStyle,
    requestFocus: requestFocus,
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
    bool maintainState = false,
    bool autocorrect = true,
    bool enableSuggestions = true,
  }) async {
    T? result;
    final searchMap = items.searchMap(context, searchIn ?? defaultSearch);
    // ignore: avoid-late-keyword, avoid-unnecessary-local-late, it's not.
    late final ImplicitSearchDelegate<T> delegate;
    // ignore: avoid-local-functions, lazy delegate.
    void closeOnSelect(T select) {
      delegate.close(context, select);
      onSelect?.call(result = select); //ignore:avoid-nested-assignments,it's it
    }

    delegate = ImplicitSearchDelegate<T>(
      items,
      // ignore: prefer-correct-handler-name, breaking change.
      resultsBuilder: (_, items) => copyWith(
        key: onSearchResultsBuilder == null ? null : ValueKey(items.length),
        items: items,
        onSelect: closeOnSelect,
        showSearchBar: false,
      ),
      // ignore: prefer-correct-handler-name, breaking change.
      searchIn: searchIn ?? defaultSearch,
      searchMap: searchMap,
      onSearchResultsBuilder: onSearchResultsBuilder,
      appBarBottom: appBarBottom,
      appBarThemeData: appBarThemeData,
      backIconButton: backIconButton,
      caseSensitiveSearch: caseSensitiveSearch,
      clearIconButton: clearIconButton,
      keyboardType: keyboardType,
      // ignore: prefer-extracting-callbacks, same reason as prev. ignore.
      resultValidator: (i) {
        final isValid = !(disabled?.contains(i) ?? false);
        if (isValid) {
          WidgetsBinding.instance.addPostFrameCallback((_) => closeOnSelect(i));
        }

        return isValid;
      },
      searchFieldDecorationTheme: searchFieldDecorationTheme,
      searchFieldLabel: searchFieldLabel,
      searchFieldStyle: searchFieldStyle,
      showClearButton: showClearButton ?? true,
      startWithSearch: startWithSearch,
      textInputAction: textInputAction,
      autocorrect: autocorrect,
      enableSuggestions: enableSuggestions,
    );

    // ignore: avoid-local-functions, to not create overhead.
    void animationListener(AnimationStatus status) {
      if (status != AnimationStatus.dismissed) return;
      delegate.transitionAnimation.removeStatusListener(animationListener);
      unawaited(Duration.zero.delayed(delegate.dispose));
    }

    delegate.transitionAnimation.addStatusListener(animationListener);
    final popResult = await showSearch<T?>(
      context: context,
      delegate: delegate,
      query: query,
      useRootNavigator: useRootNavigator,
      maintainState: maintainState,
    );

    return popResult ?? result;
  }

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
    Widget? content,
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
  }) => showDialog(
    context: context,
    builder: (newContext) => AlertDialog(
      iconPadding: iconPadding,
      iconColor: iconColor,
      title: title,
      titlePadding: titlePadding,
      titleTextStyle: titleTextStyle,
      content: SizedBox(
        width: double.maxFinite,
        child: copyWith(
          onSelect: (selected) => maybeSelectAndPop(selected, newContext),
        ),
      ),
      contentPadding: contentPadding,
      contentTextStyle: contentTextStyle,
      actions: actions,
      actionsPadding: actionsPadding,
      actionsAlignment: actionsAlignment,
      actionsOverflowAlignment: actionsOverflowAlignment,
      actionsOverflowDirection: actionsOverflowDirection,
      actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
      buttonPadding: buttonPadding,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      semanticLabel: semanticLabel,
      insetPadding: insetPadding,
      clipBehavior: clipBehavior,
      shape: shape,
      alignment: alignment,
      scrollable: scrollable,
    ),
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useSafeArea: useSafeArea,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    anchorPoint: anchorPoint,
    traversalEdgeBehavior: traversalEdgeBehavior,
    requestFocus: requestFocus,
    animationStyle: animationStyle,
  );

  @required
  /// Creates a copy of this picker with the given fields replaced with the new
  /// values.
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
    Iterable<String> Function(T item, BuildContext context)? searchIn,
    Iterable<T> Function(String query, SearchMap<T> map)?
    onSearchResultsBuilder,
    Widget? Function(ItemProperties<T> itemProperties, {bool? isDense})?
    itemBuilder,
    double? spacing,
    TypedLocale? translation,
    Map<T, BasicFlag>? flagsMap,
  });
}
