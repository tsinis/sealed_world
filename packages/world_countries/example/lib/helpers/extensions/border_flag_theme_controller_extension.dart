// Border-specific helpers & mutators extracted for clarity.
// ignore_for_file: prefer-class-destructuring

import "package:flutter/widgets.dart";

import "../../theme/flag_theme_controller.dart";

extension BorderFlagThemeControllerExtension on FlagThemeController {
  BorderSide? get border => theme.decoration?.border?.top;
  double? get borderWidth => border?.width;
  double get borderRadius =>
      theme.decoration?.borderRadius?.resolve(null).topRight.x ?? 0;

  set borderRadius(double? value) => setDecoration(
    theme.decoration?.copyWith(
      borderRadius: value == null
          ? FlagThemeController.defaultBorderRadius
          : BorderRadius.all(Radius.circular(value)),
    ),
  );

  set borderWidth(double? value) {
    final decoration = theme.decoration;
    final width = value ?? 1;

    if (width > 0) {
      setDecoration(
        decoration?.copyWith(
          border: Border.fromBorderSide(
            FlagThemeController.defaultBorder.copyWith(width: width),
          ),
        ),
      );
    } else {
      setDecoration(
        BoxDecoration(
          borderRadius: decoration?.borderRadius,
          boxShadow: decoration?.boxShadow,
        ),
      );
    }
  }
}
