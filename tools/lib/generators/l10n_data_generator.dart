// ignore_for_file: avoid-unused-ignores

import "package:change_case/change_case.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../constants/path_constants.dart";
import "../models/package.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class L10NDataGenerator {
  const L10NDataGenerator(this.package);

  final Package package;

  static const _dart = DartUtils();

  Future<void> generate(String path) async {
    final directory = Directory(path);
    final io = IoUtils(directory)
      ..copyFile(
        "../packages/l10n_languages/lib/src/iso_locale_mapper.dart",
        directory,
      );

    final locales = <String>{};

    for (final translation in package.dataList) {
      final maybeLocales = translation.translations
          .map((e) => e.asBasicLocale)
          .map((e) => e.toUnicodeLocaleId())
          .toList(growable: false);

      locales.addAll(maybeLocales);
    }

    final plural = package.dataRepresentPlural.toPascalCase();

    final mapperBugger = StringBuffer("""
import "src/iso_locale_mapper.dart";
export "src/iso_locale_mapper.dart";

/// Provides ${package.dataRepresent} names translations for different locales.
// ignore: prefer-match-file-name, it's main library file.
class ${plural}LocaleMapper extends IsoLocaleMapper<IsoLocaleMapper<String>> {
  /// Provides names translations for ${locales.length} locales, with the option to
  /// add more translations via the [other] parameter.
  // ignore: avoid-non-empty-constructor-bodies,on purpose.
  ${plural}LocaleMapper({Map<String, IsoLocaleMapper<String>>? other}) {
    map.addAll({
""");

    // ignore: avoid-non-ascii-symbols, it's  CLI tool.
    final exportBuffer = StringBuffer("""
// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// ${package.umpirskyRepoUrl} project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

/// Provides ${package.dataRepresent} translations for different locales.
library l10n_${plural.toLowerCase()};

""");
    const parser = LocalizationDelegate();
    for (final locale in locales) {
      final pascalCaseName = "${locale.toPascalCase()}${plural}L10N";
      final buffer = StringBuffer();
      final maybeParsedLocale = parser.parseLocale(locale);

      if (maybeParsedLocale != null) {
        final languageName = maybeParsedLocale.language.internationalName;
        buffer.write(
          "/// Provides translations for the $languageName language\n",
        );
        if (!maybeParsedLocale.hasNoScript) {
          final scriptName = maybeParsedLocale.script?.internationalName;
          buffer.write("/// and $scriptName script locale.\n");
        }
        if (!maybeParsedLocale.hasNoCountry) {
          final countryCode = maybeParsedLocale.countryCode;
          buffer.write("/// and `$countryCode` country/region code locale.\n");
        }
        if (maybeParsedLocale.hasOnlyLanguage) buffer.write("/// locale.\n");
      }

      buffer.write("""
class $pascalCaseName extends IsoLocaleMapper<String> {
  /// Provides ${package.dataRepresent} translations for the `$locale` locale.
  $pascalCaseName() {
    map.addAll({
""");

      final typedLocales = <BasicLocale>[];
      for (final iso in package.dataList) {
        for (final l10n in iso.translations) {
          final basicLocale = l10n.asBasicLocale;
          final localeId = basicLocale.toUnicodeLocaleId();
          if (localeId != locale) continue;

          buffer.write('\n"${iso.code}": "${l10n.name}",');
          typedLocales.add(basicLocale);

          if (l10n.fullName?.isEmpty ?? true) continue;
          buffer.write('\n"${iso.code}+": "${l10n.fullName}",');
        }
      }
      buffer.write("});\n}\n}");

      final file = "${locale}_${plural}_l10n.data.${PathConstants.dart}"
          .toLowerCase();
      final localImportBuffer = StringBuffer();

      if (typedLocales.length < 2) {
        localImportBuffer.write(
          "// ignore_for_file: avoid-unnecessary-collections\n",
        );
      }

      localImportBuffer
        ..write('import "../iso_locale_mapper.dart";\n')
        ..write("/// Contains ${typedLocales.length} translation(s).\n")
        ..write(buffer);

      io.writeContentToFile(join(path, "data", file), localImportBuffer);
      typedLocales.clear();

      exportBuffer
        ..write('import "data/$file";\n')
        ..write('export "data/$file";\n');
      mapperBugger.write('"$locale": $pascalCaseName(),\n');
    }

    mapperBugger.write("""
     ...?other,
    });
  }

  /// The symbol used to identify the alternative/full name of the ISO object.
  static const symbol = "+";

  /// Localizes a set of ISO codes into names (to specified locale if needed).
  ///
  /// Parameters:
  /// - [isoCodes]: Set of ISO codes to be localized.
  /// - [altSymbol]: Optional symbol for alternative (full) name translations.
  /// - [fallbackLocale]: Optional secondary locale for translations.
  /// - [mainLocale]: Optional primary locale for translations.
  /// - [useLanguageFallback]: Whether to try language-only codes if specified
  /// locale not found (i.e. 'en_US' -> 'en').
  /// - [formatter]: Optional callback to modify each translation.
  ///
  /// Returns a [Map] containing the localized names for the provided ISO
  /// codes.
  ///
  /// Example:
  /// ```dart
  /// final map = mapper.localize({'FRA', 'RUS'}, mainLocale: 'en');
  /// ```
  LocaleMap localize(
    Set<String> isoCodes, {
    String? altSymbol,
    Object? fallbackLocale,
    Object? mainLocale,
    bool useLanguageFallback = true,
    String Function(LocaleKey isoLocale, String l10n)? formatter,
  }) {
    if (isoCodes.isEmpty) return const {};
    final locale = mainLocale?.toString();
    final altLocale = fallbackLocale?.toString();

    final localeData = extract(
      locale == null
          ? null
          : {
              ..._localesSet(locale, useLanguageFallback: useLanguageFallback),
              if (altLocale != null)
                ..._localesSet(
                  altLocale,
                  useLanguageFallback: useLanguageFallback,
                ),
            },
    );

    return switch (localeData.length) {
      0 => const {},
      1 => _fromSingle(
          isoCodes,
          localeData.entries.first,
          altSymbol ?? symbol,
          formatter,
        ),
      _ => _fromMultiple(
          isoCodes,
          localeData,
          altSymbol ?? symbol,
          formatter,
        ),
    };
  }

  Set<String> _localesSet(String locale, {required bool useLanguageFallback}) =>
      // ignore: avoid-substring, locale should has no emoji.
      {locale, if (useLanguageFallback) locale.substring(0, 2)};

  MapEntry<LocaleKey, String> _mapSingle(
    String Function(LocaleKey isoLocale, String l10n)? formatter,
    String locale, {
    required String code,
    required String l10n,
  }) {
    final isoLocale = (isoCode: code, locale: locale);

    return MapEntry(isoLocale, formatter?.call(isoLocale, l10n) ?? l10n);
  }

  LocaleMap _fromSingle(
    Set<String> codes,
    MapEntry<String, IsoLocaleMapper<String>> localeEntry,
    String altSymbol,
    String Function(LocaleKey isoLocale, String l10n)? formatter,
  ) {
    final locale = localeEntry.key;
    final results = localeEntry.value.extract(codes, altSymbol: altSymbol).map(
          (code, l10n) => _mapSingle(formatter, locale, code: code, l10n: l10n),
        );
    localeEntry.value.map.clear();
    map.clear();

    return LocaleMap.unmodifiable(results);
  }

  LocaleMap _fromMultiple(
    Set<String> codes,
    Map<String, IsoLocaleMapper<String>> localesData,
    String altSymbol,
    String Function(LocaleKey isoLocale, String l10n)? formatter,
  ) {
    final results = <LocaleKey, String>{};

    for (final localeEntry in localesData.entries) {
      final translations =
          localeEntry.value.extract(codes, altSymbol: altSymbol);

      for (final code in codes) {
        final key = (isoCode: code, locale: localeEntry.key);
        if (results[key] == null) {
          final l10n = translations[code];
          if (l10n != null) {
            final mainLocale = (isoCode: code, locale: localeEntry.key);
            results[key] = formatter?.call(mainLocale, l10n) ?? l10n;
          }
        }

        final secondary = altKey(code, altSymbol);
        if (secondary == null) continue; // ignore: avoid-continue, early exit.

        final alternative = (isoCode: secondary, locale: localeEntry.key);
        // ignore: avoid-continue, also early exit.
        if (results[alternative] != null) continue;

        final altL10n = translations[secondary];
        if (altL10n != null) {
          final altLocale = (isoCode: code, locale: localeEntry.key);
          results[alternative] = formatter?.call(altLocale, altL10n) ?? altL10n;
        }
      }

      localeEntry.value.map.clear();
    }
    map.clear();

    return LocaleMap.unmodifiable(results);
  }
}

""");

    io
      ..writeContentToFile(
        join(path, "l10n_$plural.${PathConstants.dart}".toLowerCase()),
        exportBuffer.toString() + mapperBugger.toString(),
      )
      ..directory = directory.parent;

    await _dart.fixFormat();
    await _dart.dcm();
    await _dart.dcm();
    await _dart.fixFormat();
  }
}
