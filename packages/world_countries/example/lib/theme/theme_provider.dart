import "package:flutter/foundation.dart" show listEquals;
import "package:flutter/material.dart";

class ThemeProvider<T extends List<Color>> extends InheritedWidget {
  const ThemeProvider(
    this._flagColors, {
    required super.child,
    this.onColorsChange,
    super.key,
  });

  static const _whiteColor = Colors.white;

  static ThemeProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>();

  final T _flagColors;
  final ValueSetter<T>? onColorsChange;

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) =>
      !listEquals(_flagColors, oldWidget._flagColors);

  ThemeData get theme {
    final seedColor =
        _flagColors.firstOrNull?.withValues(alpha: 1) ?? _whiteColor;
    final brightness = ThemeData.estimateBrightnessForColor(seedColor);

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        primary: _flagColors.elementAtOrNull(2),
        secondary: _flagColors.elementAtOrNull(1),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor:
            brightness == Brightness.dark ? _whiteColor : Colors.black,
        backgroundColor: seedColor,
      ),
    );
  }
}
