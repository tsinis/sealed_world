// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "dart:convert";

import "package:change_case/change_case.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:yaml/yaml.dart";

import "../constants/path_constants.dart";
import "../generators/helpers/extensions/package_associations_extension.dart";
import "../models/package.dart";
import "dart_utils.dart";
import "io_utils.dart";

final class JsonUtils {
  const JsonUtils(this.package, {this.dataDirPath = defaultDataDirPath});

  final String dataDirPath;
  final Package package;

  static const defaultDataDirPath = "json/data";
  static const eng = LangEng();
  static const translation = "translations";

  static const _dart = DartUtils();

  Directory get dataDirectory => Directory(dataDirPath);

  Future<List<String>> parseByLanguage() async {
    final stopwatch = Stopwatch()..start();
    final paths = <String>[];
    final io = IoUtils()..createDirectory(translation);
    final englishData = _extractL10N(eng.codeShort.toLowerCase());
    final directories = dataDirectory.listSync()
      ..sort((a, b) => basename(a.path).compareTo(basename(b.path)));
    for (final item in package.dataList) {
      final itemFromCode = _instanceFromCode(item.code);
      if (itemFromCode == null) continue; // Might be more items in the source.
      print("\nExtracting translations for: ${itemFromCode.name}\n");
      final english = englishData[itemFromCode];
      final translations = package.translations(item.code).toSet();
      if (english != null && translations.isEmpty)
        translations.add(TranslatedName(eng, name: english));
      for (final dir in directories) {
        final dirName = basename(dir.path);
        final translation = _extractL10N(dirName);
        final locale = _extractLocaleCode(dirName);
        final lang = _convertCodeToLang(locale.languageCode);
        final translationForLang = translation[itemFromCode];
        if (lang == null || translationForLang == null) continue;
        if (translationForLang == english) continue;
        final containsWithFullName =
            translations.any((e) => e.language == lang && e.fullName != null);
        final containsWithSameLocale = translations.any(
          (e) =>
              e.language == lang && e.script == null && e.countryCode == null,
        );
        if (containsWithFullName || containsWithSameLocale) continue;
        final script = locale.scriptCode;
        final translated = TranslatedName(
          lang,
          name: translationForLang,
          countryCode: locale.countryCode,
          script: script != null ? Script.fromCode(script) : null,
        );
        final isAdded = translations.add(translated);
        if (!isAdded) continue;
      }

      final translationCode = item.code.toLowerCase();
      final dataType = package.dataRepresent;
      final varFileName = "$translationCode $dataType $translation";
      final fileNameFull =
          """${translationCode}_${dataType.toLowerCase()}.l10n.${PathConstants.dart}""";
      final filePath = join(translation, fileNameFull);
      paths.add(fileNameFull);
      final sb = StringBuffer("""
${_dartDoc(translations, itemFromCode.name, dataType)}.
const ${varFileName.toCamelCase()} = [
""");
      for (final i in translations) sb.write("${i.toString(short: false)},\n");
      sb.write("];");
      io.writeContentToFile(filePath, sb);
      sb.clear();
      translations.clear();
    }

    await _dart.fixFormat();
    stopwatch.stop();
    print("\n🎉 Done! Generation process took ${stopwatch.elapsed}");

    return paths;
  }

  Future<List<String>> parseByItems() async {
    final stopwatch = Stopwatch()..start();
    final paths = <String>[];
    final io = IoUtils()..createDirectory(translation);
    for (final item in [package.dataList.last]) {
      final itemFromCode = _instanceFromCode(item.code);
      if (itemFromCode == null) continue; // Might be more items in the source.
      final translations = package.translations(item.code).toSet();
      final english = translations.firstWhere((e) => e.language == eng);
      final length = translations.length;
      print("\nExtracting translations for: ${itemFromCode.name}\n");
      final codeShort = item.codeOther?.toLowerCase();
      final file = File(join(dataDirectory.path, "$codeShort.yaml"));
      if (!file.existsSync()) continue;
      final yamlString = file.readAsStringSync();
      final yaml = loadYaml(yamlString) as YamlMap;
      final map = Map<String, String>.from(yaml["name"] as Map);
      for (final entry in map.entries) {
        final l10n = NaturalLanguage.maybeFromValue(
          entry.key.toUpperCase().trim(),
          where: (l) => l.codeShort,
        );
        if (l10n == null) continue;
        if (translations.any((e) => e.language == l10n)) continue;
        final translation = entry.value.trim();
        if (translation.toLowerCase() == english.name.toLowerCase()) continue;
        final translated = TranslatedName(l10n, name: translation);
        final isAdded = translations.add(translated);
        if (!isAdded) continue;
        print("* Add ${translated.language.name} total ${translations.length}");
      }

      if (translations.length == length) {
        print(":( No translations for ${item.name}");
        translations.clear();
        continue;
      }

      final translationCode = item.code.toLowerCase();
      final dataType = package.dataRepresent;
      final varFileName = "$translationCode $dataType $translation";
      final fileNameFull =
          """${translationCode}_${dataType.toLowerCase()}.l10n.${PathConstants.dart}""";
      final filePath = join(translation, fileNameFull);
      paths.add(fileNameFull);
      final buffer = StringBuffer(
        """
${_dartDoc(translations, itemFromCode.name, dataType)}.
const ${varFileName.toCamelCase()} = [
""",
      );
      for (final element in translations) buffer.write("$element,\n");
      buffer.write("];");
      io.writeContentToFile(filePath, buffer);
      buffer.clear();
      translations.clear();
    }

    await _dart.fixFormat();
    stopwatch.stop();
    print("\n🎉 Done! Generation process took ${stopwatch.elapsed}");

    return paths;
  }

