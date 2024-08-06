import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

class ThemeProvider extends InheritedWidget {
  const ThemeProvider(
    this._flagProperties, {
    required super.child,
    this.changeColors,
    super.key,
  });

  static const _whiteColor = Colors.white;
  final FlagProperties? _flagProperties;
  final ValueSetter<FlagProperties?>? changeColors;

  Iterable<Color>? _maybeStripeColors(FlagProperties? flagProperties) =>
      flagProperties?.stripeColors.map((stripe) => stripe.color);

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    final oldSeed = _maybeStripeColors(oldWidget._flagProperties)?.firstOrNull;
    final newSeed = _maybeStripeColors(_flagProperties)?.firstOrNull;

    return newSeed != oldSeed;
  }

  static ThemeProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>();

  ThemeData get theme {
    final stripeColors = _maybeStripeColors(_flagProperties);
    final seedColor = stripeColors?.first.withOpacity(1) ?? _whiteColor;
    final isDark =
        ThemeData.estimateBrightnessForColor(seedColor) == Brightness.dark;

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        secondary: stripeColors?.elementAtOrNull(1),
        primary: stripeColors?.elementAtOrNull(2),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: seedColor,
        foregroundColor: isDark ? _whiteColor : Colors.black,
      ),
    );
  }
}
