// ignore_for_file: prefer-static-class, avoid-type-casts, avoid-local-functions
// ignore_for_file: prefer-class-destructuring, avoid-long-functions,

import "dart:io";

import "package:args/args.dart";
import "package:cli/benchmarks/benchmark_config.dart";
import "package:cli/benchmarks/benchmark_registry.dart";
import "package:cli/benchmarks/benchmark_runner.dart";
import "package:path/path.dart" as p;

Future<void> main(List<String> args) async {
  final parser = _buildParser();
  final ArgResults results;

  try {
    results = parser.parse(args);
  } on ArgParserException catch (error) {
    _printError(error.message);
    _printUsage(parser);
    exitCode = 64;

    return;
  }

  if (results["help"] == true) {
    _printUsage(parser);

    return;
  }

  final key = results.rest.isNotEmpty ? results.rest.first : null;
  BenchmarkConfig? config = key == null
      ? null
      : BenchmarkRegistry.maybeConfig(key);

  String? examplePath;
  String? bundleId;

  if (results.wasParsed("example")) {
    examplePath = results["example"]?.toString();
  }
  if (results.wasParsed("bundle-id")) {
    bundleId = results["bundle-id"]?.toString();
  }

  if (config == null) {
    if (examplePath == null || examplePath.isEmpty) {
      _printError(
        "Provide a known benchmark key or specify --example "
        "to locate the project.",
      );
      _printUsage(parser);
      exitCode = 64;

      return;
    }
    if (bundleId == null || bundleId.isEmpty) {
      _printError(
        "Provide a known benchmark key or specify --bundle-id for Flashlight.",
      );
      _printUsage(parser);
      exitCode = 64;

      return;
    }

    config = BenchmarkConfig(examplePath: examplePath, bundleId: bundleId);
  }

  config = _applyOverrides(config, results);
  final allowEmulator = results["allow-emulator"] as bool;
  config = config.copyWith(requirePhysicalDevice: !allowEmulator);

  final verbose = results["verbose"] as bool;
  final dryRun = results["dry-run"] as bool;

  if (results["cloud"] as bool) {
    final apiKey = results.wasParsed("api-key")
        ? results["api-key"]?.toString()
        : null;
    await _runCloudBenchmark(
      config,
      verbose: verbose,
      dryRun: dryRun,
      apiKey: apiKey,
    );

    return;
  }

  final runner = BenchmarkRunner(
    config: config,
    verbose: verbose,
    dryRun: dryRun,
  );

  await runner.run();
}

// ignore: avoid-returning-cascades, just a CLI tool.
ArgParser _buildParser() => ArgParser()
  ..addFlag("help", abbr: "h", negatable: false, help: "Show usage info")
  ..addFlag(
    "cloud",
    abbr: "c",
    negatable: false,
    help: "Upload APK to Flashlight Cloud instead of running locally",
  )
  ..addOption(
    "api-key",
    abbr: "k",
    help: "Flashlight API key (or set FLASHLIGHT_API_KEY env var)",
  )
  ..addOption(
    "example",
    abbr: "e",
    help: "Path to the example project (repo-relative).",
  )
  ..addOption(
    "bundle-id",
    abbr: "b",
    help: "Bundle identifier passed to Flashlight.",
  )
  ..addOption("benchmarks", help: "Benchmarks directory relative to example")
  ..addOption(
    "apk-dir",
    help: "Directory containing APK outputs (relative to example).",
  )
  ..addOption("apk-file", help: "APK file name produced by the build step")
  ..addOption(
    "metadata-file",
    help: "Name of the Gradle output metadata JSON file.",
  )
  ..addOption(
    "metadata-prefix",
    help: "Prefix used when copying metadata artifacts.",
  )
  ..addOption(
    "result-prefix",
    help: "Prefix used when renaming Flashlight results.",
  )
  ..addOption(
    "target-platform",
    help: "Required Flutter device target platform (default android-arm64).",
  )
  ..addFlag(
    "allow-emulator",
    help: "Allow emulator devices (defaults to physical-only).",
  )
  ..addOption(
    "flutter-wrapper",
    help: "Wrapper executable used to invoke flutter (e.g. fvm).",
  )
  ..addOption(
    "flutter",
    help: "Flutter executable when no wrapper is supplied.",
  )
  ..addOption("flashlight", help: "Flashlight CLI executable name.")
  ..addOption(
    "maestro",
    help: "Maestro CLI executable name used inside Flashlight commands.",
  )
  ..addMultiOption(
    "build-arg",
    help: "Override build arguments passed to flutter (include 'build').",
  )
  ..addMultiOption(
    "clean-arg",
    help: "Override clean arguments passed to flutter.",
  )
  ..addMultiOption(
    "install-prefix",
    help: "Override prefix arguments for flutter install before device flags.",
  )
  ..addOption(
    "test-command",
    help: "Flashlight --testCommand value (default: maestro test test.yaml).",
  )
  ..addOption(
    "before-each",
    help: "Flashlight --beforeEachCommand value, empty string disables it.",
  )
  ..addMultiOption(
    "flashlight-arg",
    help: "Additional arguments appended to the Flashlight invocation.",
  )
  ..addOption(
    "report-pattern",
    help: "Glob passed to the report command (default: result_*.json).",
  )
  ..addFlag("verbose", help: "Print executed commands.")
  ..addFlag("dry-run", help: "Skip all external commands.");

