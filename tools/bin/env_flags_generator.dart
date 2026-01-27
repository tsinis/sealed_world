// ignore_for_file: avoid_print, avoid-long-functions, avoid-similar-names,
// ignore_for_file: prefer-static-class, avoid-substring, prefer-trailing-comma
// ignore_for_file: prefer-moving-to-variable, avoid-non-null-assertion

import "dart:io";

import "package:path/path.dart";

/// CLI tool to generate and update environment flags for l10n packages.
///
/// This tool automatically generates compile-time locale filtering logic using
/// bool.hasEnvironment() and bool.fromEnvironment() to enable tree-shaking of
/// unused locales in production builds.
///
/// Usage:
///   dart run :env_flags_generator countries
///   dart run :env_flags_generator languages
///   dart run :env_flags_generator currencies
/// From the CLI directory root.
void main(List<String> args) {
  if (args.isEmpty) {
    print("Error: Package name is required.");
    print(
      "Usage: dart run :env_flags_generator <countries|languages|currencies>",
    );
    print("Example: dart run :env_flags_generator countries");
    exit(1);
  }

  final packageName = args.first.toLowerCase().trim();
  final validPackages = ["countries", "languages", "currencies"];

  if (!validPackages.contains(packageName)) {
    print("Error: Invalid package name '$packageName'.");
    print("Valid options: ${validPackages.join(", ")}");
    exit(1);
  }

  print("🔧 Generating environment flags for l10n_$packageName...\n");

  final packagePath = join(
    "..",
    "packages",
    "l10n_$packageName",
    "lib",
    "l10n_$packageName.dart",
  );

  final file = File(packagePath);
  if (!file.existsSync()) {
    print("Error: Package file not found at $packagePath");
    exit(1);
  }

  try {
    final content = file.readAsStringSync();

    // Step 1: Extract locale codes from imports.
    print("📋 Extracting locale codes from imports...");
    final localesFromImports = _extractLocalesFromImports(content, packageName);
    print("   Found ${localesFromImports.length} locales from imports");

    // Step 2: Extract locale codes from _factories map.
    print("📋 Extracting locale codes from _factories map...");
    final localesFromFactories = _extractLocalesFromFactories(content);
    print("   Found ${localesFromFactories.length} locales from _factories");

    // Step 3: Validate consistency.
    print("✅ Validating consistency...");
    final missingInFactories = localesFromImports.difference(
      localesFromFactories,
    );
    final missingInImports = localesFromFactories.difference(
      localesFromImports,
    );

    if (missingInFactories.isNotEmpty) {
      print("   ⚠️  Warning: Locales in imports but not in _factories:");
      for (final locale in missingInFactories) {
        print("      - $locale");
      }
    }

    if (missingInImports.isNotEmpty) {
      print("   ⚠️  Warning: Locales in _factories but not in imports:");
      for (final locale in missingInImports) {
        print("      - $locale");
      }
    }

    if (missingInFactories.isEmpty && missingInImports.isEmpty) {
      print("   ✓ All locales are consistent");
    }

    // Use union of both sets to be safe, then normalize and deduplicate.
    final allLocalesRaw = localesFromImports.union(localesFromFactories);
    // Normalize all locales to lowercase for flag names and deduplicate.
    final normalizedLocales = <String>{
      for (final locale in allLocalesRaw) locale.toLowerCase(),
    };
    final allLocales = normalizedLocales.toList()..sort();

    // Step 4: Generate code sections.
    print("🔨 Generating code sections...");
    final updatedContent = _generateEnvFlagsCode(content, allLocales);

    // Step 5: Write updated content.
    print("💾 Writing updated content...");
    file.writeAsStringSync(updatedContent);
    print("   ✓ File updated successfully");

    // Step 6: Run dart format.
    print("🎨 Running dart format...");
    final formatResult = Process.runSync("dart", [
      "format",
      packagePath, // Dart 3.8 formatting.
    ], workingDirectory: Directory.current.path);

    if (formatResult.exitCode == 0) {
      print("   ✓ dart format completed successfully");
    } else {
      print("   ✗ dart format encountered issues:");
      print(formatResult.stderr);
    }

    // Step 7: Run dart analyze on the generator tool itself.
    print("🔍 Running dart analyze on generator tool...");
    final analyzeResult = Process.runSync("dart", [
      "analyze",
      "bin/env_flags_generator.dart",
    ], workingDirectory: Directory.current.path);

    if (analyzeResult.exitCode == 0) {
      print("   ✓ dart analyze completed successfully");
    } else {
      print("   ✗ dart analyze found issues:");
      print(analyzeResult.stdout);
      print(analyzeResult.stderr);
      exit(1);
    }

    // Step 8: Run dcm analyze on the generator tool itself.
    print("🔍 Running dcm analyze on generator tool...");
    final dcmResult = Process.runSync(
      "dcm",
      ["analyze", "bin/env_flags_generator.dart"], // Dart 3.8 formatting.
      workingDirectory: Directory.current.path,
    );

    if (dcmResult.exitCode == 0) {
      print("   ✓ dcm analyze completed successfully");
    } else {
      print("   ✗ dcm analyze found issues:");
      print(dcmResult.stdout);
      print(dcmResult.stderr);
      exit(1);
    }

    print("\n🎉 Successfully generated environment flags for $packageName!");
    print("\n📝 Usage example:");
    print(r"   flutter build apk --dart-define=l10n-en=true \");
    print("                      --dart-define=l10n-de=true");
  } on Object catch (error) {
    print("✗ Error: $error");
    exit(1);
  }
}

/// Extracts locale codes from import statements.
Set<String> _extractLocalesFromImports(String content, String packageName) {
  final locales = <String>{};
  final importPattern = RegExp(
    'import\\s+["\']src/data/([a-z0-9_]+)_${packageName}_l10n\\.data\\.dart["\'];',
  );

  for (final match in importPattern.allMatches(content)) {
    final locale = match.group(1);
    if (locale != null) locales.add(locale);
  }

  return locales;
}

/// Extracts locale codes from the _factories map.
Set<String> _extractLocalesFromFactories(String content) {
  final locales = <String>{};

  // Find the _factories map.
  final factoriesStart = content.indexOf("static final _factories");
  if (factoriesStart.isNegative) return locales;

  final factoriesEnd = content.indexOf("};", factoriesStart);
  if (factoriesEnd.isNegative) return locales;

  final factoriesSection = content.substring(factoriesStart, factoriesEnd + 2);

  // Extract locale keys from map entries: "locale": ...
  final entryPattern = RegExp(r'''["']([a-zA-Z0-9_]+)["']\s*:\s*\w+''');

  for (final match in entryPattern.allMatches(factoriesSection)) {
    final locale = match.group(1);
    if (locale != null) locales.add(locale);
  }

  return locales;
}

/// Generates the environment flags code and updates the content.
String _generateEnvFlagsCode(String content, List<String> locales) {
  // Generate the code sections (no _include helper - inline the logic instead).
  final hasAnyFilterLines = <String>[
    "  /// AUTO-GENERATED by env_flags_generator.dart - DO NOT EDIT MANUALLY",
    "  /// Detects if user provided ANY l10n-* flag (unified across packages).",
    '  /// If yes, we switch to "opt-in" mode. If no, include all.',
    "  // Generated code - tree-shaking optimization for locale filtering.",
    "  // ignore: avoid-explicit-type-declaration",
  ];

  // Generate unique filter checks (locales already normalized to lowercase).
  final filterChecks = <String>[];
  final seenFlags = <String>{};
  for (final locale in locales) {
    final flagName = "l10n-$locale";
    if (seenFlags.add(flagName)) {
      final check = 'bool.hasEnvironment("$flagName")';
      filterChecks.add(check);
    }
  }

  // Split into chunks for readability (4 checks per line).
  hasAnyFilterLines.add("  static const _hasAnyLocaleFilter =");
  for (int i = 0; i < filterChecks.length; i += 4) {
    final end = (i + 4 < filterChecks.length) ? i + 4 : filterChecks.length;
    final chunk = filterChecks.sublist(i, end);
    final line = "      ${chunk.join(" || ")}";
    if (end < filterChecks.length) {
      hasAnyFilterLines.add("$line ||");
    } else {
      hasAnyFilterLines.add("$line;");
    }
  }

  // Find where to insert or replace.
  final factoriesIndex = content.indexOf("static final _factories");
  if (factoriesIndex.isNegative) {
    throw Exception("Could not find _factories map in the file");
  }

  // Check if _hasAnyLocaleFilter already exists.
  final hasExistingFilter = content.contains("_hasAnyLocaleFilter");
  final joinedFilter = hasAnyFilterLines.join("\n");

  // Replace existing sections or insert new ones.
  return hasExistingFilter
      ? _replaceExistingSections(content, joinedFilter)
      : _insertNewSections(content, factoriesIndex, joinedFilter);
}

/// Replaces existing _hasAnyLocaleFilter section.
String _replaceExistingSections(String content, String newHasAnyFilter) {
  String result = content;

  // Replace _hasAnyLocaleFilter.
  final filterStart = result.indexOf(
    "/// AUTO-GENERATED by env_flags_generator.dart",
  );
  if (!filterStart.isNegative) {
    final hasAnyLocaleIndex = result.indexOf(
      "_hasAnyLocaleFilter",
      filterStart,
    );
    final filterEnd = result.indexOf(";", hasAnyLocaleIndex);
    if (!filterEnd.isNegative) {
      result =
          "${result.substring(0, filterStart)}$newHasAnyFilter\n\n"
          "${result.substring(filterEnd + 1)}";
    }
  }

  // Remove old _include method if it exists.
  final includeStart = result.indexOf(
    "/// AUTO-GENERATED by env_flags_generator.dart",
    filterStart + 100,
  );
  if (!includeStart.isNegative) {
    final includeEnd = result.indexOf(";", includeStart + 200);
    if (!includeEnd.isNegative) {
      result =
          result.substring(0, includeStart) + result.substring(includeEnd + 1);
    }
  }

  // Update _factories map entries to wrap with inline condition.
  result = _wrapFactoriesWithInclude(result);

  // Ensure file-level ignore includes avoid-collapsible-if.
  result = _ensureFileIgnores(result);

  return result;
}

/// Inserts new sections before _factories map.
String _insertNewSections(
  String content,
  int factoriesIndex,
  String hasAnyFilter,
) {
  // Find the start of the line containing _factories.
  int lineStart = factoriesIndex;
  while (lineStart > 0 && content[lineStart - 1] != "\n") {
    lineStart -= 1;
  }

  final before = content.substring(0, lineStart);
  final after = content.substring(lineStart);

  String result = "$before$hasAnyFilter\n\n$after";

  // Update _factories map entries to wrap with inline condition.
  result = _wrapFactoriesWithInclude(result);

  // Ensure file-level ignore includes avoid-collapsible-if.
  result = _ensureFileIgnores(result);

  return result;
}

/// Wraps each entry in _factories map with inline if condition.
String _wrapFactoriesWithInclude(String content) {
  final result = content;

  // Find _factories map.
  final factoriesStart = result.indexOf("static final _factories");
  if (factoriesStart.isNegative) return result;

  final mapStart = result.indexOf("{", factoriesStart);
  final mapEnd = result.indexOf("};", mapStart);
  if (mapStart.isNegative || mapEnd.isNegative) return result;

  final factoriesContent = result.substring(mapStart + 1, mapEnd);
  final lines = factoriesContent.split("\n");
  final newLines = <String>[];

  int i = 0;
  while (i < lines.length) {
    final line = lines[i];
    final trimmed = line.trim();

    // Skip empty lines and comments.
    if (trimmed.isEmpty || trimmed.startsWith("//")) {
      newLines.add(line);
      i += 1;
      continue;
    }

    // Check if line is already wrapped with correct inline if pattern.
    if (trimmed.startsWith("if (!_hasAnyLocaleFilter ||")) {
      // Skip all nested if statements until we find the actual map entry.
      // The map entry is the line with "locale": Factory.new pattern.
      final mapEntryPattern = RegExp(
        r'''^["\']([a-zA-Z0-9_]+)["\']\s*:\s*(.+)$''',
      );

      // Skip forward to find the actual map entry.
      String? entryLine;
      String? entryLocale;
      String? entryValue;
      int skipCount = 0;

      while (i < lines.length) {
        // ignore: avoid-duplicate-initializers, just a CLI tool.
        final checkLine = lines[i];
        final checkTrimmed = checkLine.trim();

        // Check if this is the actual map entry (not another if statement).
        final match = mapEntryPattern.firstMatch(checkTrimmed);
        if (match != null) {
          entryLine = checkLine;
          entryLocale = match.group(1);
          entryValue = match.group(2);
          i += 1;
          break;
        }
        // Skip nested if statements.
        i += 1;
        skipCount += 1;
      }

      // Regenerate single if statement with the correct entry.
      if (entryLocale != null && entryValue != null) {
        final flagName = "l10n-${entryLocale.toLowerCase()}";
        final indent = entryLine!.substring(
          0,
          entryLine.indexOf(entryLine.trim()),
        );
        final baseIndent = indent.length >= (skipCount * 2)
            ? indent.substring(0, indent.length - (skipCount * 2))
            : "";
        newLines.addAll([
          "${baseIndent}if (!_hasAnyLocaleFilter || ",
          'const bool.fromEnvironment("$flagName"))',
          '$baseIndent  "$entryLocale": $entryValue',
        ]);
      }
      continue;
    }

    // Check if line has old _include() pattern.
    // Remove it and process the entry.
    if (trimmed.startsWith("if (_include(")) {
      // This is an old pattern, skip it and process the next line.
      i += 1; // Skip the old if line.
      if (i < lines.length) {
        final entryLine = lines[i];
        final entryTrimmed = entryLine.trim();
        final entryMatch = RegExp(
          r'''^["\']([a-zA-Z0-9_]+)["\']\s*:\s*(.+)$''',
        ).firstMatch(entryTrimmed);
        if (entryMatch != null) {
          final locale = entryMatch.group(1)!;
          final value = entryMatch.group(2);
          final flagName = "l10n-${locale.toLowerCase()}";
          final indent = entryLine.substring(
            0,
            entryLine.indexOf(entryTrimmed),
          );
          // Remove extra indentation from old pattern.
          final baseIndent = indent.length >= 2
              ? indent.substring(0, indent.length - 2)
              : indent;
          // Generate new inline condition.
          newLines.addAll([
            "${baseIndent}if (!_hasAnyLocaleFilter || ",
            'const bool.fromEnvironment("$flagName"))',
            '$baseIndent  "$locale": $value',
          ]);
        }
        i += 1;
      }
      continue;
    }

    const regexp = r'''^["\']([a-zA-Z0-9_]+)["\']\s*:\s*(.+)$''';

    // Check if this is a map entry.
    final entryMatch = RegExp(regexp).firstMatch(trimmed);
    if (entryMatch == null) {
      newLines.add(line);
    } else {
      final locale = entryMatch.group(1)!;
      final value = entryMatch.group(2);
      final flagName = "l10n-${locale.toLowerCase()}";
      final indent = line.substring(0, line.indexOf(trimmed));
      // Inline the condition.
      newLines.addAll([
        "${indent}if (!_hasAnyLocaleFilter || ",
        'const bool.fromEnvironment("$flagName"))',
        '$indent  "$locale": $value',
      ]);
    }
    i += 1;
  }

  return result.substring(0, mapStart + 1) +
      newLines.join("\n") +
      result.substring(mapEnd);
}

/// Ensures file-level ignore comment includes required directives
/// for generated code.
String _ensureFileIgnores(String content) {
  // Find the ignore_for_file comment.
  final ignorePattern = RegExp(
    r"^// ignore_for_file:\s*(.+)$",
    multiLine: true,
  );
  final match = ignorePattern.firstMatch(content);

  if (match == null) {
    // No ignore comment found, add one after the license header.
    final libraryIndex = content.indexOf("library ");
    if (!libraryIndex.isNegative) {
      final lineStart = content.lastIndexOf("\n", libraryIndex - 1);

      const ignoreComment =
          "// ignore_for_file: do_not_use_environment, "
          "avoid-collection-mutating-methods, "
          "avoid-complex-conditions, "
          "avoid-collapsible-if";

      return "${content.substring(0, lineStart + 1)}\n$ignoreComment\n"
          "${content.substring(lineStart + 1)}";
    }

    return content;
  }

  final existingIgnores = match.group(1)!;
  const requiredIgnores = [
    "do_not_use_environment",
    "avoid-collection-mutating-methods",
    "avoid-complex-conditions",
    "avoid-collapsible-if",
  ];

  // Check which ignores are missing.
  final missingIgnores = requiredIgnores
      .where((ignore) => !existingIgnores.contains(ignore))
      .toList();

  if (missingIgnores.isEmpty) return content;
  final newIgnores = '$existingIgnores, ${missingIgnores.join(', ')}';

  return content.replaceFirst(ignorePattern, "// ignore_for_file: $newIgnores");
}
