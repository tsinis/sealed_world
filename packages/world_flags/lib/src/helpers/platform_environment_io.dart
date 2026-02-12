import "dart:io" show Platform;

import "package:flutter/foundation.dart" show internal;

/// Environment map for platforms that support `dart:io`.
@internal
// ignore: specify_nonobvious_property_types, prefer-static-class, it's internal
final platformEnvironmentImpl = Platform.environment;
