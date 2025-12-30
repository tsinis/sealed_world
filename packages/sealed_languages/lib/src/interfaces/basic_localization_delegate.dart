import "dart:collection";

import "../helpers/extensions/basic_locale_extension.dart";
import "../helpers/extensions/locale_mapping_options_extension.dart";
import "../model/core/basic_locale.dart";
import "../model/core/locale_mapping_options.dart";
import "../model/language/submodels/natural_language.dart";
import "../model/script/submodels/script.dart";
import "../model/translated_name.dart";
import "../typedefs/typedefs.dart";
import "iso_standardized.dart";

/// A delegate that handles localization of ISO standardized entities.
///
/// Type parameters:
/// - [L]: Type of locale extending [BasicLocale].
/// - [T]: Type of translated name extending [TranslatedName].
abstract class BasicLocalizationDelegate<
  L extends BasicLocale,
  T extends TranslatedName
> {
  /// Creates a [BasicLocalizationDelegate] instance.
  ///
  /// Parameters:
  /// - [languages]: Optional collection of supported languages for locale
  ///       parsing.
  /// - [mapper]: Optional function that returns locale mapping function
  /// - [scripts]: Optional collection of supported scripts for locale parsing.
  const BasicLocalizationDelegate({this.languages, this.mapper, this.scripts});

  /// Optional collection of supported languages. Used to limit locale parsing
  /// and validation.
  final Iterable<NaturalLanguage>? languages;

  /// Function that returns a locale mapping function. Used to map ISO codes to
  /// their localized names.
  // ignore: prefer-correct-callback-field-name, it's a function that returns a function.
  final LocaleMapFunction<String> Function()? mapper;

  /// Optional collection of supported scripts. Used to limit locale parsing and
  /// validation.
  final Iterable<Script>? scripts;

  /// Regular expression pattern for parsing Unicode locale identifiers.
  static const unicodeLocale =
      r"^(\p{L}{2,3})(?:[_\s-]+(?:(\p{L}{4})(?:[_\s-]+(\p{L}{2,3}))?|(\p{L}{2,3})))?$";

  /// {@macro copy_with_method}
  BasicLocalizationDelegate<L, T> copyWith({
    Iterable<NaturalLanguage>? languages,
    LocaleMapFunction<String> Function()? mapper,
    Iterable<Script>? scripts,
  });

  /// Creates a locale instance from the given components.
  ///
  /// Parameters:
  /// - [language]: The language of the locale.
  /// - [script]: Optional writing system.
  /// - [countryCode]: Optional country/region code.
  ///
  /// Returns a locale of type [L].
  L toLocale(NaturalLanguage language, Script? script, String? countryCode);

  /// Creates a translated name instance from a locale and name components.
  ///
  /// Parameters:
  /// - [locale]: The locale for the translation.
  /// - [name]: The common/short name.
  /// - [alt]: Optional alternative/full name.
  ///
  /// Returns a translated name of type [T].
  T toTranslation(L locale, String name, String? alt);

  /// Gets the compiled regular expression for parsing locale identifiers.
  ///
  /// Returns a case-insensitive [RegExp] with Unicode support.
  static final localePattern = RegExp(
    unicodeLocale,
    caseSensitive: false,
    unicode: true,
  );

  /// Parses a locale identifier string into a locale object.
  ///
  /// Parameters:
  /// - [locale]: The locale identifier to parse.
  ///
  /// Returns a locale of type [L] if valid, `null` otherwise.
  L? parseLocale(Object? locale) {
    final input = locale?.toString().trim() ?? "";
    if (input.isEmpty) return null;

    final match = localePattern.firstMatch(input);
    final lang = NaturalLanguage.maybeFromAnyCode(match?.group(1), languages);
    if (lang == null) return null;

    final maybeCountryCode = match?.group(3) ?? match?.group(4);
    final maybeScript = Script.maybeFromCode(match?.group(2), scripts);

    return toLocale(lang, maybeScript, maybeCountryCode?.toUpperCase());
  }

  /// Creates a map of ISO codes to their common names in the specified locale.
  ///
  /// Parameters:
  /// - [items]: Collection of ISO standardized items.
  /// - [options]: Locale mapping configuration options.
  ///
  /// Returns an unmodifiable map of ISO items to their localized common names.
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

  /// Creates a list of translated names for the given ISO items.
  ///
  /// Parameters:
  /// - [items]: Collection of ISO standardized items to translate.
  /// - [options]: Optional locale mapping configuration.
  ///
  /// Returns an unmodifiable list of translated names.
  ///
  /// !Important: This method is quite heavy (it's recommended to cache
  /// the results)!
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
