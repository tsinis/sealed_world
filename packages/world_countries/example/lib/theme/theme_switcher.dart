import "package:flutter/foundation.dart" show listEquals;
import "package:flutter/material.dart";

class ThemeProvider<T extends List<Color>> extends InheritedWidget {
  const ThemeProvider(
    this._flagColors, {
    required super.child,
    this.changeColors,
    super.key,
  });

  static const _whiteColor = Colors.white;

  final T _flagColors;
  final ValueSetter<T>? changeColors;

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) =>
      !listEquals(_flagColors, oldWidget._flagColors);

  static ThemeProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>();

  ThemeData get theme {
    final seedColor = _flagColors.firstOrNull?.withOpacity(1) ?? _whiteColor;
    final brightness = ThemeData.estimateBrightnessForColor(seedColor);

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        primary: _flagColors.elementAtOrNull(2),
        secondary: _flagColors.elementAtOrNull(1),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: seedColor,
        foregroundColor:
            brightness == Brightness.dark ? _whiteColor : Colors.black,
      ),
    );
  }
}
