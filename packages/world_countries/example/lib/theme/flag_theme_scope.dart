import "package:flutter/widgets.dart";

import "flag_theme_controller.dart";

/// Inherited notifier providing access to [FlagThemeController]. Wrap a subtree
/// with this to allow updating `FlagThemeData` dynamically.
class FlagThemeScope extends InheritedNotifier<FlagThemeController> {
  const FlagThemeScope(
    FlagThemeController notifier, {
    required super.child,
    super.key,
  }) : super(notifier: notifier);

  static FlagThemeController? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<FlagThemeScope>()?.notifier;
}
