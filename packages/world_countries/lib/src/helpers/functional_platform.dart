// ignore_for_file: long-parameter-list, Flutter supports 6+ platforms.
import "package:flutter/foundation.dart"
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// A helper class for conditionally executing code based on the current
/// platform.
sealed class FunctionalPlatform {
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

  /// Invokes the given function based on the current platform.
  ///
  /// Example usage:
  /// ```dart
  /// FunctionalPlatform.maybeWhen(
  ///   android: () => print('Running on Android'),
  ///   iOS: () => print('Running on iOS'),
  ///   orElse: () => print('Running on other platform'),
  /// );
  /// ```
  ///
  /// The [orElse] function is required and will be called if no specific
  /// platform function is provided or if the current platform does not match
  /// any of the provided platform functions.
  ///
  /// The optional platform-specific functions ([android], [fuchsia], [iOS],
  /// [linux], [macOS], [web], [windows]) will be called if the current platform
  /// matches the respective platform.
  ///
  /// Returns the result of the invoked function.
  static R maybeWhen<R>({
    required R Function() orElse,
    R Function()? android,
    R Function()? fuchsia,
    R Function()? iOS,
    R Function()? linux,
    R Function()? macOS,
    R Function()? web,
    R Function()? windows,
  }) {
    if (kIsWeb) return web?.call() ?? orElse(); // IO is not available on Web.
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android?.call() ?? orElse();

      case TargetPlatform.iOS:
        return iOS?.call() ?? orElse();

      case TargetPlatform.macOS:
        return macOS?.call() ?? orElse();

      case TargetPlatform.windows:
        return windows?.call() ?? orElse();

      case TargetPlatform.linux:
        return linux?.call() ?? orElse();

      case TargetPlatform.fuchsia:
        return fuchsia?.call() ?? orElse();
    }
  }
}
