// ignore_for_file: prefer-static-class, avoid-long-functions,
// ignore_for_file: prefer-class-destructuring, avoid-type-casts

import "dart:io";

import "package:args/args.dart";
import "package:cli/benchmarks/benchmark_config.dart";
import "package:cli/benchmarks/benchmark_registry.dart";
import "package:cli/benchmarks/benchmark_runner.dart";

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

  final help = results["help"];

  // ignore: avoid-returning-void, just a CLI tool.
  if (help is bool && help) return _printUsage(parser);

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
        "Provide a known benchmark key or specify --example to "
        "locate the project.",
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
    help:
        "Flashlight --beforeEachCommand value, set to empty string to disable",
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

  // ignore: avoid-local-functions, it's a CLI tool.
  String? maybeOption(String name) =>
      results.wasParsed(name) ? results[name]?.toString() : null;

  // ignore: avoid-local-functions, it's a CLI tool.
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

// ignore: avoid-non-ascii-symbols, just a CLI tool.
void _printError(String message) => stderr.writeln("❌ $message");
