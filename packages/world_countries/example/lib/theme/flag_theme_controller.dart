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
  static const BorderRadius _defaultBorderRadius = BorderRadius.zero;
  static const _defaultTheme = FlagThemeData(
    decorationPosition: DecorationPosition.background,
    aspectRatio: FlagConstants.defaultAspectRatio,
    decoration: BoxDecoration(
      borderRadius: _defaultBorderRadius,
      border: Border.fromBorderSide(defaultBorder),
    ),
  );

  FlagThemeData _theme;

  double get aspectRatio =>
      _theme.specifiedAspectRatio ?? FlagConstants.defaultAspectRatio;
  double get borderRadius =>
      _theme.decoration?.borderRadius?.resolve(null).topRight.x ?? 0;
  double get borderWidth => _theme.decoration?.border?.top.width ?? 1;
  FlagThemeData get theme => _theme;

  double get shadowBlur => _shadowOrDefault.blurRadius;
  double get shadowSpread => _shadowOrDefault.spreadRadius;
  double get shadowOffsetVertical => _shadowOrDefault.offset.dy;
  double get shadowOffsetHorizontal => _shadowOrDefault.offset.dx;

  BoxShadow? get _maybeShadow => _theme.decoration?.boxShadow?.firstOrNull;
  BoxShadow get _shadowOrDefault => _maybeShadow ?? const BoxShadow();

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

  set borderWidth(double? value) => _setDecoration(
    _theme.decoration?.copyWith(
      border: Border.fromBorderSide(defaultBorder.copyWith(width: value ?? 1)),
    ),
  );

  set shadowBlur(double? value) => _setShadow(blurRadius: value ?? 0);
  set shadowSpread(double? value) => _setShadow(spreadRadius: value ?? 0);
  set shadowOffsetVertical(double? value) => _setShadow(vertical: value ?? 0);
  set shadowOffsetHorizontal(double? value) =>
      _setShadow(horizontal: value ?? 0);

  void _setShadow({
    double? blurRadius,
    double? spreadRadius,
    double? vertical,
    double? horizontal,
  }) {
    final current = _maybeShadow; // May be `null`.
    final basic = current ?? const BoxShadow();
    final newDy = vertical ?? basic.offset.dy;
    final newDx = horizontal ?? basic.offset.dx;
    final newBlur = blurRadius ?? basic.blurRadius;
    final newSpread = spreadRadius ?? basic.spreadRadius;

    final defaultLike =
        newBlur == 0 && newSpread == 0 && newDx == 0 && newDy == 0;
    if (defaultLike && current == null) return;

    if (defaultLike) {
      final deco = _theme.decoration;
      if (deco?.boxShadow != null) {
        // Remove shadow list entirely. Previously we called copyWith() without
        // arguments, which preserved the existing boxShadow and prevented
        // vertical/horizontal reset (setting value to 0) from clearing the
        // shadow. Passing boxShadow: null is required to actually drop it.
        // ignore: avoid-returning-void
        return _setDecoration(deco?.copyWith(boxShadow: const []));
      }
    }

    final updated = basic.copyWith(
      blurRadius: newBlur,
      spreadRadius: newSpread,
      offset: Offset(newDx, newDy),
    );
    _setDecoration(_theme.decoration?.copyWith(boxShadow: [updated]));
  }

  void _setDecoration(BoxDecoration? decoration) =>
      _setTheme(_theme.copyWith(decoration: decoration));

  void _setTheme([FlagThemeData newTheme = _defaultTheme]) {
    if (newTheme == _theme) return;
    _theme = newTheme;
    notifyListeners();
  }
}
