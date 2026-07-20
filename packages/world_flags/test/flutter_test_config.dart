import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: ThemeData.light(),
      platformGoldensConfig: const PlatformGoldensConfig(enabled: true),
    ),
    run: () async {
      await testMain();
    },
  );
}
