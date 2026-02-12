import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart" show TextField;
import "package:flutter/widgets.dart";
import "package:world_flags/world_flags.dart";

import "../../model/iso/iso_maps.dart";
import "../../model/item_properties.dart";
import "../../model/search_data.dart";
import "../../model/typedefs.dart";
import "../pickers/basic_picker.dart";

/// A picker widget for selecting a country.
class CountryPicker extends BasicPicker<WorldCountry, CountryTile> {
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
  /// * [key] is the optional key to use for the widget.
  /// * [hitTestBehavior] is the hit test behavior for the list.
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
  /// * [onSearchResultsBuilder] is the optional function to customize the build
  ///   of the search results.
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
  /// * [maps] is the optional [IsoMaps] bundle with translations/flags.
  /// * [flagTheme] is the optional [FlagThemeData] override for flags.
  const CountryPicker({
    Iterable<WorldCountry>? countries,
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
    super.hitTestBehavior,
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
    super.onSearchResultsBuilder,
    super.separator,
    super.showClearButton,
    super.showSearchBar,
    super.shrinkWrap,
    super.sort,
    super.startWithSearch,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    super.spacing,
    super.maps,
    super.flagTheme,
  }) : super(countries);

  @override
  CountryTile defaultBuilder(ItemProperties<WorldCountry> props) =>
      CountryTile.fromProperties(
        props,
        title: itemNameTranslated(props.item, props.context),
        leadingFlag: maybeMaps(props.context)?.countryFlags[props.item],
        flagTheme: resolvedFlagTheme(props.context),
        onPressed: onSelect,
      );

  @override
  String? nameTranslationCache(WorldCountry item, IsoMaps isoMaps) =>
      isoMaps.countryTranslations[item];

  @override
  Iterable<WorldCountry> defaultItems(BuildContext? context) {
    final keys = maybeMaps(context)?.countryTranslations.keys;
    assert(
      keys == null || keys.isNotEmpty,
      "The $IsoMaps passed to the `maps` contains an empty "
      "`countryTranslations` map. Please provide a valid `IsoMaps` instance "
      "with country translations or non-empty `countries`",
    );

    return keys ?? WorldCountry.list;
  }

  @override
  SearchData defaultSearch(WorldCountry item, BuildContext context) =>
      SearchData(
        item.internationalName,
        item.namesNative.map((nativeName) => nativeName.common),
        name: maybeNameTranslation(item, context),
        code: item.code,
        others: item.altSpellings,
      );

  @override
  // ignore: avoid-incomplete-copy-with, avoid-high-cyclomatic-complexity, a lot of params.
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
    HitTestBehavior? hitTestBehavior,
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
    SearchData Function(WorldCountry country, BuildContext context)? searchIn,
    Iterable<WorldCountry> Function(
      String query,
      Map<WorldCountry, SearchData> map,
    )?
    onSearchResultsBuilder,
    Widget? Function(ItemProperties<WorldCountry>, CountryTile)? itemBuilder,
    double? spacing,
    IsoMaps? maps,
    FlagThemeData? flagTheme,
  }) => CountryPicker(
    countries: items ?? this.items,
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
    emptyStatePlaceholder: emptyStatePlaceholder ?? this.emptyStatePlaceholder,
    itemBuilder: (props, tile) =>
        itemBuilder?.call(props, tile ?? defaultBuilder(props)) ??
        this.itemBuilder?.call(props, tile),
    key: key ?? this.key,
    hitTestBehavior: hitTestBehavior ?? this.hitTestBehavior,
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
    onSearchResultsBuilder:
        onSearchResultsBuilder ?? this.onSearchResultsBuilder,
    separator: separator ?? this.separator,
    showClearButton: showClearButton ?? this.showClearButton,
    showSearchBar: showSearchBar ?? showHeader,
    shrinkWrap: shrinkWrap ?? this.shrinkWrap,
    sort: sort ?? this.sort,
    startWithSearch: startWithSearch ?? this.startWithSearch,
    textBaseline: textBaseline ?? this.textBaseline,
    textDirection: textDirection ?? this.textDirection,
    verticalDirection: verticalDirection ?? this.verticalDirection,
    spacing: spacing ?? this.spacing,
    maps: maps ?? this.maps,
    flagTheme: flagTheme ?? this.flagTheme,
  );
}
