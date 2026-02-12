import "package:flutter/foundation.dart" show internal;

import "platform_environment_stub.dart"
    if (dart.library.io) "platform_environment_io.dart"
    if (dart.library.html) "platform_environment_web.dart";

/// Exposes the current process environment when available.
@internal
// ignore: prefer-static-class, it's internal and conditional on platform.
Map<String, String> get platformEnvironment => platformEnvironmentImpl;
