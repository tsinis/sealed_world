import "package:flutter/foundation.dart" show internal;

@internal
extension AspectRatioExtension<T extends double> on T? {
  /// Calculated aspect ratio.
  double? aspectRatio(double? width) =>
      width == null || this == null ? null : width / (this ?? 1);
}
