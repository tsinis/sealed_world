import "package:flutter/widgets.dart";

/// Colors of the example app: the Material 3 baseline light color scheme, so
/// the app looks the same as it did with `MaterialApp`, without depending on
/// a design library.
abstract final class AppColors {
  static const primary = Color(0xFF6750A4);

  /// Content (i.e. a switch thumb) on [primary], Material's `onPrimary`.
  static const primaryContent = Color(0xFFFFFFFF);

  static const surface = Color(0xFFFEF7FF);

  /// Text and icons on [surface], Material's `onSurface`.
  static const surfaceContent = Color(0xFF1D1B20);

  /// Secondary text and icons on [surface], Material's `onSurfaceVariant`.
  static const surfaceVariantContent = Color(0xFF49454F);

  static const outline = Color(0xFF79747E);
  static const outlineVariant = Color(0xFFCAC4D0);
  static const surfaceContainerLow = Color(0xFFF7F2FA);
  static const surfaceContainerHighest = Color(0xFFE6E0E9);
  static const inverseSurface = Color(0xFF322F35);

  /// Text on [inverseSurface], Material's `onInverseSurface`.
  static const inverseSurfaceContent = Color(0xFFF5EFF7);

  /// Background of a tooltip (grey at 90%).
  static const tooltip = Color(0xE6616161);

  /// Surface container (`0xFFF3EDF7`) tinted with 8% of the primary color
  /// (elevation 3): the background of a top bar with content scrolled under.
  static const scrolledUnder = Color(0xFFE8E1F0);

  /// Text of disabled rows (black at 38%).
  static const disabled = Color(0x61000000);

  /// Thin separators between the flags of the main list (black at 10%).
  static const separator = Color(0x1A000000);

  /// Opacity of the state layer painted over a control in the given states:
  /// 10% when pressed or focused, 8% when hovered.
  static double overlayOpacityOf(Set<WidgetState> states) => switch (states) {
    _ when states.contains(WidgetState.pressed) => 0.1,
    _ when states.contains(WidgetState.focused) => 0.1,
    _ when states.contains(WidgetState.hovered) => 0.08,
    _ => 0,
  };
}
