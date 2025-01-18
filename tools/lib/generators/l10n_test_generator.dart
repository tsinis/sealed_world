import "package:sealed_languages/sealed_languages.dart";

import "../constants/path_constants.dart";
import "../models/package.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class L10NTestGenerator {
  const L10NTestGenerator(this.package);

  final Package package;

  static const l10nLabel = "L10N";
  static const _dart = DartUtils();

  Future<void> generate(String path) async {
    final io = IoUtils();
    final prefix = "${package.dataRepresent}_${l10nLabel}_";
    final dependencyImport = package.whenConst(
      sealedLanguages: """
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/translated_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/translated_name.dart";
""",
      sealedCountries:
          'import "package:sealed_currencies/sealed_currencies.dart";',
      sealedCurrencies:
          'import "package:sealed_languages/sealed_languages.dart";',
    );

    final dataImport = package.whenConst(
      sealedLanguages:
          '"package:sealed_languages/src/data/natural_languages.data.dart";',
      sealedCountries:
          '"package:sealed_countries/src/data/official_world_countries.data.dart";',
      sealedCurrencies:
          '"package:sealed_currencies/src/data/fiat_currencies.data.dart";',
    );
    int translationsCount = 0;
    for (final translated in package.dataList) {
      final code = translated.code;
      final instance = "${translated.runtimeType}()";
      final buffer = StringBuffer("""
// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import $dataImport
$dependencyImport
import "package:test/test.dart";

void main() => group("\$$instance $l10nLabel", () {
const value = $instance;\n
""");

      for (final l10n in translated.translations) {
        final locale = l10n.asBasicLocale;
        final common = l10n.name;
        final full = l10n.fullName;

        buffer.write("""
\ntest("has translation for '$locale' locale", () {
        const expectedName = r"$common";
        ${full == null ? '' : 'const expectedFullName = ${full == common ? 'expectedName' : 'r"$full"'};'}
        final translated = value.maybeTranslation(
          const ${locale.toString(short: false)},
          useLanguageFallback: false,
        );

        expect(translated?.name, expectedName);
        final commonMapTranslation = value.maybeCommonNameFor(
          const ${locale.toString(short: false)},
        );
        expect(commonMapTranslation, expectedName);
""");
        if (full != null) {
          buffer.write("expect(translated?.fullName, expectedFullName);");
        }
        if (locale.hasOnlyLanguage) {
          buffer.write("""
        final unexpectedScriptTranslation = value.maybeTranslation(
          const ${locale.copyWith(script: const ScriptCyrs()).toString(short: false)},
        );

        expect(unexpectedScriptTranslation?.name, expectedName);
""");
        }

        buffer.write("""
        expect(
          value.translations,
          contains(
            const TranslatedName(${locale.language.runtimeType}(),
            name: expectedName,
        """);

        if (full != null) buffer.write("fullName: expectedFullName,");
        if (locale.script != null) {
          buffer.write("script: ${locale.script.runtimeType}(),");
        }
        if (locale.countryCode != null) {
          buffer.write('countryCode: "${locale.countryCode}",');
        }

        buffer.write("),),);\n});");
        translationsCount += 1;
      }

      buffer.write('\n}, tags: "generated",);');

      final test = "${code}_$prefix${PathConstants.test}.${PathConstants.dart}";
      io.writeContentToFile(join(path, test.toLowerCase()), buffer);
    }
    // ignore: avoid_print, it's CLI, helper tool.
    print(
      "Created tests for $translationsCount "
      "${package.dataRepresent} translations",
    );
    // Last stats for 31.12.2024:
    // Countries: 36 709.
    // Currencies: 17 550.
    // Languages: 20 881.
    //
    // In fact total: 68 236.
    io.directory = Directory(path);

    await _dart.fixFormat();
    await _dart.dcm();
    await _dart.dcm();
    await _dart.fixFormat();
  }
}
