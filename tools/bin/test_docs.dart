// ignore_for_file: avoid_print, avoid-returning-void, avoid-long-functions
import "package:args/args.dart";
import "package:cli/utils/io_utils.dart";

const _allPackages = {
  "l10n_languages",
  "l10n_currencies",
  "l10n_countries",
  "sealed_languages",
  "sealed_currencies",
  "sealed_countries",
  "world_flags",
  "world_countries",
};

Future<void> main(List<String> args) async {
  final parser = ArgParser()
    ..addFlag(
      "help",
      abbr: "h",
      negatable: false,
      help: "Show usage instructions.",
    )
    ..addOption(
      "exclude",
      abbr: "e",
      defaultsTo: ".dart_tool/**,example/**,lib/src/data/**",
      help: "Exclude pattern(s) for dartdoc_test.",
    )
    ..addFlag(
      "activate",
      defaultsTo: true,
      help: "Automatically activate dartdoc_test globally if missing.",
    );

  final ArgResults results;
  try {
    results = parser.parse(args);
  } on ArgParserException catch (error) {
    stderr.writeln("Error: ${error.message}");

    return _printUsage(parser, 64);
  }

  if (results["help"] == true) return _printUsage(parser, 0);
  final targets = results.rest.isEmpty ? _allPackages.toList() : results.rest;

  final checkResult = await Process.run("dart", ["pub", "global", "list"]);
  if (results["activate"] == true &&
      !checkResult.stdout.toString().contains("dartdoc_test")) {
    print("dartdoc_test is not activated. Activating...");
    final activateResult = await Process.run("dart", [
      "pub",
      "global",
      "activate",
      "dartdoc_test",
    ]);
    if (activateResult.exitCode != 0) {
      stderr.write(activateResult.stderr);
      exit(activateResult.exitCode);
    }
  }

  final targetDirs = <Directory>[];
  final scriptFile = File(Platform.script.toFilePath());
  final repoRoot = scriptFile.parent.parent.parent;
  for (final targetArg in targets) {
    if (!_allPackages.contains(targetArg)) {
      stderr.writeln(
        "Error: Invalid package name '$targetArg'. "
        "It must be one of: ${_allPackages.join(", ")}",
      );
      exit(1);
    }
    Directory? targetFolder;

    final directDir = Directory(targetArg); // 1. Try directly as dir path.
    if (directDir.existsSync()) {
      targetFolder = directDir;
    } else {
      // 2. Try as a package name inside the /packages folder.
      final packagesSubDir = Directory(
        join(repoRoot.path, "packages", targetArg),
      );
      if (packagesSubDir.existsSync()) {
        targetFolder = packagesSubDir;
      }
    }

    if (targetFolder == null) {
      stderr.writeln("Error: Cannot find package directory for '$targetArg'");
      exit(1);
    }

    final pubspec = File(join(targetFolder.path, "pubspec.yaml"));
    if (!pubspec.existsSync()) {
      stderr.writeln(
        "Error: Directory '${targetFolder.path}' is not a Dart package (missing"
        " pubspec.yaml).",
      );
      exit(1);
    }

    targetDirs.add(targetFolder);
  }

  bool overallSuccess = true;
  for (final dir in targetDirs) {
    final relativePath = relative(dir.path, from: repoRoot.path);
    print("Testing documentation in $relativePath...");

    final testResult = await Process.run(
      "dart",
      [
        "pub",
        "global",
        "run",
        "dartdoc_test",
        "--exclude",
        // ignore: avoid-accessing-collections-by-constant-index, it's a tool.
        ?results["exclude"]?.toString(),
      ], // Dart 3.8 formatting.
      workingDirectory: dir.path,
    );

    final out = testResult.stdout.toString();
    final err = testResult.stderr.toString();
    final combinedOutput = out + err;

    final hasErrors =
        combinedOutput.contains(RegExp(r"([1-9]\d*)\s+issues?\s+found")) ||
        (testResult.exitCode != 0 &&
            !combinedOutput.contains("0 issues found") &&
            !combinedOutput.contains("No issues found"));

    if (hasErrors) {
      stdout.write(out);
      stderr.write(err);
      print("✗ $relativePath failed validation.");
      overallSuccess = false;
    } else {
      if (testResult.exitCode == 0) {
        print("✓ $relativePath passed.");
      } else {
        print(
          "✓ $relativePath: dartdoc_test incorrectly reported failure for 0 "
          " issues. Treating as success.",
        );
      }
    }
  }

  if (!overallSuccess) exit(1);
}

// ignore: prefer-static-class, just a tool function, not a library.
void _printUsage(ArgParser parser, int exitCode) {
  stdout
    ..writeln(
      "\nUsage: dart run tools/bin/test_docs.dart [<package_name>] [options]",
    )
    ..writeln("Options:\n${parser.usage}");
  exit(exitCode);
}
