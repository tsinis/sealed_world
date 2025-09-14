import "package:flutter/material.dart";

import "../../../../helpers/extensions/shadows_flag_theme_controller_extension.dart";
import "../../settings_tile_slider.dart";

final class ShadowBlurSlider extends SettingsTileSlider {
  const ShadowBlurSlider(super.flagTheme, {super.key})
    : super(
        name: "Shadow Blur",
        max: 3,
        divisions: 30,
        icon: Icons.blur_circular_rounded,
      );

  @override
  double get value => flagTheme.shadowBlur;

  @override
  void handleChange([double? newValue]) => flagTheme.shadowBlur = newValue;
}
