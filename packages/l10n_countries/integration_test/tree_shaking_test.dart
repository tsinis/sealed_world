// ignore_for_file: avoid-non-ascii-symbols, prefer-static-class
// ignore_for_file: avoid_print, avoid-late-keyword

/// Integration tests of the `l10n-<locale>` defines: they compile the package
/// to JS with different defines and compare the output sizes, then run it with
/// different defines and compare the locales it keeps.
///
/// Run: `dart test integration_test`
///
/// It prints the size comparison, for example:
/// ```shell
/// 📊 Bundle Size Comparison:
///    All locales: 1.73MB
///    3 locales:   123.1KB
///    DE only:     64.9KB
/// ```
// Three dart2js -O2 builds run in `setUpAll`, too slow for the default 30s.
@Timeout(Duration(minutes: 5))
library;

import "dart:io";

// ignore: depend_on_referenced_packages, it's an integration test.
import "package:path/path.dart" as path;
import "package:test/test.dart";

// Package specific values, the rest of this file is the same in all l10n_*.
const _package = "l10n_countries";
const _mapper = "CountriesLocaleMapper";
const _isoCode = "USA";
const _germanName = "Vereinigte Staaten"; // German for US.
const _frenchName = "États-Unis"; // French for "United States".

void main() {
  late String root;
  late Directory tempDir;
  late File entryPoint;
  late Map<String, int> sizes;

  // ignore: prefer-extracting-function-callbacks, it's a setup call.
  setUpAll(() async {
    root = _findPackageRoot(Directory.current.path);
    // Inside the package, so the package resolution works.
    tempDir = await Directory(
      path.join(root, ".dart_tool", "tree_shake_test"),
    ).create(recursive: true);
    entryPoint = File(path.join(tempDir.path, "main.dart"))
      ..writeAsStringSync('''
import "package:$_package/$_package.dart";

void main() {
  final mapper = $_mapper();
  // Force usage so tree-shaker doesn't remove everything.
  print(mapper.availableLocales.join(","));
  print(mapper.localize(const {"$_isoCode"}, mainLocale: "en"));
}
''');

    const builds = {
      "all": <String>[],
      "de": ["l10n-de=true"],
      "three": ["l10n-en=true", "l10n-de=true", "l10n-ru=true"],
    };
    final results = await Future.wait(
      builds.entries.map(
        (build) => _compileJs(
          entryPoint,
          path.join(tempDir.path, "${build.key}.js"),
          defines: build.value,
          workingDirectory: root,
        ),
      ),
    );
    sizes = Map.fromIterables(builds.keys, results);

    print(
      "📊 Bundle Size Comparison:\n"
      "   All locales: ${_formatBytes(sizes["all"] ?? 0)}\n"
      "   3 locales:   ${_formatBytes(sizes["three"] ?? 0)}\n"
      "   DE only:     ${_formatBytes(sizes["de"] ?? 0)}",
    );
  });

  tearDownAll(
    () async =>
        tempDir.existsSync() ? await tempDir.delete(recursive: true) : null,
  );

  group("Tree-shaking verification", () {
    test("single locale build is significantly smaller than full build", () {
      final all = sizes["all"] ?? 0;
      final german = sizes["de"] ?? 0;

      expect(german, lessThan(all * 0.5), reason: "<50% of the full build");
      expect(german, greaterThan(1024), reason: "build should not be empty");
    });

    test("three locales build is smaller than full but larger than single", () {
      final three = sizes["three"] ?? 0;

      expect(three, greaterThan(sizes["de"] ?? 0));
      expect(three, lessThan((sizes["all"] ?? 0) * 0.1));
    });

    test("excluded locale strings are not present in compiled output", () {
      final output = File(path.join(tempDir.path, "de.js")).readAsStringSync();

      expect(output, isNot(contains(_frenchName)), reason: "no French");
      expect(output, contains(_germanName), reason: "German is included");
    });
  });

  group("Locale defines", () {
    const runs = {
      "child on": ["l10n-sw_cd=true"],
      "child on (locale spelling)": ["l10n-sw_CD=true"],
      "child on, parent off": ["l10n-sw_cd=true", "l10n-sw=false"],
      "de on": ["l10n-de=true"],
      "fr off": ["l10n-fr=false"],
      "none": <String>[],
      "not bundled on": ["l10n-xx=true"],
    };
    late Map<String, Set<String>> kept;

    // ignore: prefer-extracting-function-callbacks, it's a setup call.
    setUpAll(() async {
      final results = await Future.wait(
        runs.values.map(
          (defines) => _runLocales(entryPoint, defines, workingDirectory: root),
        ),
      );
      kept = Map.fromIterables(runs.keys, results);
    });

    test("keep all locales by default", () {
      expect(kept["none"], containsAll(const ["de", "fr", "sw", "sw_CD"]));
    });

    test("drop only the locale set to false", () {
      expect(kept["fr off"], kept["none"]?.difference(const {"fr"}));
    });

    test("keep only the locale set to true", () {
      expect(kept["de on"], const {"de"});
    });

    test("keep the parent of an enabled child locale", () {
      expect(kept["child on"], const {"sw", "sw_CD"});
      expect(kept["child on (locale spelling)"], const {"sw", "sw_CD"});
    });

    test("drop a parent locale set to false", () {
      expect(kept["child on, parent off"], const {"sw_CD"});
    });

    test("ignore defines of locales the package does not bundle", () {
      expect(kept["not bundled on"], kept["none"]);
    });
  });
}

/// Finds the package root directory (containing pubspec.yaml).
String _findPackageRoot(String startPath) {
  Directory current = Directory(startPath);
  while (current.path != current.parent.path) {
    final pubspec = File(path.join(current.path, "pubspec.yaml"));
    if (pubspec.existsSync()) return current.path;
    current = current.parent;
  }

  throw StateError("Could not find package root (no pubspec.yaml found)");
}

/// Compiles the entry point to JavaScript and returns the file size in bytes.
Future<int> _compileJs(
  File entryPoint,
  String outputPath, {
  required List<String> defines,
  required String workingDirectory,
}) async {
  final arguments = [
    "compile",
    "js",
    for (final define in defines) "-D$define",
    "-O2",
    "-o",
    outputPath,
    entryPoint.path,
  ];
  final result = await Process.run(
    "dart",
    arguments,
    workingDirectory: workingDirectory,
  );
  if (result.exitCode != 0) {
    fail("Compilation failed:\n${result.stdout}\n${result.stderr}");
  }

  return File(outputPath).lengthSync();
}

/// Runs the entry point and returns the locales its mapper keeps.
Future<Set<String>> _runLocales(
  File entryPoint,
  List<String> defines, {
  required String workingDirectory,
}) async {
  final arguments = [
    "run",
    for (final define in defines) "-D$define",
    entryPoint.path,
  ];
  final result = await Process.run(
    "dart",
    arguments,
    workingDirectory: workingDirectory,
  );
  if (result.exitCode != 0) fail("Run failed:\n${result.stderr}");
  final locales = "${result.stdout}".split("\n").first;

  return locales.isEmpty ? const {} : locales.split(",").toSet();
}

/// Formats bytes to human-readable string.
String _formatBytes(int bytes) {
  const bytesInKb = 1024;
  const bytesInMb = 1024 * 1024;

  if (bytes < bytesInKb) return "${bytes}B";
  if (bytes < bytesInMb) return "${(bytes / bytesInKb).toStringAsFixed(1)}KB";

  return "${(bytes / bytesInMb).toStringAsFixed(2)}MB";
}
