// ignore_for_file: avoid-non-ascii-symbols

import "dart:convert";
import "dart:io";

import "package:path/path.dart" as p;

import "benchmark_config.dart";

/// Runs the benchmark workflow for a configured example project.
final class BenchmarkRunner {
  BenchmarkRunner({
    required this.config,
    this.verbose = false,
    this.dryRun = false,
    DateTime Function()? now,
  }) : _now = now ?? DateTime.now,
       _root = _resolveRoot(Directory.current.path, config.examplePath);

  final BenchmarkConfig config;
  final bool verbose;
  final bool dryRun;
  final String _root;
  // ignore: prefer-correct-callback-field-name, just a CLI tool.
  final DateTime Function() _now;
  final _stopwatch = Stopwatch();

  Future<void> run() async {
    _stopwatch.start();
    _logStep("Starting benchmark workflow!");

    try {
      final deviceId = await _findDevice();
      await _cleanProject();
      await _buildApk();
      await _installApk(deviceId);
      final timestamp = _now().toUtc().millisecondsSinceEpoch;
      final version = _handleMetadata(timestamp);
      await _runBenchmark(version);
      await _generateReport(version, timestamp);
    } on Exception catch (error) {
      _logError("Benchmark failed: $error");
      rethrow;
    } finally {
      _stopwatch.stop();
      _logInfo("Total benchmark time: ${_stopwatch.elapsed}");
    }
  }

  Future<String> _findDevice() async {
    _logStep("Finding connected ${config.targetPlatform} device...");
    if (dryRun) return "dry-run-device";

    final args = [config.flutterExecutable, "devices", "--machine"];
    final result = await Process.run(
      config.flutterWrapperExecutable ?? config.flutterExecutable,
      config.flutterWrapperExecutable == null ? args.sublist(1) : args,
      workingDirectory: _exampleDirectory,
    );
    if (result.exitCode != 0) throw Exception("No devices: ${result.stderr}");

    final decoded = jsonDecode(result.stdout.toString());
    if (decoded is! List) throw Exception("Failed to parse output from device");

    for (final entry in decoded.cast<Map<String, dynamic>>()) {
      final platform = entry["targetPlatform"]?.toString();
      final isEmulator = entry["emulator"] == true;
      if (platform != config.targetPlatform) continue;
      if (isEmulator && config.requirePhysicalDevice) continue;

      final deviceId = entry["id"]?.toString();
      if (deviceId == null || deviceId.isEmpty) continue;
      _logInfo("Found device: $deviceId");

      return deviceId;
    }

    throw Exception(
      config.requirePhysicalDevice
          ? "No physical ${config.targetPlatform} device found"
          : "No ${config.targetPlatform} device found",
    );
  }

  Future<void> _cleanProject() async {
    _logStep("Cleaning project...");
    if (!dryRun) await _runFlutterCommand(config.cleanArguments);
  }

  Future<void> _buildApk() async {
    _logStep("Building APK with Flutter...");
    if (!dryRun) await _runFlutterCommand(config.buildArguments);
  }

  Future<void> _installApk(String deviceId) async {
    _logStep("Installing APK to device $deviceId...");
    if (dryRun) return;
    final apkPath = config.apkPath(_root);
    if (!File(apkPath).existsSync()) throw Exception("No APK file at $apkPath");

    final args = [
      ...config.installArgumentsPrefix,
      "-d",
      deviceId,
      "--use-application-binary=$apkPath",
    ];

    await _runFlutterCommand(args);
  }

