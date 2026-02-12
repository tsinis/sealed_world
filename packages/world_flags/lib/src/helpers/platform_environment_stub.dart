import "package:flutter/foundation.dart" show internal;

/// Fallback environment map for platforms without `dart:io`.
@internal
// ignore: prefer-static-class, it's internal and conditional on platform.
const platformEnvironmentImpl = <String, String>{};
