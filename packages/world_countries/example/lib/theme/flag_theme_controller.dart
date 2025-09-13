import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

/// Controller that holds a mutable [FlagThemeData] as [ChangeNotifier].
class FlagThemeController extends ChangeNotifier {
  FlagThemeController([this._theme = _defaultTheme]);

  static const defaultBorder = BorderSide(
    strokeAlign: BorderSide.strokeAlignOutside,
  );

  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static const BorderRadius _defaultBorderRadius = BorderRadius.zero;
  static const _defaultTheme = FlagThemeData(
    aspectRatio: FlagConstants.defaultAspectRatio,
    decoration: BoxDecoration(
      borderRadius: _defaultBorderRadius,
      border: Border.fromBorderSide(defaultBorder),
    ),
  );

  FlagThemeData _theme;

  FlagThemeData get theme => _theme;
  double get aspectRatio =>
      _theme.specifiedAspectRatio ?? FlagConstants.defaultAspectRatio;
  double get borderRadius =>
      _theme.decoration?.borderRadius?.resolve(null).topRight.x ?? 0;

  void reset() => _setTheme();

  set aspectRatio(double? value) => _setTheme(
    _theme.copyWith(aspectRatio: value ?? _defaultTheme.aspectRatio),
  );

  set borderRadius(double? value) => _setDecoration(
    _theme.decoration?.copyWith(
      borderRadius: value == null
          ? _defaultBorderRadius
          : BorderRadius.all(Radius.circular(value)),
    ),
  );

  void _setDecoration(BoxDecoration? decoration) =>
      _setTheme(_theme.copyWith(decoration: decoration));

  void _setTheme([FlagThemeData newTheme = _defaultTheme]) {
    if (newTheme == _theme) return;
    _theme = newTheme;
    notifyListeners();
  }
}