  String _dartDoc(Set<TranslatedName> translations, Object name, String type) {
    final sorted = List.of(translations.map((e) => e.language.name))..sort();
    final import = package.whenConstOrNull(sealedCountries: package.dirName) ??
        Package.sealedLanguages.dirName;

    final buffer = StringBuffer('import "package:$import/$import.dart";\n')
      ..write(
        "/// Provides ${translations.length} $translation for a $name $type:",
      );
    for (final name in Set.unmodifiable(sorted)) buffer.write("\n /// - $name");

    return buffer.toString();
  }

  Map<IsoStandardized, String> _extractL10N(String lang) {
    final path = "$lang/${package.dataRepresent}.${PathConstants.json}";
    final json = File(join(dataDirectory.path, path));
    final map = jsonDecode(json.readAsStringSync()) as JsonObjectMap;

    return _convertLanguageMap(map);
  }

  JsonObjectMap _sortMapByKeyLength(JsonObjectMap map) {
    final sortedKeys = map.keys.toList(growable: false)
      ..sort((a, b) => b.length.compareTo(a.length));

    return {for (final key in sortedKeys) key: map[key]};
  }

  Map<IsoStandardized, String> _convertLanguageMap(JsonObjectMap json) {
    final sortedMap = _sortMapByKeyLength(json);
    final nullMap = sortedMap.map(
      (code, l10n) => MapEntry(_instanceFromCode(code), l10n?.toString()),
    );

    if (package == Package.sealedCurrencies) _fixCurrencyData(nullMap);
    nullMap.removeWhere((key, value) => key == null || value == null);

    return Map<IsoStandardized, String>.unmodifiable(nullMap);
  }

  void _fixCurrencyData(Map<IsoStandardized?, String?> mapToUpdate) {
    final maybeZwl = mapToUpdate[const FiatZwl()];
    final maybeSll = mapToUpdate[const FiatSll()];
    if (maybeSll != null) mapToUpdate[const FiatSle()] = maybeSll;
    if (maybeZwl == null) return;
    final withoutYear = maybeZwl.replaceFirst(RegExp(r"\(\d{4}\)"), "");
    mapToUpdate[const FiatZwl()] = withoutYear.trim();
  }

  IsoStandardized<Object>? _instanceFromCode(String code) => package.when(
        sealedCurrencies: () => _convertCodeToCurrency(code),
        sealedLanguages: () => _convertCodeToLang(code),
        sealedCountries: () => _convertCodeToCountry(code),
      );

  WorldCountry? _convertCodeToCountry(String rawCode) {
    final countryCode = rawCode.toUpperCase().trim();

    return WorldCountry.maybeFromValue(
      countryCode,
      where: (country) => countryCode.length == IsoStandardized.codeShortLength
          ? country.codeShort
          : country.code,
    );
  }

  /// Missing: XAG, XAU, XBA, XBB, XBC, XBD, XDR, XPD, XPT, XTS.
  FiatCurrency? _convertCodeToCurrency(String rawCode) {
    final code = rawCode.toUpperCase().trim();
    var fiat = FiatCurrency.maybeFromAnyCode(code);
    if (fiat != null) return fiat;
    const old = {"MRO": "MRU", "STD": "STN", "VEF": "VES"};
    if (old.containsKey(code)) fiat = FiatCurrency.maybeFromValue(old[code]!);

    return fiat;
  }

  NaturalLanguage? _convertCodeToLang(String code) {
    final languageCode = _extractLocaleCode(code).languageCode;
    final language = NaturalLanguage.maybeFromValue(
      languageCode,
      where: (lang) => languageCode.length == IsoStandardized.codeShortLength
          ? lang.codeShort
          : lang.code,
    );

    /// Looks like Bhojpuri is subset of Bihari language group:
    /// Reference: https://en.wikipedia.org/wiki/Bhojpuri_language
    if (language == null && languageCode == "BHO") return const LangBih();

    return language;
  }

  ({String languageCode, String? countryCode, String? scriptCode})
      _extractLocaleCode(String code) {
    final regex = RegExp("^([A-Z]+)(?:_([A-Z]+))?(?:_([A-Z]+))?");

    final match = regex.firstMatch(code.toUpperCase());

    final lang = match?.group(1) ?? "";
    var countryCode = match?.group(3);
    var scriptCode = countryCode == null ? null : match?.group(2);
    countryCode = scriptCode == null ? match?.group(2) : countryCode;
    countryCode = countryCode?.isEmpty ?? true ? null : countryCode;
    if (countryCode?.length == 4) {
      scriptCode = countryCode;
      countryCode = null;
    }

    return (
      languageCode: lang,
      countryCode: countryCode,
      scriptCode: scriptCode
    );
  }
}
