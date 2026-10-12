import "package:flutter/foundation.dart" show internal;

@internal
extension AspectRatioExtension on double? {
  /// The aspect ratio of the [width] to this height, if both are provided.
  double? aspectRatio(double? width) {
    final height = this;

    return width == null || height == null ? null : width / height;
  }
}
