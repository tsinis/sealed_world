import "dart:convert";
import "dart:io";

import "package:path/path.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../constants/path_constants.dart";
import "../generators/helpers/extensions/package_associations_extension.dart";
import "../models/package.dart";

final class JsonUtils {
  const JsonUtils(this.dataDirPath);
  final String dataDirPath;

  Directory get dataDirectory => Directory(dataDirPath);

  void parseData([Package package = Package.sealedLanguages]) {
    final englishData = _extractLanguage(package, "en");
    final directories = dataDirectory.listSync();
    for (final item in package.dataList.take(1)) {
      for (final dir in directories) {
        final locale = _extractLocaleCode(basename(dir.path));
        // TODO: Iterate over all languages and store them.
      }
    }
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
    final scriptCode = countryCode == null ? null : match?.group(2);
    countryCode = scriptCode == null ? match?.group(2) : countryCode;
    countryCode = countryCode?.isEmpty ?? true ? null : countryCode;

    return (
      languageCode: lang,
      countryCode: countryCode,
      scriptCode: scriptCode
    );
  }
}

Future<void> main() async => const JsonUtils("json/data").parseData();
