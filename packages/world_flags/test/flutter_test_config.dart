import "dart:async";

import "package:alchemist/alchemist.dart";

/// Golden tests configuration for the `world_flags` package.
// This file is automatically run by the Flutter test framework before any
// tests are executed.
// ignore: prefer-async-callback, avoid-unnecessary-futures
Future<void> testExecutable(FutureOr<void> Function() testMain) async =>
    AlchemistConfig.runWithConfig(
      config: const AlchemistConfig(
        // By default, Alchemist runs both platform and CI golden tests.
        // We only want to run CI tests.
        platformGoldensConfig: PlatformGoldensConfig(enabled: false),
      ),
      run: testMain,
    );
