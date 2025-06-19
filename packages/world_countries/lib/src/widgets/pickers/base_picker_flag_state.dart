import "package:flutter/foundation.dart" show PlatformDispatcher, mapEquals;
import "package:flutter/widgets.dart";
import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/world_countries_build_context_extension.dart";
import "basic_picker.dart";

@sealed
@internal
@experimental
base class BasePickerFlagState<
  I extends IsoTranslated,
  T extends BasicPicker<I>
>
    extends State<T> {
  static const _countryFlags = <WorldCountry, BasicFlag>{
    ...uniqueSimplifiedFlagsMap,
    ...smallSimplifiedAlternativeFlagsMap,
  };

  bool _isMapped = false; // ignore: omit_obvious_property_types, conflicts DCM.
  Map<I, BasicFlag> get _flagsMap => widget.flagsMap;
  WorldCountry? get _maybeLocaleCountry => context.maybeLocale?.country;

  @protected
  @mustBeOverridden
  Map<I, List<WorldCountry>> get itemsMap => const {};

  @protected
  WorldCountry? get localeCountry => null;

  @protected
  Map<I, BasicFlag>? get emptyFallbackMap => null;

  @protected
  BasicFlag flagMapper(
    BasicFlag flag,
    I isoItem,
    List<WorldCountry>? countries,
  ) => flag.copyWith(
    height: 18,
    aspectRatio: FlagConstants.defaultAspectRatio,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(UiConstants.point / 2)),
    ),
  );

  @override
  void initState() {
    super.initState();
    // ignore: avoid-returning-void, for simplicty and readability.
    if (localeCountry != null) return _createFlagsMap(localeCountry);
    if (_maybeLocaleCountry != null) _createFlagsMap(_maybeLocaleCountry);
  }

  void _createFlagsMap(WorldCountry? country) {
    _isMapped = true;
    final localeFlag = _countryFlags[country];
    final hasCountry = localeFlag != null;
    final mapper = flagMapper;

    for (final entry in itemsMap.entries) {
      final key = entry.key;
      final customFlag = _flagsMap[key];
      if (customFlag != null) {
        _flagsMap[key] = mapper(customFlag, key, entry.value);
        continue;
      }

      final countries = entry.value;
      if (countries.contains(country) && hasCountry) {
        _flagsMap[key] = mapper(localeFlag, key, countries);
      } else if (countries.isEmpty) {
        final fallback = emptyFallbackMap?[key];
        if (fallback != null) _flagsMap[key] = mapper(fallback, key, countries);
      } else {
        final firstOne = _countryFlags[countries.first];
        if (firstOne != null) _flagsMap[key] = mapper(firstOne, key, countries);
      }
    }
  }

  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (mapEquals(_flagsMap, oldWidget.flagsMap)) return;
    _flagsMap
      ..clear()
      ..addAll(oldWidget.flagsMap);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isMapped) return;

    final typedCountry = _maybeLocaleCountry;
    if (typedCountry == null) {
      final platformCountry = PlatformDispatcher.instance.locale.countryCode;
      _createFlagsMap(WorldCountry.maybeFromCodeShort(platformCountry));
    } else {
      _createFlagsMap(typedCountry);
    }
  }

  @override
  Widget build(BuildContext context) => widget.copyWith(flagsMap: _flagsMap);
}
