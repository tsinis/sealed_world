import "package:flutter/material.dart";
import "package:meta/meta.dart" show experimental, mustBeConst;
import "package:world_flags/world_flags.dart";

import "../pickers/base_picker_flag_state.dart";
import "language_picker.dart";

/// A smart picker widget that displays a list of natural languages with flags,
/// with ability to show device based flag (extracted from the [Locale]).
@experimental
class LanguageFlagPicker extends LanguagePicker {
  /// Constructor for the [LanguageFlagPicker] class.
  ///
  /// * [languages] is the list of natural languages to display.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  LanguageFlagPicker({
    super.languages,
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
    @mustBeConst Map<NaturalLanguage, BasicFlag> flagsMap = const {},
    this.localeCountry,
    this.flagMapper,
  }) : super(flagsMap: Map<NaturalLanguage, BasicFlag>.of(flagsMap));

  /// The country to use as the locale reference for flag selection and mapping.
  /// If provided, this country will be used to determine the default flag for
  /// languages that are associated with a specific country context. If `null`,
  /// the picker will attempt to infer the locale country from the current
  /// context.
  /// For example if device's country is Austria (`AT`), the picker will
  /// use the Austrian 🇦🇹 flag for the German language (`DE`), but if device's
  /// country is France (`FR`), the picker will use the flag of Germany 🇩🇪
  /// for the German language (`DE`).
  /// To modify the default behavior of the flag mapping, please use [flagsMap]
  /// parameter, or the [flagMapper] function to customize how flags are
  /// displayed for each language.
  final WorldCountry? localeCountry;

  /// An optional custom function to map or transform a [BasicFlag] for a given
  /// language. This function allows you to override the default flag appearance
  /// or logic for each language and its associated countries. If not provided,
  /// a default flag mapping will be used (simmilar to country picker).
  final BasicFlag Function(
    BasicFlag flag,
    NaturalLanguage language,
    List<WorldCountry>? countries,
  )?
  // ignore: prefer-correct-callback-field-name, this is a mapper function.
  flagMapper;

  @override
  State<LanguageFlagPicker> createState() => _LanguageFlagPickerState();
}

final class _LanguageFlagPickerState
    extends BasePickerFlagState<NaturalLanguage, LanguageFlagPicker> {
  @override
  Map<NaturalLanguage, List<WorldCountry>> get itemsMap =>
      widget.items.byCountryMap();

  @override
  WorldCountry? get localeCountry => widget.localeCountry;

  @override
  Map<NaturalLanguage, BasicFlag> get emptyFallbackMap =>
      smallSimplifiedLanguageFlagsMap;

  @override
  BasicFlag flagMapper(
    BasicFlag flag,
    NaturalLanguage isoItem,
    List<WorldCountry>? countries,
  ) =>
      widget.flagMapper?.call(flag, isoItem, countries) ??
      super.flagMapper(flag, isoItem, countries);
}
