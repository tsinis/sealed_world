// ignore_for_file: long-parameter-list, Flutter supports 6+ platforms.
import "package:flutter/foundation.dart"
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// A helper class for conditionally executing code based on the current
/// platform.
abstract final class FunctionalPlatform {
  const FunctionalPlatform._(); // coverage:ignore-line

  /// Invokes the given function based on the current platform.
  ///
  /// Example usage:
  /// ```dart
  /// FunctionalPlatform.maybeWhenConst(
  ///   android: () => print('Running on Android'),
  ///   iOS: () => print('Running on iOS'),
  ///   orElse: () => print('Running on other platform'),
  /// );
  /// ```
  static R maybeWhenConst<R>({
    required R orElse,
    R? android,
    R? fuchsia,
    R? iOS,
    R? linux,
    R? macOS,
    R? web,
    R? windows,
  }) {
    if (kIsWeb) return web ?? orElse; // IO is not available on Web.
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android ?? orElse;
      case TargetPlatform.iOS:
        return iOS ?? orElse;
      case TargetPlatform.macOS:
        return macOS ?? orElse;
      case TargetPlatform.windows:
        return windows ?? orElse;
      case TargetPlatform.linux:
        return linux ?? orElse;
      case TargetPlatform.fuchsia:
        return fuchsia ?? orElse;
    }
  }
}
