import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart";

import "../../extensions/pickers/basic_picker_flags_extension.dart";
import "../../extensions/world_countries_build_context_extension.dart";
import "../../models/item_properties.dart";
import "../../models/locale/typed_locale.dart";
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
    super.translation,
    super.flagsMap,
  }) : super(currencies);

  /// A factory constructor that creates a [CurrencyPicker] with a pre-computed
  /// map of flags based on the device's locale or a provided [localeCountry].
  ///
  /// Unlike the default constructor which uses a manually built [flagsMap],
  /// this constructor automatically computes the most relevant flag for each
  /// currency. It prioritizes the user's geopolitical context to provide a more
  /// intuitive experience, saving you from complex manual mapping.
  ///
  /// For example, if the user's device is set to Greenland (`GL`), the Danish
  /// Krone (`DKK`) will be displayed with the Greenlandic flag 🇬🇱. For all
  /// other users, it will show the flag of Denmark 🇩🇰.
  ///
  /// This is achieved by first checking the provided [localeCountry]. If it's
  /// `null`, it inspects the user's preferred locales from the platform. The
  /// first locale with a valid country code is then used as the context. Flags
  /// provided in the initial [flagsMap] are respected and will not be
  /// overridden by this logic.
  @experimental
  CurrencyPicker.adaptiveFlags({
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
    super.translation,
    @mustBeConst Map<FiatCurrency, BasicFlag> flagsMap = defaultFlagsMap,

    /// The country to use as the locale reference for flag selection and
    /// mapping. If provided, this country will be used to determine the default
    /// flag for currencies that are associated with a specific country context.
    /// If `null`, the picker will attempt to infer the locale country from the
    /// current context. For example if device's country is Greenland (`GL`),
    /// the picker will use the Greenlandic 🇬🇱 flag for the Danish Krone
    /// (`DKK`), but if device's country is China (`CN`), the picker will use
    /// the flag of the Denmark 🇩🇰 for the Danish Krone (`DKK`).
    WorldCountry? localeCountry,

    /// An optional custom function to map or transform a [BasicFlag] for a
    /// given currency. This function allows you to override the default flag
    /// appearance or logic for each currency and its associated countries. If
    /// not provided, a default flag mapping will be used (simmilar to country
    /// picker).
    BasicFlag Function(
      BasicFlag flag,
      FiatCurrency currency,
      List<WorldCountry>? countries,
    )?
    flagMapper,
  }) : super(
         currencies,
         flagsMap: flagsMap.adaptFlags(
           currencies.byCountryMap(),
           flagsMapper: flagMapper,
           localeCountry: localeCountry,
         ),
       );

  /// Default flags map for the [CurrencyPicker.adaptiveFlags].
  /// Mapping Euro currency to the European Union 🇪🇺 flag.
  static const defaultFlagsMap = {FiatEur(): StarFlag(flagEurProperties)};

  @override
  Widget defaultBuilder(
    BuildContext context,
    ItemProperties<FiatCurrency> itemProperties, {
    bool? isDense,
  }) =>
      context.currencyTileTheme?.builder?.call(
        itemProperties,
        isDense: isDense,
      ) ??
      CurrencyTile.fromProperties(
        itemProperties,
        title: itemNameTranslated(itemProperties.item, itemProperties.context),
        dense: isDense,
        leading: flagsMap[itemProperties.item],
        onPressed: (currency) => (isDense ?? false)
            ? maybeSelectAndPop(currency, itemProperties.context)
            : onSelect?.call(currency),
        visualDensity: (isDense ?? false) ? VisualDensity.compact : null,
      );

  @override
  Iterable<String> defaultSearch(FiatCurrency item, BuildContext context) =>
      Set.unmodifiable({
        ...super.defaultSearch(item, context),
        ...item.namesNative,
        item.name,
        item.code,
        item.unit,
      });

  @override
  String? nameTranslationCache(FiatCurrency item, TypedLocale locale) =>
      locale.currencyTranslations[item];

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
    Iterable<String> Function(FiatCurrency currency, BuildContext context)?
    searchIn,
    Iterable<FiatCurrency> Function(
      String query,
      Map<FiatCurrency, Set<String>> map,
    )?
    onSearchResultsBuilder,
    Widget? Function(
      ItemProperties<FiatCurrency> itemProperties, {
      bool? isDense,
    })?
    itemBuilder,
    double? spacing,
    TypedLocale? translation,
    Map<FiatCurrency, BasicFlag>? flagsMap,
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
    translation: translation ?? this.translation,
    flagsMap: flagsMap ?? this.flagsMap,
  );
}
