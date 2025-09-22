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
  ///   android: 'Running on Android',
  ///   iOS: 'Running on iOS',
  ///   orElse: 'Running on other platform',
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

    return switch (defaultTargetPlatform) {
      TargetPlatform.android => android ?? orElse,
      TargetPlatform.iOS => iOS ?? orElse,
      TargetPlatform.macOS => macOS ?? orElse,
      TargetPlatform.windows => windows ?? orElse,
      TargetPlatform.linux => linux ?? orElse,
      TargetPlatform.fuchsia => fuchsia ?? orElse,
    };
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
    R Function()? web, // IO is not available on Web.
    R Function()? windows,
  }) {
    // To cover this line just run tests with `flutter test --platform chrome`.
    if (kIsWeb) return web?.call() ?? orElse(); // coverage:ignore-line

    return switch (defaultTargetPlatform) {
      TargetPlatform.android => android?.call() ?? orElse(),
      TargetPlatform.iOS => iOS?.call() ?? orElse(),
      TargetPlatform.macOS => macOS?.call() ?? orElse(),
      TargetPlatform.windows => windows?.call() ?? orElse(),
      TargetPlatform.linux => linux?.call() ?? orElse(),
      TargetPlatform.fuchsia => fuchsia?.call() ?? orElse(),
    };
  }
}