BenchmarkConfig _applyOverrides(BenchmarkConfig config, ArgResults results) {
  BenchmarkConfig updated = config;

  String? maybeOption(String name) =>
      results.wasParsed(name) ? results[name]?.toString() : null;
  List<String>? maybeList(String name) =>
      results.wasParsed(name) ? List<String>.from(results[name] as List) : null;

  final exampleOverride = maybeOption("example");
  final bundleIdOverride = maybeOption("bundle-id");
  final benchmarksDir = maybeOption("benchmarks");
  final apkDir = maybeOption("apk-dir");
  final apkFile = maybeOption("apk-file");
  final metadataFile = maybeOption("metadata-file");
  final metadataPrefix = maybeOption("metadata-prefix");
  final resultPrefix = maybeOption("result-prefix");
  final targetPlatform = maybeOption("target-platform");
  final flutterWrapper = maybeOption("flutter-wrapper");
  final flutterExecutable = maybeOption("flutter");
  final flashlightExecutable = maybeOption("flashlight");
  final maestroExecutable = maybeOption("maestro");
  final testCommand = maybeOption("test-command");
  final beforeEach = maybeOption("before-each");
  final reportPattern = maybeOption("report-pattern");
  final buildArgs = maybeList("build-arg");
  final cleanArgs = maybeList("clean-arg");
  final installPrefix = maybeList("install-prefix");
  final flashlightArgs = maybeList("flashlight-arg");

  return updated = updated.copyWith(
    examplePath: exampleOverride ?? updated.examplePath,
    bundleId: bundleIdOverride ?? updated.bundleId,
    benchmarksDirectory: benchmarksDir ?? updated.benchmarksDirectory,
    apkDirectory: apkDir ?? updated.apkDirectory,
    apkFileName: apkFile ?? updated.apkFileName,
    metadataFileName: metadataFile ?? updated.metadataFileName,
    metadataPrefix: metadataPrefix ?? updated.metadataPrefix,
    resultPrefix: resultPrefix ?? updated.resultPrefix,
    targetPlatform: targetPlatform ?? updated.targetPlatform,
    flutterWrapperExecutable: flutterWrapper,
    flutterExecutable: flutterExecutable ?? updated.flutterExecutable,
    flashlightExecutable: flashlightExecutable ?? updated.flashlightExecutable,
    maestroExecutable: maestroExecutable ?? updated.maestroExecutable,
    testCommand: testCommand ?? updated.testCommand,
    beforeEachCommand: beforeEach ?? updated.beforeEachCommand,
    reportPattern: reportPattern ?? updated.reportPattern,
    buildArguments: buildArgs ?? updated.buildArguments,
    cleanArguments: cleanArgs ?? updated.cleanArguments,
    installArgumentsPrefix: installPrefix ?? updated.installArgumentsPrefix,
    additionalFlashlightArguments:
        flashlightArgs ?? updated.additionalFlashlightArguments,
  );
}

void _printUsage(ArgParser parser) {
  final targets = BenchmarkRegistry.keys.toList(growable: false);
  stdout
    ..writeln("Usage:")
    ..writeln("  dart run tools/bin/benchmarks.dart <target?> [options]")
    ..writeln("  cd tools && dart run :benchmarks <target?> [options]")
    ..writeln();
  if (targets.isNotEmpty) {
    stdout
      ..writeln("Targets: ${targets.join(', ')}")
      ..writeln();
  }
  stdout.writeln(parser.usage);
}

