import "package:flutter/foundation.dart";

/// Sizes that depend on the platform, like Material's adaptive density.
abstract final class AppMetrics {
  /// Whether the platform is a desktop one, with a mouse and a compact UI.
  static bool get isDesktop => switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.windows ||
    TargetPlatform.linux => true,
    TargetPlatform.android ||
    TargetPlatform.fuchsia ||
    TargetPlatform.iOS => false,
  };

  /// Vertical size adjustment of rows: desktops use a compact density.
  static double get densityAdjustment => isDesktop ? -8 : 0;

  /// The smallest tap target of a control.
  static double get minTapTarget => isDesktop ? 40 : 48;
}
