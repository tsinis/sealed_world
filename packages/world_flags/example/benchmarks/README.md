# Benchmark & Regression Verification

## 1. What

This benchmark workflow produces immutable JSON artifacts for each release of the `world_flags` package:

- Build metadata (APK size, toolchain, Android configuration).
- Runtime metrics gathered from automated device-driven interactions.

Artifacts are stored alongside releases to enable historical comparison and regression detection.

## 2. Why

Flag rendering relies on shader warm-up, animation tuning, and precise widget layout. Changes to the package or its dependencies may:

- Increase binary size.
- Regress launch or frame performance.
- Alter the interactive shader configuration flow.

Capturing structured metrics per version ensures regressions are detected early and reproducibly.

## 3. How (Workflow Overview)

1. Connect a physical **low-end Android ARM64** device.
2. Build a profile APK via `fvm flutter build apk --profile --target-platform=android-arm64 --split-per-abi`.
3. Copy augmented Gradle metadata (from `output-metadata.json`) with bundle size and tooling versions.
4. Execute the automated Maestro flow with Flashlight:
   - `setup.yaml` launches the example, waits for stabilization, and confirms the main list.
   - `test.yaml` opens the first flag settings page and scrolls through shader controls.
5. Persist Flashlight JSON results and formatted metadata with immutable timestamps.
6. Generate a Flashlight report for quick inspection.

## 4. Artifacts

| File                                | Description                         |
| ----------------------------------- | ----------------------------------- |
| metadata*{version}*{timestamp}.json | Build + environment + size metadata |
| result*{version}*{timestamp}.json   | Runtime benchmark metrics           |

Timestamps are UTC milliseconds since epoch.

## 5. Running Locally

Prerequisites:

- Flutter (with Android toolchain) + [FVM](https://fvm.app/) matching the repository setup.
- [Maestro](https://docs.maestro.dev/getting-started/installing-maestro) and [Flashlight](https://docs.flashlight.dev/) CLIs installed.
- A physical **Android ARM64** device with USB debugging enabled.

Command (repository root):

```sh
dart run tools/bin/benchmarks.dart world_flags
```

Or from the CLI package:

```sh
cd tools && dart run :benchmarks world_flags
```

Use `dart run tools/bin/benchmarks.dart --help` for overrides (custom bundle IDs, alternate APK names, dry runs, verbose logging, etc.).

Outputs are written to:

```sh
packages/world_flags/example/benchmarks/
```

## 6. Scenario Summary

The automated flow performs the following steps:

1. Launches the example app and waits two seconds to allow shader warm-up.
2. Verifies the countries list is visible.
3. Taps the first item on the flag list to open the flag settings page.
4. Scrolls through the shader controls until `Wave Direction` and `Other` sections are visible.

This sequence exercises the shader preview, configuration sliders, and general list performance.

## 7. Reproducibility Tips

- Keep the device charged (> 80%) and thermally cool.
- Close background applications before running the benchmark.
- Maintain consistent brightness and network conditions.
- Use the same physical device model for longitudinal comparisons.

## 8. Inspecting Results

Inside `example/benchmarks`:

```sh
flashlight report result_*.json
```

Compare artifacts between versions for size or performance regressions (e.g., `jq` comparisons of key metrics).

## 9. Release Guidance

Include both metadata and result JSON files when publishing releases. Do not overwrite historical artifacts; each run should generate new timestamped files.

## 10. Troubleshooting

| Symptom                          | Cause                              | Action                        |
| -------------------------------- | ---------------------------------- | ----------------------------- |
| No device detected               | USB/ADB issue                      | Reconnect, `flutter devices`  |
| Missing metadata JSON            | Build step skipped or failed       | Re-run build in profile mode  |
| Flashlight command not available | CLI not installed                  | Install per Flashlight docs   |
| No first flag found              | List not loaded or locale mismatch | Ensure warm-up wait completes |
| Report misses files              | Results renamed or glob mismatch   | Verify `result_*.json` exists |

Maintaining consistent procedures keeps regression tracking reliable.