void _printError(String message) => stderr.writeln("ERROR: $message");

Future<void> _runCloudBenchmark(
  BenchmarkConfig config, {
  required bool verbose,
  required bool dryRun,
  String? apiKey,
}) async {
  final key = apiKey ?? Platform.environment["FLASHLIGHT_API_KEY"];
  if (key == null || key.isEmpty) {
    _printError(
      "Flashlight API key not provided. Pass --api-key or "
      "export FLASHLIGHT_API_KEY.",
    );
    exitCode = 1;

    return;
  }

  final root = _resolveRoot(Directory.current.path, config.examplePath);
  final exampleDir = p.normalize(p.join(root, config.examplePath));
  final apkPath = config.apkPath(root);
  final benchmarksPath = config.benchmarksPath(root);

  if (!Directory(exampleDir).existsSync()) {
    _printError("Example directory not found: $exampleDir");
    exitCode = 1;

    return;
  }

  Future<void> ensureApk() async {
    if (File(apkPath).existsSync()) return;

    stdout.writeln("\nBuilding APK (clean + build)...");
    await _runFlutterCommand(
      config,
      config.cleanArguments,
      exampleDir,
      verbose: verbose,
      dryRun: dryRun,
    );
    await _runFlutterCommand(
      config,
      config.buildArguments,
      exampleDir,
      verbose: verbose,
      dryRun: dryRun,
    );

    if (!dryRun && !File(apkPath).existsSync()) {
      final apkDir = Directory(p.dirname(apkPath));
      if (apkDir.existsSync()) {
        final files = apkDir
            .listSync()
            .map((entry) => p.basename(entry.path))
            .join(", ");
        _printError(
          "Build finished but APK not found at $apkPath. Files: $files",
        );
      } else {
        _printError("Build finished but APK directory missing: ${apkDir.path}");
      }
      exitCode = 1;
      throw StateError("APK not produced");
    }
  }

  try {
    await ensureApk();
  } on Object {
    if (exitCode == 0) exitCode = 1;

    return;
  }

  stdout.writeln("\nRunning Flashlight Cloud...");
  final args = <String>[
    "cloud",
    "--apiKey",
    key,
    "--app",
    apkPath,
    "--test",
    "test.yaml",
    "--beforeAll",
    "setup.yaml",
    ...config.additionalFlashlightArguments,
  ];

  if (dryRun || verbose) {
    stdout.writeln(
      "${config.flashlightExecutable} ${args.join(' ')} (cwd: $benchmarksPath)",
    );
  }

  if (dryRun) return;

  final process = await Process.start(
    config.flashlightExecutable,
    args,
    workingDirectory: benchmarksPath,
    mode: ProcessStartMode.inheritStdio,
  );

  final exit = await process.exitCode;
  if (exit != 0) {
    _printError("Flashlight Cloud failed with exit code $exit");

    return;
  }

  stdout.writeln("\nFlashlight Cloud benchmark completed.");
}

String _resolveRoot(String start, String examplePath) {
  if (p.isAbsolute(examplePath)) return "";

  Directory dir = Directory(start);
  while (true) {
    final candidate = Directory(p.join(dir.path, examplePath));
    if (candidate.existsSync()) return p.normalize(dir.path);

    final parent = dir.parent;
    if (parent.path == dir.path) {
      throw StateError(
        "Unable to locate example path '$examplePath' from '$start'",
      );
    }
    dir = parent;
  }
}

Future<void> _runFlutterCommand(
  BenchmarkConfig config,
  List<String> args,
  String workingDirectory, {
  required bool verbose,
  required bool dryRun,
}) async {
  final executable =
      config.flutterWrapperExecutable ?? config.flutterExecutable;
  final arguments = config.flutterWrapperExecutable == null
      ? args
      : [config.flutterExecutable, ...args];

  if (dryRun || verbose) {
    stdout.writeln(
      "$executable ${arguments.join(' ')} (cwd: $workingDirectory)",
    );
  }

  if (dryRun) return;

  final process = await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    mode: ProcessStartMode.inheritStdio,
  );

  final exit = await process.exitCode;
  if (exit != 0) {
    _printError(
      "$executable ${arguments.join(' ')} failed with exit code $exit",
    );
    exitCode = exit;
    throw StateError("Flutter command failed");
  }
}
