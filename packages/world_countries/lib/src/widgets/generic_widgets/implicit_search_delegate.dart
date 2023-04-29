import "dart:collection";

import "package:flutter/material.dart";

import "../../extensions/build_context_extensions.dart";
import "../../interfaces/search_delegate_interface.dart";
import "../../mixins/compare_search_mixin.dart";
import "../buttons/clear_button.dart";

class ImplicitSearchDelegate<T extends Object>
    extends SearchDelegateInterface<T> with CompareSearchMixin<T> {
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
        if (showClearButton)
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

  void tryClose(BuildContext context) {
    final result = filteredItems.length == 1 ? filteredItems.first : null;
    if (result == null) return;
    final isValid = resultValidator?.call(result) ?? true;
    if (!isValid) return;
    WidgetsBinding.instance.addPostFrameCallback((_) => close(context, result));
  }

  @override
  Widget buildResults(BuildContext context) {
    tryClose(context);

    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) =>
      resultsBuilder(context, filteredItems);

  UnmodifiableListView<T> get filteredItems => UnmodifiableListView(
        items.where((item) => searchIn(item).toSet().any(hasSameText)),
      );

  bool hasSameText(String itemText) => compareWithInput(query, itemText);
}
