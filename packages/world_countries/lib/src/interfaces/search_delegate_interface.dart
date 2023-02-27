import "dart:collection";

import "package:flutter/material.dart"
    show IconButton, SearchDelegate, ThemeData;
import "package:flutter/widgets.dart";

import "../constants/ui_constants.dart";
import "searchable_interface.dart";

abstract class SearchDelegateInterface<T extends Object>
    extends SearchDelegate<T?> implements SearchableInterface<T> {
  SearchDelegateInterface(
    this.items, {
    required this.resultsBuilder,
    required this.searchIn,
    super.keyboardType,
    super.searchFieldDecorationTheme,
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.textInputAction = UiConstants.textInputAction,
    this.appBarBottom,
    this.appBarThemeData,
    this.caseSensitiveSearch = false,
    this.resultValidator,
    this.showClearButton = true,
    this.startWithSearch = true,
    this.backIconButton,
    this.clearIconButton,
  });

  final bool Function(T item)? resultValidator;
  final PreferredSizeWidget? appBarBottom;
  final ThemeData? appBarThemeData;
  final IconButton? backIconButton;
  final IconButton? clearIconButton;
  final Iterable<T> items;
  final Widget Function(BuildContext context, UnmodifiableListView<T> items)
      resultsBuilder;
  final bool showClearButton;

  @override
  final bool caseSensitiveSearch;

  @override
  final bool startWithSearch;

  @override
  final Iterable<String> Function(T item) searchIn;
}
