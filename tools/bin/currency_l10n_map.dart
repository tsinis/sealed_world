// ignore_for_file: avoid_print, prefer-for-in, avoid-long-functions

import "dart:io";

import "package:path/path.dart";
// ignore: deprecated_member_use, it's TODO!
import "package:sealed_currencies/currency_translations.dart";
import "package:sealed_languages/sealed_languages.dart";

void main(List<String> args) {
  if (args.isEmpty) {
    print("Error: Currency code is required.");
    print("Usage: dart run :currency_l10n_map <CURRENCY_CODE>");
    print("Example: dart run :currency_l10n_map ZWG");
    exit(1);
  }

  final currencyCode = args.first.toUpperCase().trim();

  if (currencyCode.length != IsoStandardized.codeLength) {
    print("Error: Currency code must be exactly 3 letters.");
    exit(1);
  }

  final currencyMap = <NaturalLanguage, String>{};
  final l10nDir = Directory(join("json", "data"));

  if (!l10nDir.existsSync()) {
    print("Error: Currency directory not found at ${l10nDir.path}");
    exit(1);
  }

  for (final language in NaturalLanguage.list) {
    final fileName = "${language.codeShort.toLowerCase()}.txt";
    final file = File(join(l10nDir.path, fileName));
    if (!file.existsSync()) continue;

    final currencyName = _extractCurrencyName(file, currencyCode);
    if (currencyName != null) currencyMap[language] = currencyName;
  }

  if (currencyMap.isEmpty) {
    print("No translations found for currency code: $currencyCode");
    exit(0);
  }

  for (final entry in currencyMap.entries) {
    final langClass = entry.key.runtimeType.toString();
    print('  $langClass(): "${entry.value}",');
  }

  print(
    "\nTotal languages found: ${currencyMap.length} out of "
    "${kSealedCurrenciesSupportedLanguages.length}",
  );

  final dataDir = Directory(
    join("../", "packages", "l10n_currencies", "lib", "src", "data"),
  );
  if (!dataDir.existsSync()) {
    print("Error: Data directory not found at ${dataDir.path}");
    print(Directory.current.path);
    exit(1);
  }

  final missingDataFiles = <String>[];
  for (final entry in currencyMap.entries) {
    final language = entry.key;
    final dataFileName =
        "${language.codeShort.toLowerCase()}_currencies_l10n.data.dart";
    final dataFile = File(join(dataDir.path, dataFileName));

    if (!dataFile.existsSync()) {
      missingDataFiles.add(dataFileName);
    }
  }

  if (missingDataFiles.isNotEmpty) {
    print(
      "\n⚠️  Warning: Missing .data.dart files for ${missingDataFiles.length} "
      "language(s):",
    );
    for (final file in missingDataFiles) {
      print("  - $file");
    }
    print("(These will be skipped, but other files will be updated)\n");
  }

  print("--- Updating .data.dart files ---");
  int updatedCount = 0;
  int errorCount = 0;

  for (final entry in currencyMap.entries) {
    final language = entry.key;
    final translation = entry.value;
    final dataFileName =
        "${language.codeShort.toLowerCase()}_currencies_l10n.data.dart";
    final dataFile = File(join(dataDir.path, dataFileName));

    if (!dataFile.existsSync()) continue;

    try {
      final result = _updateDataFile(dataFile, currencyCode, translation);
      if (result) {
        updatedCount += 1;
        print("✓ Updated: $dataFileName");
      }
    } on Object catch (error) {
      errorCount += 1;
      print("✗ Error updating $dataFileName: $error");
    }
  }

  print("\n--- Update Summary ---");
  print("✓ Successfully updated: $updatedCount file(s)");
  if (errorCount > 0) {
    print("✗ Errors: $errorCount file(s)");
  }

  print("\n--- Running dart analyze ---");
  final analyzeResult = Process.runSync(
    "dart",
    ["analyze", dataDir.path],
    workingDirectory: Directory.current.path, // Dart 3.8 Formatting.
  );

  if (analyzeResult.exitCode == 0) {
    print("✓ dart analyze completed successfully");
  } else {
    print("✗ dart analyze found issues:");
    print(analyzeResult.stdout);
    print(analyzeResult.stderr);
    exit(1);
  }
  print("\n--- Running dart format ---");
  Process.runSync(
    "dart",
    ["format", dataDir.path],
    workingDirectory: Directory.current.path, // Dart 3.8 Formatting.
  );

  print("\n🎉 All done!");
}

