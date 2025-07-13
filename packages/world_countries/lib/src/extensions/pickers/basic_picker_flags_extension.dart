import "package:flutter/widgets.dart"
    show BorderRadius, BoxDecoration, Radius, WidgetsBinding;
import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart";

import "../../constants/ui_constants.dart";
import "../platform_dispatcher_extension.dart";

@internal
extension BasicPickerFlagsExtension<T extends IsoTranslated>
    on Map<T, BasicFlag> {
  static const _countryFlags = <WorldCountry, BasicFlag>{
    ...uniqueSimplifiedFlagsMap,
    ...smallSimplifiedAlternativeFlagsMap,
  };

  Map<T, BasicFlag> adaptFlags(
    Map<T, List<WorldCountry>> itemsMap, {
    Map<T, BasicFlag>? fallbacksMap,
    BasicFlag Function(BasicFlag flag, T, List<WorldCountry>?)? flagsMapper,
    WorldCountry? localeCountry,
  }) {
    final country =
        localeCountry ??
        WidgetsBinding.instance.platformDispatcher.firstCountryOrNull;
    final mapper = flagsMapper ?? _defaultFlagsMapper;
    final flagMap = Map<T, BasicFlag>.of(this);
    final localeFlag = _countryFlags[country];
    final hasCountry = localeFlag != null;

    for (final entry in itemsMap.entries) {
      final key = entry.key;
      final customFlag = flagMap[key];
      if (customFlag != null) {
        flagMap[key] = mapper(customFlag, key, entry.value);
        continue;
      }

      final countries = entry.value;
      if (countries.contains(country) && hasCountry) {
        flagMap[key] = mapper(localeFlag, key, countries);
      } else if (countries.isEmpty) {
        final fallback = fallbacksMap?[key];
        if (fallback != null) flagMap[key] = mapper(fallback, key, countries);
      } else {
        final firstOne = _countryFlags[countries.first];
        if (firstOne != null) flagMap[key] = mapper(firstOne, key, countries);
      }
    }

    return flagMap;
  }

  BasicFlag _defaultFlagsMapper(BasicFlag flag, T _, List<WorldCountry>? _) =>
      flag.copyWith(
        height: 18,
        aspectRatio: FlagConstants.defaultAspectRatio,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(UiConstants.point / 2),
          ),
        ),
      );
}
