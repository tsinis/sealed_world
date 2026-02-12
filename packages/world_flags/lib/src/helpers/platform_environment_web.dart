import "package:flutter/foundation.dart" show internal;

/// Web has no process environment; return an empty map.
@internal
// ignore: prefer-static-class, it's internal and conditional on platform.
const platformEnvironmentImpl = <String, String>{};
