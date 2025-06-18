import "package:flutter/material.dart";
import "package:meta/meta.dart" show experimental, mustBeConst;
import "package:world_flags/world_flags.dart";

import "../pickers/base_picker_flag_state.dart";
import "currency_picker.dart";

/// A smart picker widget that displays a list of fiat currencies with flags,
/// with ability to show device based flag (extracted from the [Locale]).
@experimental
class CurrencyFlagPicker extends CurrencyPicker {
  /// Constructor for the [CurrencyFlagPicker] class.
  ///
  /// * [currencies] is the list of fiat currencies to display.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  CurrencyFlagPicker({
    super.currencies,
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
    this.localeCountry,
    this.flagMapper,
  }) : super(flagsMap: Map<FiatCurrency, BasicFlag>.of(flagsMap));

  /// Default flags map for the [CurrencyFlagPicker]. Mapping Euro currency
  /// to the European Union 🇪🇺 flag.
  static const defaultFlagsMap = {FiatEur(): StarFlag(flagEurProperties)};

  /// The country to use as the locale reference for flag selection and mapping.
  /// If provided, this country will be used to determine the default flag for
  /// currencies that are associated with a specific country context. If `null`,
  /// the picker will attempt to infer the locale country from the current
  /// context.
  /// For example if device's country is Greenland (`GL`), the picker will use
  /// the Greenlandic 🇬🇱 flag for the Danish Krone (`DKK`), but if device's
  /// country is China (`CN`), the picker will use the flag of the
  /// Denmark 🇩🇰 for the Danish Krone (`DKK`).
  final WorldCountry? localeCountry;

  /// An optional custom function to map or transform a [BasicFlag] for a given
  /// currency. This function allows you to override the default flag appearance
  /// or logic for each currency and its associated countries. If not provided,
  /// a default flag mapping will be used (simmilar to country picker).
  /// To modify the default behavior of the flag mapping, please use [flagsMap]
  /// parameter, or the [flagMapper] function to customize how flags are
  /// displayed for each currency.
  final BasicFlag Function(
    BasicFlag flag,
    FiatCurrency currency,
    List<WorldCountry>? countries,
  )?
  // ignore: prefer-correct-callback-field-name, this is a mapper function.
  flagMapper;

  @override
  State<CurrencyFlagPicker> createState() => _LanguageFlagPickerState();
}

final class _LanguageFlagPickerState
    extends BasePickerFlagState<FiatCurrency, CurrencyFlagPicker> {
  @override
  Map<FiatCurrency, List<WorldCountry>> get itemsMap =>
      widget.items.byCountryMap();

  @override
  WorldCountry? get localeCountry => widget.localeCountry;

  @override
  BasicFlag flagMapper(
    BasicFlag flag,
    FiatCurrency isoItem,
    List<WorldCountry>? countries,
  ) =>
      widget.flagMapper?.call(flag, isoItem, countries) ??
      super.flagMapper(flag, isoItem, countries);
}
