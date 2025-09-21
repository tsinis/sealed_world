import "package:flutter/material.dart";

import "../../../../../helpers/extensions/shadows_flag_theme_controller_extension.dart";
import "settings_tile_slider.dart";

final class ShadowOpacitySlider extends SettingsTileSlider {
  const ShadowOpacitySlider(super.flagTheme, {super.key})
    : super(
        name: "Opacity",
        divisions: 40,
        fractionDigits: 2,
        icon: Icons.opacity_rounded,
      );

  @override
  double get value => flagTheme.shadowOpacity;

  @override
  void handleChange([double? newValue]) => flagTheme.shadowOpacity = newValue;
}
