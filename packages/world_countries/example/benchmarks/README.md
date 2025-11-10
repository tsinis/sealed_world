# Benchmark & Regression Verification

## 1. What

This benchmark pipeline produces immutable JSON artifacts per version of the `world_countries` package:

- Build metadata (APK size, toolchain, Android config).
- Runtime performance + behavioral metrics collected via automated device-driven tests.

These artifacts are attached to [GitHub Releases](https://github.com/tsinis/sealed_world/releases) to enable historical comparison and regression detection.

## 2. Why

Each release may change generated country data, enums, localization payloads, or supporting logic. Such changes can unintentionally:

- Increase binary size.
- Degrade startup/frame performance.
- Increase memory or CPU footprint.
- Alter behavioral flows (navigation/interaction tests).

> Changes could also come from upstream Flutter/Gradle/tooling updates. This is why we capture build environment metadata and testing in the beta channel.

By storing structured metrics for every version we enable:

- Fast diff-based regression alerts.
- Auditable provenance (artifact + exact build environment).
- Repeatable verification on a stable physical device.

## 3. How (Workflow Overview)

1. Physical **low-end Android ARM64** device connected (non-emulator).
2. Profile APK built via `fvm flutter build apk --profile --target-platform=android-arm64 --split-per-abi`.
3. Gradle profile build augments `output-metadata.json` with:
   - bundleSizeBytes
   - flutterVersion
   - gradleVersion
   - compileSdk / minSdk / targetSdk / ndkVersion
   - minifyEnabled / shrinkResources
4. Script copies and timestamps metadata: `metadata_{version}_{timestamp}.json`.
5. Flashlight test runs automated flows using Maestro:
   - `setup.yaml` before each test iteration.
   - `test.yaml` main benchmark scenario.
6. Raw result JSON renamed to `result_{version}_{timestamp}.json`.
7. Report generated: `flashlight report result_*.json`.
8. Both JSON files are added to release assets (immutable).

## 4. Artifacts

| File                                | Description                         | Notes                                               |
| ----------------------------------- | ----------------------------------- | --------------------------------------------------- |
| metadata*{version}*{timestamp}.json | Build + environment + size metadata | Derived from augmented Android output-metadata.json |
| result*{version}*{timestamp}.json   | Benchmark test metrics              | Rename ensures consistent prefix for reporting      |

> Timestamps use UTC milliseconds since epoch.

## 5. Running Locally

Prerequisites:

- [Flutter with Android setup](https://docs.flutter.dev/platform-integration/android/setup) + [FVM](https://fvm.app/documentation/getting-started/installation) installed (matching project setup).
- [Maestro](https://docs.maestro.dev/getting-started/installing-maestro) installed (`maestro --version`).
- [Flashlight](https://docs.flashlight.dev/#installation) CLI installed (`flashlight --help`).
- Physical **low-end Android ARM64** device (USB debugging enabled).
- No interfering background processes (close heavy apps).

Command (inside `world_countries` root):

```shell
cd example && dart run
```

Outputs appear in:

```shell
packages/world_countries/example/benchmarks/
```

## 6. Reproducibility Guidelines

To obtain consistent metrics:

- Same device model each run.
- Battery > 80%.
- Close background apps.
- Keep screen brightness constant.
- Avoid thermal throttling (cool device if hot).

Record device model + OS for long-term tracking if publishing externally.

## 7. Regression Detection

After generating artifacts for a new version:
Example diff (size + key fields):

```shell
jq '.bundleSizeBytes' metadata_old.json
jq '.bundleSizeBytes' metadata_new.json
```

General checks:

- bundleSizeBytes: Unexpected jump (> +3-5%).
- Added/removal of SDK / tooling fields.
- Performance metrics (frame times, memory, CPU—exact keys depend on Flashlight version) show sustained degradation (> +10% median).

Suggested automated gate (pseudo):

```shell
if (sizeIncreasePercent > 5) fail;
if (medianFrameTimeIncreasePercent > 10) warn;
```

## 8. Comparing Result Files

Use (inside `example/benchmarks`):

```shell
flashlight report result_*.json
```

Adjust paths for your shell.

## 9. Release Integration

On release:

1. Verify artifacts and proper tag exist on remote.
2. Avoid overwriting prior artifacts—immutability preserves audit trail.

## 10. Troubleshooting

| Symptom                     | Cause                            | Action                                  |
| --------------------------- | -------------------------------- | --------------------------------------- |
| No device found             | USB / adb                        | Reconnect, `flutter devices`            |
| Metadata missing fields     | Gradle augmentation not executed | Rebuild with profile; check build tasks |
| Report fails glob expansion | Shell mismatch                   | Ensure script uses shell (`sh -c`)      |
| Size resets to very small   | Built wrong ABI                  | Confirm arm64 split-per-abi presence    |
| Flashlight not found        | CLI not installed                | Install per tool docs                   |

## 11. Data Retention Policy

Keep all artifacts for released versions indefinitely. Never mutate historical JSONs.

## 12. Security / Integrity Notes

- Do not run benchmarks on compromised devices.
- Avoid mixing debug builds—must remain profile for consistent behavior.
- Ensure reproducible toolchain.

## 13. Glossary

- Profile build: Flutter mode balancing near-release performance with observability.
- Flashlight: CLI for automated performance collection.
- Maestro: Declarative UI/device interaction automation.

## 14. Summary

Structured, reproducible benchmarks per version mitigate silent regressions and enable confident evolution of `world_countries` (end related packages) data and code.
