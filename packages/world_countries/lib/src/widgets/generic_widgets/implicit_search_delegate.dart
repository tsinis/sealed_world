import "dart:collection";

import "package:flutter/material.dart";

import "../../extensions/build_context_extension.dart";
import "../../interfaces/search_delegate_interface.dart";
import "../../mixins/compare_search_mixin.dart";
import "../buttons/clear_button.dart";

/// An implementation of [SearchDelegateInterface] that uses the `compare`
/// method of the items to search through them.
class ImplicitSearchDelegate<T extends Object>
    extends SearchDelegateInterface<T> with CompareSearchMixin<T> {
  /// Constructor for the [ImplicitSearchDelegate] class.
  ///
  /// * [items] is the list of items to search through.
  /// * [resultsBuilder] is a function that takes a [BuildContext] and an
  ///   [UnmodifiableListView] of items and returns a widget to display as the
  ///   search results.
  /// * [searchIn] is a function that takes an item and returns an iterable of
  ///   strings to search in.
  /// * [appBarBottom] is a widget to display at the bottom of the search page's
  ///   app bar.
  /// * [appBarThemeData] is the theme data to use for the search page's app
  ///   bar.
  /// * [backIconButton] is an icon button to use as the search page's back
  ///   button.
  /// * `caseSensitiveSearch` is a boolean indicating whether the search should
  ///   be case-sensitive.
  /// * [clearIconButton] is an icon button to use as the search page's clear
  ///   button.
  /// * [keyboardType] is the type of keyboard to use for the search field.
  /// * [resultValidator] is a function that takes an item and returns a boolean
  ///   indicating whether the item should be included in the search results.
  /// * [searchFieldDecorationTheme] is the decoration theme to use for the
  ///   search field.
  /// * [searchFieldLabel] is the label to use for the search field.
  /// * [searchFieldStyle] is the style to use for the search field.
  /// * `showClearButton` is a boolean indicating whether to show the clear
  ///   button on the search field.
  /// * `startWithSearch` is a boolean indicating whether the search field
  ///   should search only by starting with the search string.
  /// * [textInputAction] is the text input action to use for the search field.
  ImplicitSearchDelegate(
    super.items, {
    required super.resultsBuilder,
    required super.searchIn,
    super.appBarBottom,
    super.appBarThemeData,
    super.backIconButton,
    super.caseSensitiveSearch,
    super.clearIconButton,
    super.keyboardType,
    super.resultValidator,
    super.searchFieldDecorationTheme,
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.showClearButton,
    super.startWithSearch,
    super.textInputAction,
  });

  @override
  ThemeData appBarTheme(BuildContext context) =>
      // ignore: avoid-non-null-assertion, null-checked already.
      appBarThemeData == null ? super.appBarTheme(context) : appBarThemeData!;

  @override
  List<Widget> buildActions(BuildContext context) => [
        if (showClearButton ?? true)
          IconButton(
            key: clearIconButton?.key,
            iconSize: clearIconButton?.iconSize,
            visualDensity: clearIconButton?.visualDensity,
            padding: clearIconButton?.padding,
            alignment: clearIconButton?.alignment,
            splashRadius: clearIconButton?.splashRadius,
            color: clearIconButton?.color,
            focusColor: clearIconButton?.focusColor,
            hoverColor: clearIconButton?.hoverColor,
            highlightColor: clearIconButton?.highlightColor,
            splashColor: clearIconButton?.splashColor,
            disabledColor: clearIconButton?.disabledColor,
            onPressed: () {
              clearIconButton?.onPressed?.call();
              query = "";
            },
            mouseCursor: clearIconButton?.mouseCursor,
            focusNode: clearIconButton?.focusNode,
            autofocus: clearIconButton?.autofocus ?? false,
            tooltip: clearIconButton?.tooltip,
            enableFeedback: clearIconButton?.enableFeedback,
            constraints: clearIconButton?.constraints,
            style: clearIconButton?.style,
            isSelected: clearIconButton?.isSelected,
            selectedIcon: clearIconButton?.selectedIcon,
            icon: clearIconButton?.icon ?? ClearButton.defaultIcon,
          ),
      ];

  @override
  PreferredSizeWidget? buildBottom(BuildContext context) => appBarBottom;

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        key: backIconButton?.key,
        iconSize: backIconButton?.iconSize,
        visualDensity: backIconButton?.visualDensity,
        padding: backIconButton?.padding,
        alignment: backIconButton?.alignment,
        splashRadius: backIconButton?.splashRadius,
        color: backIconButton?.color,
        focusColor: backIconButton?.focusColor,
        hoverColor: backIconButton?.hoverColor,
        highlightColor: backIconButton?.highlightColor,
        splashColor: backIconButton?.splashColor,
        disabledColor: backIconButton?.disabledColor,
        onPressed: () {
          backIconButton?.onPressed?.call();
          close(context, null);
        },
        mouseCursor: backIconButton?.mouseCursor,
        focusNode: backIconButton?.focusNode,
        autofocus: backIconButton?.autofocus ?? false,
        tooltip:
            backIconButton?.tooltip ?? context.materialL10n.backButtonTooltip,
        enableFeedback: backIconButton?.enableFeedback,
        constraints: backIconButton?.constraints,
        style: backIconButton?.style,
        isSelected: backIconButton?.isSelected,
        selectedIcon: backIconButton?.selectedIcon,
        icon: backIconButton?.icon ?? const BackButtonIcon(),
      );

  @override
  Widget buildResults(BuildContext context) =>
      buildSuggestions(context, _maybeCloseOnSingleResult(context));

  @override
  Widget buildSuggestions(
    BuildContext context, [
    UnmodifiableListView<T>? items,
  ]) =>
      resultsBuilder(context, items ?? _filteredItems(context));

  UnmodifiableListView<T> _filteredItems(BuildContext context) =>
      UnmodifiableListView(
        items.where((i) => searchIn(i, context).toSet().any(_hasSameText)),
      );

  bool _hasSameText(String itemText) => compareWithInput(query, itemText);

  UnmodifiableListView<T> _maybeCloseOnSingleResult(BuildContext context) {
    final filteredItems = _filteredItems(context);
    final singleResult = filteredItems.length == 1 ? filteredItems.first : null;
    if (singleResult != null) resultValidator?.call(singleResult);

    return filteredItems;
  }
}
