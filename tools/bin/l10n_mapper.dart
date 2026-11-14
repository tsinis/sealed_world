// ignore_for_file: avoid_print, it's just a CLI tool, not a production code.

import "dart:io";
import "dart:isolate";

import "package:cli/l10n/l10n_mapper_generator.dart";
import "package:path/path.dart" show dirname;

/// Generates the main library of the l10n_* packages from their data files,
/// copies the shared mapper sources into them, and generates their shared
/// tests (`test/locale_resolution_test.dart`,
/// `test/mapper_optimization_test.dart` and
/// `integration_test/tree_shaking_test.dart`).
///
/// Run it without arguments for all l10n_* packages, or with package names:
/// `dart run :l10n_mapper currencies` (or `l10n_currencies`) in `tools/`.
/// The paths are resolved from the `tools` package, not the working directory.
void main(List<String> args) {
  final selected = <L10nPackage>[];
  for (final arg in args) {
    final maybePackage = L10nPackage.maybeFromName(arg);
    if (maybePackage == null) {
      final names = L10nPackage.values.map((value) => value.name);
      print("Unknown package '$arg', use one of: ${names.join(", ")}");
      exit(64);
    }
    selected.add(maybePackage);
  }

  final lib = Isolate.resolvePackageUriSync(Uri.parse("package:cli/"));
  final root = lib == null ? "." : dirname(lib.toFilePath());

  for (final package in selected.isEmpty ? L10nPackage.values : selected) {
    final written = L10nMapperGenerator(package, root: root).run();
    final format = Process.runSync("dart", ["format", ...written]);
    if (format.exitCode != 0) {
      print(format.stderr);
      exit(format.exitCode);
    }
    print("Generated ${package.dirName}: ${written.join(", ")}");
  }
}
