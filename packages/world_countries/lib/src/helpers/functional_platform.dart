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
    if (kIsWeb && web != null) return web.call();
    if (Platform.isAndroid && android != null) return android.call();
    if (Platform.isIOS && iOS != null) return iOS.call();
    if (Platform.isMacOS && macOS != null) return macOS.call();
    if (Platform.isWindows && windows != null) return windows.call();
    if (Platform.isLinux && linux != null) return linux.call();
    if (Platform.isFuchsia && fuchsia != null) return fuchsia.call();

    return orElse();
  }
}
