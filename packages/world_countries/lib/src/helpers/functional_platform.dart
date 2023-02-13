import "dart:io" show Platform;

import "package:flutter/foundation.dart" show kIsWeb;

class FunctionalPlatform {
  const FunctionalPlatform._();

  // ignore: long-parameter-list, Flutter supports 7 platforms.
  static T? maybeWhen<T>({
    required T Function() orElse,
    T Function()? android,
    T Function()? fuchsia,
    T Function()? iOS,
    T Function()? linux,
    T Function()? macOS,
    T Function()? web,
    T Function()? windows,
  }) {
    if (kIsWeb) return web?.call() ?? orElse(); // IO is not available on web.
    if (Platform.isAndroid && android != null) return android();
    if (Platform.isIOS && iOS != null) return iOS();
    if (Platform.isMacOS && macOS != null) return macOS();
    if (Platform.isWindows && windows != null) return windows();
    if (Platform.isLinux && linux != null) return linux();
    if (Platform.isFuchsia && fuchsia != null) return fuchsia();

    return orElse();
  }
}
