import "package:flutter/foundation.dart";

final class NotificationsCenter {
  NotificationsCenter._();
  static final _instance = NotificationsCenter._();

  // ignore: avoid-unnecessary-getter, it's a singleton pattern.
  static NotificationsCenter get instance => _instance;

  bool _longPressHintShown = kProfileMode;
  bool _settingsMenuAccessed = kProfileMode;

  bool get longPressHintShown => _longPressHintShown;
  bool get settingsMenuAccessed => _settingsMenuAccessed;

  /// Marks that the long-press hint was shown.
  void markLongPressHintShown() => _longPressHintShown = true;

  /// Marks that the settings menu was accessed at least once.
  void markSettingsMenuAccessed() => _settingsMenuAccessed = true;
}
