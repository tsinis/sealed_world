import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../models/iso/iso_maps.dart";
import "../../models/item_properties.dart";
import "../../models/search_data.dart";
import "../../models/typedefs.dart";
import "../pickers/basic_picker.dart";

/// A picker widget that displays a list of natural languages.
class LanguagePicker extends BasicPicker<NaturalLanguage, LanguageTile> {
  /// Constructor for the [LanguagePicker] class.
  ///
  /// * [languages] is the list of natural languages to display.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  const LanguagePicker({
    Iterable<NaturalLanguage>? languages,
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
  }) : super(languages);

  @override
  LanguageTile defaultBuilder(ItemProperties<NaturalLanguage> props) =>
      LanguageTile.fromProperties(
        props,
        title: itemNameTranslated(props.item, props.context),
        leadingFlag: maybeMaps(props.context)?.languageFlags[props.item],
        onPressed: onSelect,
      );

  @override
  SearchData defaultSearch(NaturalLanguage item, BuildContext context) =>
      SearchData(
        item.internationalName,
        item.namesNative,
        name: maybeNameTranslation(item, context),
        code: item.codeShort,
      );

  @override
  String? nameTranslationCache(NaturalLanguage item, IsoMaps isoMaps) =>
      isoMaps.languageTranslations[item];

  @override
  Iterable<NaturalLanguage> defaultItems(BuildContext? context) {
    final keys = maybeMaps(context)?.languageTranslations.keys;
    assert(
      keys == null || keys.isNotEmpty,
      "The $IsoMaps passed to the `maps` contains an empty "
      "`languageTranslations` map. Please provide a valid  `IsoMaps` instance "
      "with language translations or non-empty `languages`",
    );

    return keys ?? NaturalLanguage.list;
  }

  @override
  // ignore: avoid-incomplete-copy-with, avoid-high-cyclomatic-complexity, a lot of params.
  LanguagePicker copyWith({
    Iterable<NaturalLanguage>? items,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    bool? caseSensitiveSearch,
    Iterable<NaturalLanguage>? chosen,
    Clip? clipBehavior,
    CrossAxisAlignment? crossAxisAlignment,
    Axis? direction,
    Iterable<NaturalLanguage>? disabled,
    DragStartBehavior? dragStartBehavior,
    Widget? emptyStatePlaceholder,
    Key? key,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    void Function(NaturalLanguage language)? onSelect,
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
    int Function(NaturalLanguage language1, NaturalLanguage language2)? sort,
    bool? startWithSearch,
    TextBaseline? textBaseline,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    SearchData Function(NaturalLanguage language, BuildContext context)?
    searchIn,
    Iterable<NaturalLanguage> Function(
      String query,
      Map<NaturalLanguage, SearchData> map,
    )?
    onSearchResultsBuilder,
    Widget? Function(ItemProperties<NaturalLanguage>, LanguageTile)?
    itemBuilder,
    double? spacing,
    IsoMaps? maps,
  }) => LanguagePicker(
    languages: items ?? this.items,
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
    maps: maps ?? this.maps,
    spacing: spacing ?? this.spacing,
  );
}
