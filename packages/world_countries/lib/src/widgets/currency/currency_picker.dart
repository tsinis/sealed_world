import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../models/item_properties.dart";
import "../pickers/basic_picker.dart";
import "currency_tile.dart";

/// A picker widget that displays a list of fiat currencies.
class CurrencyPicker extends BasicPicker<FiatCurrency> {
  /// Constructor for the [CurrencyPicker] class.
  ///
  /// * [currencies] is the list of fiat currencies to display.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  const CurrencyPicker({
    Iterable<FiatCurrency> currencies = FiatCurrency.list,
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
    super.startWithSearch = false,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
  }) : super(currencies);

  /// Returns the list of fiat currencies being displayed by this widget.
  Iterable<FiatCurrency> get currencies => items;

  @override
  Widget defaultBuilder(
    ItemProperties<FiatCurrency> itemProperties, {
    bool? isDense,
  }) =>
      CurrencyTile.fromProperties(
        itemProperties,
        dense: isDense,
        onPressed: (currency) => isDense ?? false
            ? maybeSelectAndPop(currency, itemProperties.context)
            : onSelect?.call(currency),
        visualDensity: isDense ?? false ? VisualDensity.compact : null,
      );

  @override
  Iterable<String> defaultSearch(FiatCurrency item) =>
      Set.unmodifiable({item.name, ...item.namesNative, item.code, item.unit});

  @override
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
    Iterable<String> Function(FiatCurrency currency)? searchIn,
    Widget? Function(
      ItemProperties<FiatCurrency> itemProperties, {
      bool? isDense,
    })? itemBuilder,
  }) =>
      CurrencyPicker(
        currencies: items ?? currencies,
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
      );
}
