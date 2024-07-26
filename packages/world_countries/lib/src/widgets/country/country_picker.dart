import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../extensions/world_countries_build_context_extension.dart";
import "../../models/item_properties.dart";
import "../../models/locale/typed_locale.dart";
import "../pickers/basic_picker.dart";
import "country_tile.dart";

/// A picker widget for selecting a country.
class CountryPicker extends BasicPicker<WorldCountry> {
  /// Constructor for the [CountryPicker] class.
  ///
  /// * [countries] is the list of countries to display.
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
  /// * [itemBuilder] is the builder function for the items.
  /// * `key` is the optional key to use for the widget.
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
  /// * [searchBar] is the optional search bar to display.
  /// * [searchBarPadding] is the padding to apply to the search bar.
  /// * [searchIn] is the optional function to extract search strings from the
  ///   items.
  /// * [separator] is the optional separator to display between items.
  /// * [showClearButton] is a boolean indicating whether to show a clear button
  ///   in the search bar.
  /// * [shrinkWrap] is a boolean indicating whether to shrink-wrap the list.
  /// * [sort] is the sorting function for the items.
  /// * [startWithSearch] is a boolean indicating whether to start search with
  ///   the search string.
  /// * [textBaseline] is the text baseline for the items.
  /// * [textDirection] is the text direction for the items.
  /// * [verticalDirection] is the vertical direction for the items.
  /// * [translation] is the optional natural language to use for translations.
  const CountryPicker({
    Iterable<WorldCountry> countries = WorldCountry.list,
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
    super.searchBar,
    super.searchBarPadding,
    super.searchIn,
    super.separator,
    super.showClearButton,
    super.showSearchBar,
    super.shrinkWrap,
    super.sort,
    super.startWithSearch,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    super.translation,
  }) : super(countries);

  /// The list of countries to display.
  Iterable<WorldCountry> get countries => items;

  @override
  Widget defaultBuilder(
    BuildContext context,
    ItemProperties<WorldCountry> itemProperties, {
    bool? isDense,
  }) {
    final builder = context.countryTileTheme?.builder;
    if (builder != null) return builder(itemProperties, isDense: isDense);

    final maybeNameTitle =
        itemNameTranslated(itemProperties.item, itemProperties.context);

    return isDense ?? false
        ? CountryTile.simple(
            itemProperties,
            title: maybeNameTitle,
            onPressed: (country) =>
                maybeSelectAndPop(country, itemProperties.context),
          )
        : CountryTile.fromProperties(
            itemProperties,
            title: maybeNameTitle,
            onPressed: onSelect,
          );
  }

  @override
  String? nameTranslationCache(WorldCountry item, TypedLocale locale) =>
      locale.countryTranslations[item];

  @override
  Iterable<String> defaultSearch(WorldCountry item, BuildContext context) =>
      Set.unmodifiable({
        ...super.defaultSearch(item, context),
        ...item.namesNative.map((nativeName) => nativeName.common),
        ...item.altSpellings,
        item.name.common,
      });

  @override
  CountryPicker copyWith({
    Iterable<WorldCountry>? items,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    bool? caseSensitiveSearch,
    Iterable<WorldCountry>? chosen,
    Clip? clipBehavior,
    CrossAxisAlignment? crossAxisAlignment,
    Axis? direction,
    Iterable<WorldCountry>? disabled,
    DragStartBehavior? dragStartBehavior,
    Widget? emptyStatePlaceholder,
    Key? key,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    void Function(WorldCountry country)? onSelect,
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
    int Function(WorldCountry country1, WorldCountry country2)? sort,
    bool? startWithSearch,
    TextBaseline? textBaseline,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    Iterable<String> Function(WorldCountry country, BuildContext context)?
        searchIn,
    Widget? Function(
      ItemProperties<WorldCountry> itemProperties, {
      bool? isDense,
    })? itemBuilder,
    TypedLocale? translation,
  }) =>
      CountryPicker(
        countries: items ?? countries,
        addAutomaticKeepAlives:
            addAutomaticKeepAlives ?? this.addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries ?? this.addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes ?? this.addSemanticIndexes,
        cacheExtent: cacheExtent ?? this.cacheExtent,
        caseSensitiveSearch: caseSensitiveSearch ?? this.caseSensitiveSearch,
        chosen: chosen ?? this.chosen,
        clipBehavior: clipBehavior ?? this.clipBehavior,
        crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
        direction: direction ?? this.direction,
        disabled: disabled ?? this.disabled,
        dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
        emptyStatePlaceholder:
            emptyStatePlaceholder ?? this.emptyStatePlaceholder,
        itemBuilder: itemBuilder ?? this.itemBuilder,
        key: key ?? this.key,
        keyboardDismissBehavior:
            keyboardDismissBehavior ?? this.keyboardDismissBehavior,
        mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
        mainAxisSize: mainAxisSize ?? this.mainAxisSize,
        onSelect: onSelect ?? this.onSelect,
        padding: padding ?? this.padding,
        physics: physics ?? this.physics,
        primary: primary ?? this.primary,
        restorationId: restorationId ?? this.restorationId,
        reverse: reverse ?? this.reverse,
        scrollController: scrollController ?? this.scrollController,
        searchBar: searchBar ?? this.searchBar,
        searchBarPadding: searchBarPadding ?? this.searchBarPadding,
        searchIn: searchIn ?? this.searchIn,
        separator: separator ?? this.separator,
        showClearButton: showClearButton ?? this.showClearButton,
        showSearchBar: showSearchBar ?? showHeader,
        shrinkWrap: shrinkWrap ?? this.shrinkWrap,
        sort: sort ?? this.sort,
        startWithSearch: startWithSearch ?? this.startWithSearch,
        textBaseline: textBaseline ?? this.textBaseline,
        textDirection: textDirection ?? this.textDirection,
        verticalDirection: verticalDirection ?? this.verticalDirection,
        translation: translation ?? this.translation,
      );
}
