// ignore_for_file: prefer-static-class

import "dart:convert";
import "dart:io";

const _fvm = "fvm";
const _flutter = "flutter";
const _bundleId = "world.countries.world_countries_example";
const _apkPath = "build/app/outputs/apk/profile";
const _apkFile = "app-arm64-v8a-profile.apk";
const _directory = "benchmarks";

Future<void> main() async {
  final stopwatch = Stopwatch()..start();
  _logStep("Starting benchmark workflow!");
  try {
    final deviceId = await _findAndroidDevice();
    await _cleanProject();
    await _buildApk();
    await _installApk(deviceId);
    final timestamp = DateTime.now().toUtc().millisecondsSinceEpoch;
    final version = _handleMetadata(timestamp);
    await _runBenchmark(version);
    await _generateReport(version, timestamp);
  } on Exception catch (error) {
    _logError("Benchmark failed: $error");
    rethrow;
  } finally {
    stopwatch.stop();
    _logInfo("Total benchmark time: ${stopwatch.elapsed}");
  }
}

Future<void> _cleanProject() async {
  _logStep("Cleaning project...");
  await _runCommand(["clean"]);
}

Future<void> _buildApk() async {
  _logStep("Building profile APK for ARM64 with FVM defined channel...");
  await _runCommand([
    "build",
    "apk",
    "--profile",
    "--target-platform=android-arm64",
    "--split-per-abi",
  ]);
}

Future<String> _findAndroidDevice() async {
  _logStep("Finding connected Android ARM64 device...");
  final result = await Process.run(_fvm, [_flutter, "devices", "--machine"]);
  if (result.exitCode != 0) throw Exception("No devices: ${result.stderr}");

  final outputJson = jsonDecode(result.stdout.toString());
  if (outputJson is! List) throw Exception("Failed parse output from devices!");

  // Parse each line as a separate JSON object.
  for (final i in outputJson.cast<Map<String, dynamic>>()) {
    if (i["targetPlatform"] == "android-arm64" && i["emulator"] == false) {
      final deviceId = i["id"]?.toString() ?? "";
      _logInfo("Found device: $deviceId");

      return deviceId;
    }
  }

  throw Exception("No physical Android device! Connect a device and try again");
}

Future<void> _installApk(String deviceId) async {
  _logStep("Installing APK to device $deviceId...");
  const apkPath = "$_apkPath/$_apkFile";
  if (!File(apkPath).existsSync()) throw Exception("No APK file at: $apkPath");

  await _runCommand([
    "install",
    "--profile",
    "-d",
    deviceId,
    "--use-application-binary=$apkPath",
  ]);
}

String _handleMetadata(int timestamp) {
  final file = File("$_apkPath/output-metadata.json");
  final jsonString = file.readAsStringSync();
  final json = jsonDecode(jsonString);

  // ignore: avoid_dynamic_calls, nature of json decode.
  final version = json["elements"].first["versionName"]?.toString();
  if (version == null || version.isEmpty) {
    throw Exception("Failed to extract version from metadata JSON!");
  }
  _logInfo("Extracted version: $version");

  final prettyJson = const JsonEncoder.withIndent("  ").convert(json);
  file.writeAsStringSync(prettyJson);
  _logInfo("JSON formatted successfully!");

  final benchmarksDir = Directory(_directory);
  if (!benchmarksDir.existsSync()) benchmarksDir.createSync(recursive: true);

  final resultFile = File("$_directory/metadata_${version}_$timestamp.json")
    ..writeAsStringSync(prettyJson);
  _logInfo("Metadata copied to: ${resultFile.path}");

  return version;
}

Future<void> _runBenchmark(String version) async {
  _logStep("Running Flashlight benchmark...");
  final directory = Directory(_directory);

  await _runCommand(
    executable: "flashlight",
    [
      "test",
      "--bundleId",
      _bundleId,
      "--testCommand",
      "maestro test test.yaml",
      "--beforeEachCommand",
      "maestro test setup.yaml",
      "--resultsTitle",
      version,
      // "--iterationCount", // ignore: avoid-unused-ignores
      // "1".
    ],
    workingDirectory: directory.path, // Dart 3.8. formatting.
  );
}

Future<void> _generateReport(String version, int timestamp) async {
  _logStep("Preparing report files...");
  final benchmarksDir = Directory(_directory);
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
    throw Exception("No JSON file found starts with '$version' in $_directory");
  }

  final originalFile = jsonFiles.first;
  final newPath = "$_directory/result_${version}_$timestamp.json";
  originalFile.renameSync(newPath);
  _logInfo("Renamed ${originalFile.path} to $newPath");

  _logStep("Generating Flashlight report...");
  const command = "flashlight report result_*.json";
  final shell = Platform.isWindows ? "cmd" : "sh";
  final shellArg = Platform.isWindows ? "/c" : "-c";

  await _runCommand(
    [shellArg, command],
    executable: shell,
    workingDirectory: _directory,
  );
  _logInfo("Report generated in $_directory folder");
  _logSuccess("Benchmark completed successfully!");
}

Future<void> _runCommand(
  List<String> arguments, {
  String executable = _fvm,
  String? workingDirectory,
}) async {
  final process = await Process.start(
    executable,
    executable == _fvm ? [_flutter, ...arguments] : arguments,
    workingDirectory: workingDirectory,
    mode: ProcessStartMode.inheritStdio,
  );

  final exitCode = await process.exitCode;
  if (exitCode == 0) return;
  throw Exception("$executable ${arguments.join(' ')} exited with: $exitCode");
}

// ignore_for_file: avoid-non-ascii-symbols
void _logError(String message) => stderr.writeln("\n❌ $message");
void _logInfo(String message) => stdout.writeln("ℹ️ $message");
void _logStep(String message) => stdout.writeln("\n🔄 $message");
void _logSuccess(String message) => stdout.writeln("\n✅ $message");
