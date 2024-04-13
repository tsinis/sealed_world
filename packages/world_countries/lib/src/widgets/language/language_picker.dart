import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../extensions/world_countries_build_context_extension.dart";
import "../../models/item_properties.dart";
import "../../models/locale/typed_locale.dart";
import "../pickers/basic_picker.dart";
import "language_tile.dart";

/// A picker widget that displays a list of natural languages.
class LanguagePicker extends BasicPicker<NaturalLanguage> {
  /// Constructor for the [LanguagePicker] class.
  ///
  /// * [languages] is the list of natural languages to display.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  const LanguagePicker({
    Iterable<NaturalLanguage> languages = NaturalLanguage.list,
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
    super.translation,
  }) : super(languages);

  /// Returns the list of natural languages being displayed by this widget.
  Iterable<NaturalLanguage> get languages => items;

  @override
  Widget defaultBuilder(
    BuildContext context,
    ItemProperties<NaturalLanguage> itemProperties, {
    bool? isDense,
  }) =>
      context.languageTileTheme?.builder
          ?.call(itemProperties, isDense: isDense) ??
      LanguageTile.fromProperties(
        itemProperties,
        title: itemNameTranslated(itemProperties.item, itemProperties.context),
        dense: isDense,
        onPressed: (language) => isDense ?? false
            ? maybeSelectAndPop(language, itemProperties.context)
            : onSelect?.call(language),
        visualDensity: isDense ?? false ? VisualDensity.compact : null,
      );

  @override
  Iterable<String> defaultSearch(NaturalLanguage item, BuildContext context) =>
      Set.unmodifiable({
        ...super.defaultSearch(item, context),
        ...item.namesNative,
        item.name,
        item.codeShort,
      });

  @override
  String? nameTranslationCache(NaturalLanguage item, TypedLocale locale) =>
      locale.languageTranslations[item];

  @override
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
    Iterable<String> Function(NaturalLanguage language, BuildContext context)?
        searchIn,
    Widget? Function(
      ItemProperties<NaturalLanguage> itemProperties, {
      bool? isDense,
    })? itemBuilder,
    TypedLocale? translation,
  }) =>
      LanguagePicker(
        languages: items ?? languages,
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
