// Driver for the local (desktop) performance runs of the flag list.
//
// Usage from the `example` directory:
// ```
// PERF_RUN=baseline flutter drive --profile -d macos \
//   --driver=test_driver/perf_driver.dart \
//   --target=integration_test/flag_list_perf_test.dart
// ```
// It writes `benchmarks/local/<report key>.<PERF_RUN>.timeline_summary.json`,
// which holds the frame build and rasterizer percentiles to compare runs with.
// The raw timeline is a few megabytes per run and is deliberately not kept.
// The driver half of the local benchmark; it is not a test file.
// ignore_for_file: prefer-static-class, prefer-correct-test-file-name
// ignore_for_file: prefer-extracting-function-callbacks
import "dart:io";

import "package:flutter_driver/flutter_driver.dart";
import "package:integration_test/integration_test_driver.dart";

const _directory = "benchmarks/local";

Future<void> main() => integrationDriver(
  responseDataCallback: (data) async {
    final run = Platform.environment["PERF_RUN"] ?? "run";
    Directory(_directory).createSync(recursive: true);
    for (final entry in (data ?? const <String, Object?>{}).entries) {
      final timeline = entry.value;
      if (timeline is! Map<String, dynamic>) continue;
      final summary = TimelineSummary.summarize(Timeline.fromJson(timeline));
      await summary.writeTimelineToFile(
        "${entry.key}.$run",
        destinationDirectory: _directory,
        pretty: true,
      );
      stdout.writeln(
        "${entry.key}.$run: "
        "build avg ${summary.computeAverageFrameBuildTimeMillis()} ms, "
        "raster avg ${summary.computeAverageFrameRasterizerTimeMillis()} ms, "
        "raster p90 "
        "${summary.computePercentileFrameRasterizerTimeMillis(90)} ms, "
        "raster worst "
        "${summary.computeWorstFrameRasterizerTimeMillis()} ms, "
        "missed ${summary.computeMissedFrameRasterizerBudgetCount()} of "
        "${summary.countFrames()} frames",
      );
    }
  },
);
