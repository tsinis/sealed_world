import "package:flutter/material.dart";

import "../../settings_tile_slider.dart";

final class BorderRadiusSlider extends SettingsTileSlider {
  const BorderRadiusSlider(super.flagTheme, {super.key})
    : super(
        name: "Border Radius",
        divisions: 18,
        fractionDigits: 1,
        icon: Icons.rounded_corner_rounded,
        max: 9,
      );

  @override
  double get value => flagTheme.borderRadius;

  @override
  void handleChange([double? newValue]) =>
      flagTheme.borderRadius = newValue ?? 0;
}
