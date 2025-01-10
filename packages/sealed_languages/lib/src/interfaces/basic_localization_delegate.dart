import "dart:collection";

import "../helpers/extensions/basic_locale_extension.dart";
import "../helpers/extensions/locale_mapping_options_extension.dart";
import "../model/core/basic_locale.dart";
import "../model/core/locale_mapping_options.dart";
import "../model/language/language.dart";
import "../model/script/writing_system.dart";
import "../model/translated_name.dart";
import "../typedefs/typedefs.dart";
import "iso_standardized.dart";

abstract class BasicLocalizationDelegate<L extends BasicLocale,
    T extends TranslatedName> {
  const BasicLocalizationDelegate({this.languages, this.mapper, this.scripts});

  final Iterable<NaturalLanguage>? languages;
  final LocaleMapFunction<String> Function()? mapper;
  final Iterable<Script>? scripts;

  static const unicodeLocale =
      r"^(\p{L}{2})(?:[_\s-]+(?:(\p{L}{4})|(\p{L}{2}))?)?(?:[_\s-]+(\p{L}{2}))?$";

  /// {@macro copy_with_method}
  BasicLocalizationDelegate<L, T> copyWith({
    Iterable<NaturalLanguage>? languages,
    LocaleMapFunction<String> Function()? mapper,
    Iterable<Script>? scripts,
  });

  L toLocale(NaturalLanguage language, Script? script, String? countryCode);

  T toTranslation(L locale, String name, String? alt);

  RegExp get localePattern =>
      RegExp(unicodeLocale, caseSensitive: false, unicode: true);

  L? parseLocale(Object? locale) {
    final match = localePattern.firstMatch(locale?.toString() ?? "");
    final lang = NaturalLanguage.maybeFromCodeShort(match?.group(1), languages);
    if (lang == null) return null;

    final maybeCountryCode = match?.group(3) ?? match?.group(4);
    final maybeScriptCode = match?.group(2);

    return toLocale(
      lang,
      Script.maybeFromCode(maybeScriptCode, scripts),
      maybeCountryCode?.toUpperCase(),
    );
  }

  Map<Iso, String> commonNamesMap<Iso extends IsoStandardized>(
    Iterable<Iso> items, {
    required LocaleMappingOptions<L> options,
  }) {
    final noFullNamesOptions = options.copyWith(localizeFullNames: false);
    final rawMap = _rawLocaleMap(items, noFullNamesOptions);

    final map = <String, String>{};
    for (final iso in rawMap.entries) {
      if (!map.containsKey(iso.key.isoCode)) map[iso.key.isoCode] = iso.value;
    }

    final results = <Iso, String>{};
    for (final iso in items) {
      final maybeCommonName = map[iso.code];
      if (maybeCommonName != null) results[iso] = maybeCommonName;
    }

    return Map.unmodifiable(results);
  }

  List<T> translatedNames(
    Iterable<IsoStandardized> items, {
    LocaleMappingOptions<L> options = const LocaleMappingOptions(),
  }) {
    final map = _rawLocaleMap(items, options);

    return List<T>.unmodifiable(
      map.entries.map((e) => _maybeToTranslatedName(map, e, options)).nonNulls,
    );
  }

  LocaleMap _rawLocaleMap(
    Iterable<IsoStandardized> isoCodes,
    LocaleMappingOptions<L> options,
  ) =>
      mapper?.call().call(
            isoCodes.map((iso) => iso.code).toSet(),
            altSymbol: options.localizeFullNames ? null : "",
            fallbackLocale: options.fallbackLocale?.toUnicodeLocaleId(),
            mainLocale: options.mainLocale?.toUnicodeLocaleId(),
            useLanguageFallback: options.useLanguageFallback,
          ) ??
      const {};

  T? _maybeToTranslatedName(
    LocaleMap map,
    MapEntry<IsoLocaleKey, String> entry,
    LocaleMappingOptions<L> options,
  ) {
    final isoCode = entry.key.isoCode;
    if (isoCode.endsWith(options.altSymbol)) return null;

    final basicLocale = parseLocale(entry.key.locale);
    if (basicLocale == null) return null;

    final fullName = options.localizeFullNames
        ? map[(isoCode: isoCode + options.altSymbol, locale: entry.key.locale)]
        : null;

    return toTranslation(basicLocale, entry.value, fullName);
  }
}
