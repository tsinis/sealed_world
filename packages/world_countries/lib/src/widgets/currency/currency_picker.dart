import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart" show TextField;
import "package:flutter/widgets.dart";
import "package:world_flags/world_flags.dart";

import "../../model/iso/iso_maps.dart";
import "../../model/item_properties.dart";
import "../../model/search_data.dart";
import "../../model/typedefs.dart";
import "../pickers/basic_picker.dart";

/// A picker widget that displays a list of fiat currencies.
class CurrencyPicker extends BasicPicker<FiatCurrency, CurrencyTile> {
  /// Constructor for the [CurrencyPicker] class.
  ///
  /// * [currencies] is the list of fiat currencies to display.
  /// * [flagTheme] is the optional [FlagThemeData] override for flags.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  const CurrencyPicker({
    Iterable<FiatCurrency>? currencies,
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
  }) : super(currencies);

  @override
  CurrencyTile defaultBuilder(ItemProperties<FiatCurrency> props) =>
      CurrencyTile.fromProperties(
        props,
        title: itemNameTranslated(props.item, props.context),
        leadingFlag: maybeMaps(props.context)?.currencyFlags[props.item],
        flagTheme: resolvedFlagTheme(props.context),
        onPressed: onSelect,
      );

  @override
  SearchData defaultSearch(FiatCurrency item, BuildContext context) =>
      SearchData(
        item.internationalName,
        item.namesNative,
        name: maybeNameTranslation(item, context),
        code: item.code,
        other: item.unit,
      );

  @override
  String? nameTranslationCache(FiatCurrency item, IsoMaps isoMaps) =>
      isoMaps.currencyTranslations[item];

  @override
  Iterable<FiatCurrency> defaultItems(BuildContext? context) {
    final keys = maybeMaps(context)?.currencyTranslations.keys;
    assert(
      keys == null || keys.isNotEmpty,
      "The $IsoMaps passed to the `maps` contains an empty "
      "`currencyTranslations` map. Please provide a valid `IsoMaps` instance "
      "with currency translations or non-empty `currencies`",
    );

    return keys ?? FiatCurrency.list;
  }

  @override
  // ignore: avoid-incomplete-copy-with, avoid-high-cyclomatic-complexity, a lot of params.
  CurrencyPicker copyWith({
    Iterable<FiatCurrency>? items,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    bool? caseSensitiveSearch,
    Iterable<FiatCurrency>? chosen,
    Clip? clipBehavior,
    CrossAxisAlignment? crossAxisAlignment,
    Axis? direction,
    Iterable<FiatCurrency>? disabled,
    DragStartBehavior? dragStartBehavior,
    Widget? emptyStatePlaceholder,
    Key? key,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    void Function(FiatCurrency currency)? onSelect,
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
    int Function(FiatCurrency currency1, FiatCurrency currency2)? sort,
    bool? startWithSearch,
    TextBaseline? textBaseline,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    SearchData Function(FiatCurrency currency, BuildContext context)? searchIn,
    Iterable<FiatCurrency> Function(
      String query,
      Map<FiatCurrency, SearchData> map,
    )?
    onSearchResultsBuilder,
    Widget? Function(ItemProperties<FiatCurrency>, CurrencyTile)? itemBuilder,
    double? spacing,
    IsoMaps? maps,
    FlagThemeData? flagTheme,
  }) => CurrencyPicker(
    currencies: items ?? this.items,
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
