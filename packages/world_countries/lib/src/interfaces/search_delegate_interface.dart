import "dart:collection";

import "package:flutter/material.dart"
    show IconButton, SearchDelegate, ThemeData;
import "package:flutter/widgets.dart";

import "../constants/ui_constants.dart";
import "searchable_interface.dart";

/// An interface for a search delegate.
abstract class SearchDelegateInterface<T extends Object>
    extends SearchDelegate<T?> implements SearchableInterface<T> {
  /// Constructor for the [SearchDelegateInterface] class.
  ///
  /// * [items] is the list of items to search through.
  /// * [resultsBuilder] is a function that takes a `BuildContext` and an
  ///   [UnmodifiableListView] of items and returns a widget to display as the
  ///   search results.
  /// * [searchIn] is a function that takes an item and returns an iterable of
  ///   strings to search in.
  /// * [resultValidator] is a function that takes an item and returns a boolean
  ///   indicating whether the item should be included in the search results.
  /// * [showClearButton] is a boolean indicating whether to show the clear
  ///   button on the search field.
  /// * [startWithSearch] is a boolean indicating whether the search field
  ///   should be pre-populated with the initial query.
  /// * [appBarBottom] is a widget to display at the bottom of the search page's
  ///   app bar.
  /// * [appBarThemeData] is the theme data to use for the search page's app
  ///   bar.
  /// * [backIconButton] is an icon button to use as the search page's back
  ///   button.
  /// * [clearIconButton] is an icon button to use as the search page's clear
  ///   button.
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

  /// A function that takes an item and returns a boolean indicating whether the
  /// item should be included in the search results.
  // ignore: prefer-correct-callback-field-name, Might be a breaking change.
  final bool Function(T item)? resultValidator;

  /// A widget to display at the bottom of the search page's app bar.
  final PreferredSizeWidget? appBarBottom;

  /// The theme data to use for the search page's app bar.
  final ThemeData? appBarThemeData;

  /// An icon button to use as the search page's back button.
  final IconButton? backIconButton;

  /// An icon button to use as the search page's clear button.
  final IconButton? clearIconButton;

  /// The list of items to search through.
  final Iterable<T> items;

  /// A function that takes a `BuildContext` and an [UnmodifiableListView] of
  /// items and returns a widget to display as the search results.
  final Widget Function(BuildContext context, UnmodifiableListView<T> items)
      resultsBuilder;

  /// A boolean indicating whether to show the clear button on the search field.
  final bool? showClearButton;

  /// A boolean indicating whether the search should be case-sensitive.
  @override
  final bool caseSensitiveSearch;

  /// A boolean indicating whether the search field should be pre-populated with
  /// the initial query.
  @override
  final bool startWithSearch;

  /// A function that takes an item and returns an iterable of strings to search
  /// in.
  @override
  final Iterable<String> Function(T item, BuildContext context) searchIn;
}
