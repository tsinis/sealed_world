import "dart:convert";

import "package:change_case/change_case.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../constants/path_constants.dart";
import "../generators/helpers/extensions/package_associations_extension.dart";
import "../models/package.dart";
import "dart_utils.dart";
import "io_utils.dart";

Future<void> main() async {
  const package = Package.sealedLanguages;
  final exports = await const JsonUtils("json/data").parseData(); // TODO!
  final dataType = package.dataRepresent;
  final buffer = StringBuffer(
    "library sealed_${dataType}_${JsonUtils.translation};\n".toLowerCase(),
  );
  for (final export in exports) buffer.writeln('export "$export";');
  final filename = "$dataType ${JsonUtils.translation}".toSnakeCase();

  final path = join(JsonUtils.translation, "$filename.${PathConstants.dart}");
  IoUtils().writeContentToFile(path, buffer);
}

final class JsonUtils {
  const JsonUtils(this.dataDirPath);
  final String dataDirPath;

  static const eng = LangEng();
  static const translation = "translations";

  static const _dart = DartUtils();

  Directory get dataDirectory => Directory(dataDirPath);

  Future<List<String>> parseData([
    Package package = Package.sealedLanguages,
  ]) async {
    final paths = <String>[];
    final io = IoUtils()..createDirectory(translation);
    final englishData = _extractLanguage(package, eng.codeShort.toLowerCase());
    final directories = dataDirectory.listSync()
      ..sort((a, b) => basename(a.path).compareTo(basename(b.path)));
    for (final item in package.dataList) {
      final itemFromCode = NaturalLanguage.fromCode(item.code);
      final english = englishData[itemFromCode];
      final translations = <TranslatedName>{};
      if (english != null) translations.add(TranslatedName(eng, name: english));
      for (final dir in directories) {
        // TODO! Improve progress logging.
        final dirName = basename(dir.path);
        final translation = _extractLanguage(package, dirName);
        final locale = _extractLocaleCode(dirName);
        final lang = _convertCodeToLang(locale.languageCode);
        final translationForLang = translation[itemFromCode];
        if (lang == null || translationForLang == null) continue;
        if (translationForLang == english) continue;
        final script = locale.scriptCode;
        final translated = TranslatedName(
          lang,
          name: translationForLang,
          countryCode: locale.countryCode,
          script: script != null ? Script.fromCode(script) : null,
        );

        translations.add(translated);
      }

      final translationCode = item.code.toLowerCase();
      final dataType = package.dataRepresent;
      final varFileName = "$translationCode $dataType $translation";
      final fileNameFull = "${varFileName.toSnakeCase()}.${PathConstants.dart}";
      final filePath = join(translation, fileNameFull);
      paths.add(fileNameFull);
      final buffer = StringBuffer(
        """
import "package:sealed_languages/sealed_languages.dart";

${_dartDoc(translations, itemFromCode.name, dataType)}.
const ${varFileName.toCamelCase()} = [
""",
      );
      for (final element in translations) {
        buffer
          ..write(element.toString())
          ..write(",\n");
      }
      buffer.write("];");
      io.writeContentToFile(filePath, buffer);

      buffer.clear();
      translations.clear();
    }

    await _dart.fixFormat();

    return paths;
  }

  String _dartDoc(Set<TranslatedName> translations, String name, String type) {
    final sorted = List.of(translations.map((e) => e.language.name))..sort();

    final buffer = StringBuffer(
      "/// Provides ${translations.length} $translation for a $name $type:",
    );
    for (final name in Set.unmodifiable(sorted)) buffer.write("\n /// - $name");

    return buffer.toString();
  }

  Map<NaturalLanguage, String> _extractLanguage(Package package, String lang) {
    final path = "$lang/${package.dataRepresent}.${PathConstants.json}";
    final json = File(join(dataDirectory.path, path));
    final map = jsonDecode(json.readAsStringSync()) as Map<String, Object?>;

    return _convertLanguageMap(map);
  }

  Map<NaturalLanguage, String> _convertLanguageMap(Map<String, Object?> json) {
    final nullMap = json.map((code, translation) {
      final language = _convertCodeToLang(code);

      return MapEntry(language, translation?.toString());
    })
      ..removeWhere((key, value) => key == null || value == null);

    return Map<NaturalLanguage, String>.unmodifiable(nullMap);
  }

  NaturalLanguage? _convertCodeToLang(String code) {
    final languageCode = _extractLocaleCode(code).languageCode;
    final language = NaturalLanguage.maybeFromValue(
      languageCode,
      where: (lang) => languageCode.length == 2 ? lang.codeShort : lang.code,
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
