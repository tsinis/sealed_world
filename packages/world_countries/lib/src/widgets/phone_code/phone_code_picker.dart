import "package:flutter/gestures.dart";
import "package:flutter/material.dart";

import "../../../world_countries.dart";
import "../../models/item_properties.dart";

/// A picker widget that displays a list of countries with their phone codes.
class PhoneCodePicker extends CountryPicker {
  /// Constructor for the [PhoneCodePicker] class that uses a list of countries
  /// with their phone codes.
  ///
  /// * [countries] is the list of countries with their phone codes to display.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
  const PhoneCodePicker({
    super.countries,
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
  });

  /// Constructor for the [PhoneCodePicker] class that uses a [CountryPicker]
  /// object.
  ///
  /// * [picker] is the [CountryPicker] object to use.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
  PhoneCodePicker.fromCountryPicker(CountryPicker picker, {super.key})
      : super(
          countries: picker.items,
          addAutomaticKeepAlives: picker.addAutomaticKeepAlives,
          addRepaintBoundaries: picker.addRepaintBoundaries,
          addSemanticIndexes: picker.addSemanticIndexes,
          cacheExtent: picker.cacheExtent,
          caseSensitiveSearch: picker.caseSensitiveSearch,
          chosen: picker.chosen,
          clipBehavior: picker.clipBehavior,
          crossAxisAlignment: picker.crossAxisAlignment,
          direction: picker.direction,
          disabled: picker.disabled,
          dragStartBehavior: picker.dragStartBehavior,
          emptyStatePlaceholder: picker.emptyStatePlaceholder,
          itemBuilder: picker.itemBuilder,
          keyboardDismissBehavior: picker.keyboardDismissBehavior,
          mainAxisAlignment: picker.mainAxisAlignment,
          mainAxisSize: picker.mainAxisSize,
          onSelect: picker.onSelect,
          padding: picker.padding,
          physics: picker.physics,
          primary: picker.primary,
          restorationId: picker.restorationId,
          reverse: picker.reverse,
          scrollController: picker.scrollController,
          searchBar: picker.searchBar,
          searchBarPadding: picker.searchBarPadding,
          searchIn: picker.searchIn,
          separator: picker.separator,
          showClearButton: picker.showClearButton,
          showSearchBar: picker.showHeader,
          shrinkWrap: picker.shrinkWrap,
          sort: picker.sort,
          startWithSearch: picker.startWithSearch,
          textBaseline: picker.textBaseline,
          textDirection: picker.textDirection,
          verticalDirection: picker.verticalDirection,
          translation: picker.translation,
        );

  @override
  Widget? defaultBuilder(ItemProperties<WorldCountry> itemProperties) =>
      CountryTile.fromProperties(
        itemProperties,
        leading: ConstrainedBox(
          constraints: UiConstants.constraints,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EmojiFlag.twemoji(itemProperties.item),
              Padding(
                padding: const EdgeInsets.only(right: UiConstants.point / 2),
                child: Builder(
                  builder: (context) => Text(
                    itemProperties.item.idd.phoneCode(),
                    style: context.theme.textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: onSelect,
        translation: translation,
      );

  @override
  Iterable<String> defaultSearch(WorldCountry item) => Set.unmodifiable({
        ...super.defaultSearch(item),
        item.idd.phoneCode(leading: ""),
      });

  @override
  PhoneCodePicker copyWith({
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
      PhoneCodePicker(
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