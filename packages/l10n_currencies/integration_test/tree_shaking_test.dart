// ignore_for_file: avoid-non-ascii-symbols, prefer-static-class
// ignore_for_file: avoid_print, avoid-non-null-assertion

/// Integration tests that verify tree-shaking works correctly by comparing
/// compiled binary sizes with different locale configurations.
///
/// Run: `dart test integration_test`
///
/// It should run all the tests and print out size comparisons, for example:
/// ```shell
/// 📊 Graduated Size Comparison:
///  All locales (149): 1018.2KB
///  3 locales:         77.8KB
///  1 locale (DE):     56.9KB
/// ```
@TestOn("vm")
library;

import "dart:io";

// ignore: depend_on_referenced_packages, it's an integration test.
import "package:path/path.dart" as path;
import "package:test/test.dart";

void main() {
  Directory? tempDir;
  File? testEntryPoint;
  String? packageRoot;

  // ignore: prefer-extracting-function-callbacks, it's a setup call.
  setUpAll(() async {
    // Find the package root (where pubspec.yaml lives).
    packageRoot = _TreeShakingTest.findPackageRoot(Directory.current.path);

    // Create temp directory INSIDE the package so package resolution works.
    tempDir = await Directory(
      path.join(packageRoot!, ".dart_tool", "tree_shake_test"),
    ).create(recursive: true);

    // Create a minimal entry point that imports the mapper.
    testEntryPoint = File(path.join(tempDir!.path, "main.dart"));
    await testEntryPoint!.writeAsString('''
import "package:l10n_currencies/l10n_currencies.dart";

void main() {
  final mapper = CurrenciesLocaleMapper();
  // Force usage so tree-shaker doesn't remove everything.
  print(mapper.availableLocales.length);
  print(mapper.localize(const {"USD"}, mainLocale: "en"));
}
''');
  });

  tearDownAll(
    () async => (tempDir?.existsSync() ?? false)
        ? await tempDir?.delete(recursive: true)
        : null,
  );

  group("Tree-shaking verification", () {
    test(
      "single locale build is significantly smaller than full build",
      () async {
        final root = packageRoot!;
        final temp = tempDir!;
        final entry = testEntryPoint!;

        // Compile with ALL locales (default).
        final allLocalesSize = await _TreeShakingTest.compileAndGetSize(
          entryPoint: entry,
          outputPath: path.join(temp.path, "all_locales.js"),
          defines: const [],
          workingDirectory: root,
        );

        // Compile with ONLY German locale.
        final deOnlySize = await _TreeShakingTest.compileAndGetSize(
          entryPoint: entry,
          outputPath: path.join(temp.path, "de_only.js"),
          defines: const ["l10n-de=true"],
          workingDirectory: root,
        );

        // Calculate reduction percentage.
        final reductionPercent =
            ((allLocalesSize - deOnlySize) / allLocalesSize) * 100;
        final formattedReduction = reductionPercent.toStringAsFixed(1);

        print(
          "📊 Bundle Size Comparison:\n"
          "   All locales: ${_TreeShakingTest.formatBytes(allLocalesSize)}\n"
          "   DE only:     ${_TreeShakingTest.formatBytes(deOnlySize)}\n"
          "   Reduction:   $formattedReduction%",
        );

        final halfOfAllLocales = allLocalesSize * 0.5;

        // Expect at least 50% reduction when using single locale.
        expect(
          deOnlySize,
          lessThan(halfOfAllLocales),
          reason:
              "Single locale build should be <50% of full build. "
              "Got $formattedReduction% reduction.",
        );

        // Sanity check: DE-only should still have reasonable size.
        expect(
          deOnlySize,
          greaterThan(1024), // At least 1KB.
          reason: "Build should not be empty",
        );
      },
      timeout: const Timeout(Duration(minutes: 5)),
    );

    test(
      "three locales build is smaller than full but larger than single",
      () async {
        final root = packageRoot!;
        final temp = tempDir!;
        final entry = testEntryPoint!;

        // Compile with 3 locales.
        final threeLocalesSize = await _TreeShakingTest.compileAndGetSize(
          entryPoint: entry,
          outputPath: path.join(temp.path, "three_locales.js"),
          defines: const ["l10n-en=true", "l10n-de=true", "l10n-ru=true"],
          workingDirectory: root,
        );

        final deOnlySize = await _TreeShakingTest.compileAndGetSize(
          entryPoint: entry,
          outputPath: path.join(temp.path, "de_only_2.js"),
          defines: const ["l10n-de=true"],
          workingDirectory: root,
        );

        final allLocalesSize = await _TreeShakingTest.compileAndGetSize(
          entryPoint: entry,
          outputPath: path.join(temp.path, "all_locales_2.js"),
          defines: const [],
          workingDirectory: root,
        );

        print(
          "📊 Graduated Size Comparison:\n"
          "   All locales (149): "
          "${_TreeShakingTest.formatBytes(allLocalesSize)}\n"
          "   3 locales:         "
          "${_TreeShakingTest.formatBytes(threeLocalesSize)}\n"
          "   1 locale (DE):     "
          "${_TreeShakingTest.formatBytes(deOnlySize)}",
        );

        final tenPercentOfAllLocales = allLocalesSize * 0.1;

        // Three locales should be between single and all.
        expect(
          threeLocalesSize,
          greaterThan(deOnlySize),
          reason: "3 locales should be larger than 1 locale",
        );
        expect(
          threeLocalesSize,
          lessThan(tenPercentOfAllLocales),
          reason: "3 locales should be <10% of full build (3/149 ≈ 2%)",
        );
      },
      timeout: const Timeout(Duration(minutes: 5)),
    );

    test(
      "excluded locale class name not present in compiled output",
      () async {
        final root = packageRoot!;
        final temp = tempDir!;
        final entry = testEntryPoint!;

        final outputPath = path.join(temp.path, "de_only_check.js");

        await _TreeShakingTest.compileAndGetSize(
          entryPoint: entry,
          outputPath: outputPath,
          defines: const ["l10n-de=true"],
          workingDirectory: root,
        );

        final jsContent = await File(outputPath).readAsString();

        // French-specific string (should NOT be present).
        expect(
          jsContent.contains("dollar des États-Unis"), // French for US dollar.
          isFalse,
          reason: "French translations should be tree-shaken out",
        );

        // German-specific string (SHOULD be present).
        expect(
          jsContent.contains("US-Dollar"), // German for US dollar.
          isTrue,
          reason: "German translations should be included",
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );
  });
}

/// Helper class containing static methods for tree-shaking tests.
abstract final class _TreeShakingTest {
  /// Finds the package root directory (containing pubspec.yaml).
  static String findPackageRoot(String startPath) {
    Directory current = Directory(startPath);
    while (current.path != current.parent.path) {
      final pubspec = File(path.join(current.path, "pubspec.yaml"));
      if (pubspec.existsSync()) return current.path;
      current = current.parent;
    }
    throw StateError("Could not find package root (no pubspec.yaml found)");
  }

  /// Compiles the entry point to JavaScript and returns the file size in bytes.
  static Future<int> compileAndGetSize({
    required File entryPoint,
    required String outputPath,
    required List<String> defines,
    required String workingDirectory,
  }) async {
    final defineArgs = defines.map((define) => "-D$define").toList();

    final result = await Process.run(
      "dart",
      [
        "compile",
        "js",
        ...defineArgs,
        "-O2",
        "-o",
        outputPath,
        entryPoint.path,
      ], // Dart 3.8 formatting.
      workingDirectory: workingDirectory,
    );

    if (result.exitCode != 0) {
      fail(
        "Compilation failed:\n"
        "STDOUT: ${result.stdout}\n"
        "STDERR: ${result.stderr}",
      );
    }

    final outputFile = File(outputPath);
    if (!outputFile.existsSync()) {
      fail("Compiled output not found at $outputPath");
    }

    return outputFile.lengthSync();
  }

  /// Formats bytes to human-readable string.
  static String formatBytes(int bytes) {
    const bytesInKb = 1024;
    const bytesInMb = 1024 * 1024;

    if (bytes < bytesInKb) return "${bytes}B";
    if (bytes < bytesInMb) return "${(bytes / bytesInKb).toStringAsFixed(1)}KB";

    return "${(bytes / bytesInMb).toStringAsFixed(2)}MB";
  }
}
