import "package:flutter/foundation.dart" show internal;
import "package:flutter/widgets.dart" show WidgetsBinding;
import "package:world_flags/world_flags.dart";

import "../platform_dispatcher_extension.dart";

@internal
extension BasicPickerFlagsExtension<T extends IsoTranslated>
    on Map<T, BasicFlag> {
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
    final localeFlag = smallSimplifiedFlagsMap[country];
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
        final firstOne = smallSimplifiedFlagsMap[countries.first];
        if (firstOne != null) flagMap[key] = mapper(firstOne, key, countries);
      }
    }

    return flagMap;
  }

  BasicFlag _defaultFlagsMapper(BasicFlag flag, Object _, Object _) => flag;
}
