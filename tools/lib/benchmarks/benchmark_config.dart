import "package:path/path.dart" as p;

/// Immutable configuration describing a benchmark target.
final class BenchmarkConfig {
  const BenchmarkConfig({
    required this.examplePath,
    required this.bundleId,
    this.apkDirectory = "build/app/outputs/apk/profile",
    this.apkFileName = "app-arm64-v8a-profile.apk",
    this.benchmarksDirectory = "benchmarks",
    this.metadataFileName = "output-metadata.json",
    this.metadataPrefix = "metadata",
    this.resultPrefix = "result",
    this.targetPlatform = "android-arm64",
    this.requirePhysicalDevice = true,
    this.flutterWrapperExecutable = "fvm",
    this.flutterExecutable = "flutter",
    this.flashlightExecutable = "flashlight",
    this.maestroExecutable = "maestro",
    this.buildArguments = const [
      "build",
      "apk",
      "--profile",
      "--dart-define=l10n-en=true",
      "--target-platform=android-arm64",
      "--split-per-abi",
    ],
    this.cleanArguments = const ["clean"],
    this.installArgumentsPrefix = const ["install", "--profile"],
    this.testCommand = "maestro test test.yaml",
    this.beforeEachCommand = "maestro test setup.yaml",
    this.additionalFlashlightArguments = const [],
    this.reportPattern = "result_*.json",
  });

  /// Relative path to the Flutter example project.
  final String examplePath;

  /// Bundle identifier used when executing Flashlight benchmarks.
  final String bundleId;

  /// Directory (relative to [examplePath]) containing generated APKs.
  final String apkDirectory;

  /// APK file name expected after the build step completes.
  final String apkFileName;

  /// Directory (relative to [examplePath]) where benchmark artifacts live.
  final String benchmarksDirectory;

  /// Name of the Gradle output metadata file produced during the build.
  final String metadataFileName;

  /// Prefix applied to copied metadata JSON artifacts.
  final String metadataPrefix;

  /// Prefix applied to Flashlight result JSON files.
  final String resultPrefix;

  /// Flutter target platform required from `flutter devices --machine`.
  final String targetPlatform;

  /// Whether the workflow must run on a physical device instead of emulator.
  final bool requirePhysicalDevice;

  /// Optional wrapper command (e.g., `fvm`) used to invoke Flutter.
  final String? flutterWrapperExecutable;

  /// Flutter binary name when no wrapper is supplied.
  final String flutterExecutable;

  /// Flashlight CLI executable name.
  final String flashlightExecutable;

  /// Maestro CLI executable name.
  final String maestroExecutable;

  /// Arguments passed to `flutter` for the build step.
  final List<String> buildArguments;

  /// Arguments passed to `flutter` for the clean step.
  final List<String> cleanArguments;

  /// Initial arguments for the install step, before device specific flags.
  final List<String> installArgumentsPrefix;

  /// Command string forwarded to Flashlight's `--testCommand` flag.
  final String testCommand;

  /// Optional command string forwarded to Flashlight's `--beforeEachCommand`.
  final String? beforeEachCommand;

  /// Extra arguments appended to the Flashlight invocation.
  final List<String> additionalFlashlightArguments;

  /// Glob pattern consumed by the report generator to summarize results.
  final String reportPattern;

  /// Resolves the absolute path to the benchmarks directory.
  String benchmarksPath(String root) =>
      p.normalize(p.join(root, examplePath, benchmarksDirectory));

  /// Resolves the absolute path to the APK location.
  String apkPath(String root) =>
      p.normalize(p.join(root, examplePath, apkDirectory, apkFileName));

  /// Resolves the absolute path to the metadata file.
  String metadataPath(String root) =>
      p.normalize(p.join(root, examplePath, apkDirectory, metadataFileName));

  /// Creates a copy of this configuration with override values.
  BenchmarkConfig copyWith({
    String? examplePath,
    String? bundleId,
    String? apkDirectory,
    String? apkFileName,
    String? benchmarksDirectory,
    String? metadataFileName,
    String? metadataPrefix,
    String? resultPrefix,
    String? targetPlatform,
    bool? requirePhysicalDevice,
    String? flutterWrapperExecutable,
    String? flutterExecutable,
    String? flashlightExecutable,
    String? maestroExecutable,
    List<String>? buildArguments,
    List<String>? cleanArguments,
    List<String>? installArgumentsPrefix,
    String? testCommand,
    String? beforeEachCommand,
    List<String>? additionalFlashlightArguments,
    String? reportPattern,
  }) => BenchmarkConfig(
    examplePath: examplePath ?? this.examplePath,
    bundleId: bundleId ?? this.bundleId,
    apkDirectory: apkDirectory ?? this.apkDirectory,
    apkFileName: apkFileName ?? this.apkFileName,
    benchmarksDirectory: benchmarksDirectory ?? this.benchmarksDirectory,
    metadataFileName: metadataFileName ?? this.metadataFileName,
    metadataPrefix: metadataPrefix ?? this.metadataPrefix,
    resultPrefix: resultPrefix ?? this.resultPrefix,
    targetPlatform: targetPlatform ?? this.targetPlatform,
    requirePhysicalDevice: requirePhysicalDevice ?? this.requirePhysicalDevice,
    flutterWrapperExecutable: flutterWrapperExecutable == null
        ? this.flutterWrapperExecutable
        : flutterWrapperExecutable.isEmpty
        ? null
        : flutterWrapperExecutable,
    flutterExecutable: flutterExecutable ?? this.flutterExecutable,
    flashlightExecutable: flashlightExecutable ?? this.flashlightExecutable,
    maestroExecutable: maestroExecutable ?? this.maestroExecutable,
    buildArguments: buildArguments ?? this.buildArguments,
    cleanArguments: cleanArguments ?? this.cleanArguments,
    installArgumentsPrefix:
        installArgumentsPrefix ?? this.installArgumentsPrefix,
    testCommand: testCommand ?? this.testCommand,
    beforeEachCommand: beforeEachCommand == null
        ? this.beforeEachCommand
        : beforeEachCommand.isEmpty
        ? null
        : beforeEachCommand,
    additionalFlashlightArguments:
        additionalFlashlightArguments ?? this.additionalFlashlightArguments,
    reportPattern: reportPattern ?? this.reportPattern,
  );
}
