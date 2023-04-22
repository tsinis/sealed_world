import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../models/item_properties.dart";
import "../pickers/basic_picker.dart";
import "country_tile.dart";

class CountryPicker extends BasicPicker<WorldCountry> {
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
    this.translation,
  }) : super(countries);

  final NaturalLanguage? translation;

  Iterable<WorldCountry> get countries => items;

  @override
  Widget? defaultBuilder(ItemProperties<WorldCountry> itemProperties) =>
      CountryTile.fromProperties(
        itemProperties,
        onPressed: onSelect,
        translation: translation,
      );

  @override
  Iterable<String> defaultSearch(WorldCountry item) => Set.unmodifiable({
        ...item.translations.map((translatedName) => translatedName.common),
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
    Iterable<String> Function(WorldCountry country)? searchIn,
    Widget? Function(ItemProperties<WorldCountry> itemProperties)? itemBuilder,
    NaturalLanguage? translation,
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
