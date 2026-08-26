// ignore_for_file: avoid_print, avoid-returning-void, avoid-long-functions
import "package:args/args.dart";
import "package:cli/utils/io_utils.dart";

// ignore: prefer-static-class, it's just a tool not a library.
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

    final writeResult = await Process.run(
      "dart",
      [
        "pub",
        "global",
        "run",
        "dartdoc_test",
        "--write",
        "--exclude",
        // ignore: avoid-accessing-collections-by-constant-index, it's a tool.
        ?results["exclude"]?.toString(),
      ], // Dart 3.8 formatting.
      workingDirectory: dir.path,
    );

    final testDir = Directory(join(dir.path, ".dart_tool", "dartdoc_test"));
    if (writeResult.exitCode != 0 || !testDir.existsSync()) {
      stderr.write(writeResult.stderr);
      print("✗ $relativePath failed validation.");
      overallSuccess = false;

      continue;
    }

    // Unescape HTML entities that dartdoc_test 0.1.0 produces in code blocks.
    for (final file in testDir.listSync().whereType<File>()) {
      file.writeAsStringSync(
        file
            .readAsStringSync()
            .replaceAll("&gt;", ">")
            .replaceAll("&lt;", "<")
            .replaceAll("&quot;", '"')
            .replaceAll("&amp;", "&")
            .replaceAll("&#x27;", "'")
            .replaceAll("&#39;", "'"),
      );
    }

    File(join(repoRoot.path, "packages", "dartdoc_test_analysis_options.yaml"))
        .copySync(join(testDir.path, "analysis_options.yaml"));

    final testResult = await Process.run(
      "dart",
      ["analyze", join(".dart_tool", "dartdoc_test")],
      workingDirectory: dir.path, // Dart 3.8 formatting.
    );

    final out = testResult.stdout.toString();
    final err = testResult.stderr.toString();
    final combinedOutput = out + err;

    final hasErrors =
        testResult.exitCode != 0 && !combinedOutput.contains("No issues found");

    if (hasErrors) {
      stdout.write(out);
      stderr.write(err);
      print("✗ $relativePath failed validation.");
      overallSuccess = false;
    } else {
      print("✓ $relativePath passed.");
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
