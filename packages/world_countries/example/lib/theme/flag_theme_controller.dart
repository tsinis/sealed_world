// ignore_for_file: prefer-class-destructuring

import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

/// Controller that holds a mutable [FlagThemeData] as [ChangeNotifier].
class FlagThemeController extends ChangeNotifier {
  FlagThemeController([this._theme = _defaultTheme]);

  static const defaultBorder = BorderSide(
    strokeAlign: BorderSide.strokeAlignOutside,
  );

  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
  static const BorderRadius defaultBorderRadius = BorderRadius.zero;
  static const _defaultTheme = FlagThemeData(
    decorationPosition: DecorationPosition.background,
    aspectRatio: FlagConstants.defaultAspectRatio,
    height: 18,
    decoration: BoxDecoration(
      borderRadius: defaultBorderRadius,
      border: Border.fromBorderSide(defaultBorder),
    ),
  );

  FlagThemeData _theme;

  double get aspectRatio =>
      _theme.specifiedAspectRatio ?? FlagConstants.defaultAspectRatio;
  FlagThemeData get theme => _theme;

  void reset() => _setTheme();

  set aspectRatio(double? value) => _setTheme(
    _theme.copyWith(aspectRatio: value ?? _defaultTheme.aspectRatio),
  );

  void setDecoration(BoxDecoration? decoration) =>
      _setTheme(_theme.copyWith(decoration: decoration));

  void _setTheme([FlagThemeData newTheme = _defaultTheme]) {
    if (newTheme == _theme) return;
    _theme = newTheme;
    notifyListeners();
  }
}
