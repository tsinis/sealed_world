import "package:flutter/material.dart";

import "../../../../helpers/extensions/shadows_flag_theme_controller_extension.dart";
import "settings_tile_slider.dart";

final class ShadowOffsetHorizontalSlider extends SettingsTileSlider {
  const ShadowOffsetHorizontalSlider(super.flagTheme, {super.key})
    : super(
        name: "Horizontal Offset",
        min: -3,
        max: 3,
        divisions: 30,
        icon: Icons.sync_alt_outlined,
      );

  @override
  double get value => flagTheme.shadowOffsetHorizontal;

  @override
  void handleChange([double? newValue]) =>
      flagTheme.shadowOffsetHorizontal = newValue;
}
