// Shadow-specific helpers & mutators extracted for clarity.
import "package:flutter/material.dart";

import "../../theme/flag_theme_controller.dart";

extension ShadowsFlagThemeControllerExtension on FlagThemeController {
  double get shadowBlur => _shadowOrDefault.blurRadius;
  double get shadowSpread => _shadowOrDefault.spreadRadius;
  double get shadowOffsetVertical => _shadowOrDefault.offset.dy;
  double get shadowOffsetHorizontal => _shadowOrDefault.offset.dx;

  BoxShadow get _shadowOrDefault => _maybeShadow ?? const BoxShadow();
  BoxShadow? get _maybeShadow => theme.decoration?.boxShadow?.firstOrNull;

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
      final decoration = theme.decoration;
      if (decoration?.boxShadow != null) {
        // ignore: avoid-returning-void, remove shadow list entirely.
        return setDecoration(decoration?.copyWith(boxShadow: const []));
      }
    }

    final updated = basic.copyWith(
      blurRadius: newBlur,
      spreadRadius: newSpread,
      offset: Offset(newDx, newDy),
    );
    setDecoration(theme.decoration?.copyWith(boxShadow: [updated]));
  }
}