  String _handleMetadata(int timestamp) {
    _logStep("Processing output metadata...");
    if (dryRun) return "dry-run";

    final metadataFile = File(config.metadataPath(_root));
    if (!metadataFile.existsSync()) {
      throw Exception("Missing metadata: ${metadataFile.path}");
    }

    final jsonString = metadataFile.readAsStringSync();
    final json = jsonDecode(jsonString);
    if (json is! Map<String, dynamic>) {
      throw Exception("Metadata JSON must be an object");
    }

    final elements = json["elements"];
    if (elements is! List || elements.isEmpty) {
      throw Exception("Metadata JSON is missing elements");
    }

    // ignore: avoid_dynamic_calls, it's a CLI tool.
    final version = elements.first["versionName"]?.toString();
    if (version == null || version.isEmpty) {
      throw Exception("Failed to extract version from metadata JSON");
    }
    _logInfo("Extracted version: $version");

    final prettyJson = const JsonEncoder.withIndent("  ").convert(json);
    metadataFile.writeAsStringSync(prettyJson);
    _logInfo("JSON formatted successfully!");

    final benchmarksDir = Directory(config.benchmarksPath(_root));
    if (!benchmarksDir.existsSync()) benchmarksDir.createSync(recursive: true);

    final metadataCopy = File(
      p.join(
        benchmarksDir.path,
        "${config.metadataPrefix}_${version}_$timestamp.json",
      ),
    )..writeAsStringSync(prettyJson);

    _logInfo("Metadata copied to: ${metadataCopy.path}");

    return version;
  }

  Future<void> _runBenchmark(String version) async {
    _logStep("Running Flashlight benchmark...");
    if (dryRun) return;

    final benchmarksDir = Directory(config.benchmarksPath(_root));
    final args = [
      "test",
      "--bundleId",
      config.bundleId,
      "--testCommand",
      config.testCommand,
      ..._maybeBeforeEachArgs,
      "--resultsTitle",
      version,
      ...config.additionalFlashlightArguments,
    ];

    await _runCommand(
      args,
      executable: config.flashlightExecutable,
      workingDirectory: benchmarksDir.path,
    );
  }

  Future<void> _generateReport(String version, int timestamp) async {
    _logStep("Generating Flashlight report...");
    if (dryRun) return;

    final benchmarksDir = Directory(config.benchmarksPath(_root));
    final jsonFiles = benchmarksDir
        .listSync()
        .whereType<File>()
        .where(
          (file) =>
              file.path.endsWith(".json") &&
              file.uri.pathSegments.last.startsWith(version),
        )
        .toList();

    if (jsonFiles.isEmpty) {
      throw Exception(
        "No JSON file found starting with '$version' in ${benchmarksDir.path}",
      );
    }

    final originalFile = jsonFiles.first;
    final renamed = p.join(
      benchmarksDir.path,
      "${config.resultPrefix}_${version}_$timestamp.json",
    );
    originalFile.renameSync(renamed);
    _logInfo("Renamed ${originalFile.path} to $renamed");

    final shell = Platform.isWindows ? "cmd" : "sh";
    final shellArg = Platform.isWindows ? "/c" : "-c";
    final command =
        "${config.flashlightExecutable} report ${config.reportPattern}";

    await _runCommand(
      [shellArg, command],
      executable: shell,
      workingDirectory: benchmarksDir.path,
    );

    _logInfo("Report generated in ${benchmarksDir.path}");
    _logSuccess("Benchmark completed successfully!");
  }

  List<String> get _maybeBeforeEachArgs {
    final cmd = config.beforeEachCommand;
    if (cmd == null || cmd.isEmpty) return const [];

    return ["--beforeEachCommand", cmd];
  }

  Future<void> _runFlutterCommand(List<String> args) async {
    await _runCommand(
      config.flutterWrapperExecutable == null
          ? args
          : [config.flutterExecutable, ...args],
      executable: config.flutterWrapperExecutable ?? config.flutterExecutable,
      workingDirectory: _exampleDirectory,
    );
  }

  Future<void> _runCommand(
    List<String> arguments, {
    required String executable,
    required String workingDirectory,
  }) async {
    if (verbose) {
      final cwd = " (cwd: $workingDirectory)";
      _logInfo("Running: $executable ${arguments.join(' ')}$cwd");
    }
    if (dryRun) return;

    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      mode: ProcessStartMode.inheritStdio,
    );

    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      throw Exception(
        "$executable ${arguments.join(' ')} exited with: $exitCode",
      );
    }
  }

  static void _logError(String message) => stderr.writeln("\n❌ $message");

  static void _logInfo(String message) => stdout.writeln("ℹ️ $message");

  static void _logStep(String message) => stdout.writeln("\n🔄 $message");

  static void _logSuccess(String message) => stdout.writeln("\n✅ $message");

  String get _exampleDirectory =>
      p.normalize(p.join(_root, config.examplePath));

  static String _resolveRoot(String start, String examplePath) {
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
}
