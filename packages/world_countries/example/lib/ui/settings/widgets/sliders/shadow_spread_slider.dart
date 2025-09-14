import "package:flutter/material.dart";

import "../../../../helpers/extensions/shadows_flag_theme_controller_extension.dart";
import "../../settings_tile_slider.dart";

final class ShadowSpreadSlider extends SettingsTileSlider {
  const ShadowSpreadSlider(super.flagTheme, {super.key})
    : super(
        name: "Shadow Spread",
        max: 3,
        divisions: 30,
        icon: Icons.blur_on_rounded,
      );

  @override
  double get value => flagTheme.shadowSpread;

  @override
  void handleChange([double? newValue]) => flagTheme.shadowSpread = newValue;
}