// ignore_for_file: prefer-static-class, it's just a CLI utility function.
String? _extractCurrencyName(File file, String currencyCode) {
  final allLines = file.readAsLinesSync();
  for (int i = 0; i < allLines.length; i += 1) {
    final line = allLines[i].trim();

    if (line.startsWith("$currencyCode{")) {
      if (i + 1 < allLines.length && i + 2 < allLines.length) {
        final nameLine = allLines[i + 2].trim();
        final match = RegExp('"([^"]+)"').firstMatch(nameLine);
        if (match != null) return match.group(1);
      }

      return null;
    }
  }

  return null;
}

/// Updates a .data.dart file by inserting a currency translation.
///
/// Maintains alphabetical order of currency codes.
/// Returns true if successful, throws an error if currency already exists.
bool _updateDataFile(File file, String currencyCode, String translation) {
  final content = file.readAsStringSync();
  if (content.contains(RegExp(r"map\.addAll\(\{[^}]+\}\);"))) {
    return _updateSingleLineMap(file, content, currencyCode, translation);
  }

  final lines = content.split("\n");
  int mapStartIndex = -1;
  int mapEndIndex = -1;

  for (int i = 0; i < lines.length; i += 1) {
    if (lines[i].contains("map.addAll({")) {
      mapStartIndex = i;
    } else if (mapStartIndex != -1 && lines[i].trim() == "});") {
      mapEndIndex = i;
      break;
    }
  }

  if (mapStartIndex == -1 || mapEndIndex == -1) {
    throw Exception("Could not find map.addAll block");
  }

  final entries = <String, String>{};
  for (int i = mapStartIndex + 1; i < mapEndIndex; i += 1) {
    // ignore: avoid-similar-names, just a CLI utility function.
    final line = lines[i].trim();
    if (line.isEmpty || line.startsWith("//")) continue;

    final match = RegExp(r'"([^"]+)":\s*"([^"]+)",?').firstMatch(line);
    if (match != null) {
      final code = match.group(1);
      final name = match.group(2);

      if (code == null || name == null) continue;
      if (code == currencyCode) {
        throw Exception(
          "Currency $currencyCode already exists with value: $name\n"
          "Please review manually if update is needed.",
        );
      }

      entries[code] = name;
    }
  }
  entries[currencyCode] = translation;
  final sortedKeys = entries.keys.toList()..sort();
  const indent = "      ";
  final newMapLines = <String>[lines[mapStartIndex]];

  for (final key in sortedKeys) {
    newMapLines.add('$indent"$key": "${entries[key]}",');
  }

  newMapLines.add(lines[mapEndIndex]);
  final newCount = entries.length;
  for (int i = 0; i < lines.length; i += 1) {
    if (lines[i].contains("/// Contains") &&
        lines[i].contains("translation(s)")) {
      lines[i] = "/// Contains $newCount translation(s).";
      break;
    }
  }

  final newLines = [
    ...lines.sublist(0, mapStartIndex),
    ...newMapLines,
    ...lines.sublist(mapEndIndex + 1),
  ];
  file.writeAsStringSync(newLines.join("\n"));

  return true;
}

/// Handles updating files with single-line map format.
bool _updateSingleLineMap(
  File file,
  String content,
  String currencyCode,
  String translation,
) {
  final mapMatch = RegExp(r"map\.addAll\(\{([^}]+)\}\);").firstMatch(content);
  if (mapMatch == null) {
    throw Exception("Could not parse single-line map");
  }

  final mapContent = mapMatch.group(1);
  if (mapContent == null) throw Exception("Could not extract map content");

  final entries = <String, String>{};
  final entryPattern = RegExp(r'"([^"]+)":\s*"([^"]+)"');
  for (final match in entryPattern.allMatches(mapContent)) {
    final code = match.group(1);
    final name = match.group(2);
    if (code == null || name == null) continue;

    if (code == currencyCode) {
      throw Exception(
        "Currency $currencyCode already exists with value: $name\n"
        "Please review manually if update is needed.",
      );
    }

    entries[code] = name;
  }

  entries[currencyCode] = translation;
  final sortedKeys = entries.keys.toList()..sort();
  final newEntries = sortedKeys
      .map((key) => '"$key": "${entries[key]}"')
      .join(", ");
  final newCount = entries.length;
  final updatedContent = content
      .replaceFirst(
        RegExp(r"/// Contains \d+ translation\(s\)\."),
        "/// Contains $newCount translation(s).",
      )
      .replaceFirst(
        RegExp(r"map\.addAll\(\{[^}]+\}\);"),
        "map.addAll({$newEntries});",
      );
  file.writeAsStringSync(updatedContent);

  return true;
}
