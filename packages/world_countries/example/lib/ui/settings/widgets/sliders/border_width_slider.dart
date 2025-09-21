import "package:flutter/material.dart";

import "../../../../helpers/extensions/border_flag_theme_controller_extension.dart";
import "settings_tile_slider.dart";

/// Slider controlling the border stroke width.
/// UI shows width * 10 (same scaling approach as border radius usage in
/// settings). Controller stores logical width directly.
final class BorderWidthSlider extends SettingsTileSlider {
  const BorderWidthSlider(super.flagTheme, {super.key})
    : super(name: "Width", icon: Icons.border_style, divisions: 18, max: 3);

  @override
  double? get value => flagTheme.borderWidth;

  @override
  void handleChange([double? newValue]) => flagTheme.borderWidth = newValue;
}
