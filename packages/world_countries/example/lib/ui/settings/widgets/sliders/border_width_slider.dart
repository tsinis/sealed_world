import "package:flutter/material.dart";

import "../../settings_tile_slider.dart";

/// Slider controlling the border stroke width.
/// UI shows width * 10 (same scaling approach as border radius usage in
/// settings). Controller stores logical width directly.
final class BorderWidthSlider extends SettingsTileSlider {
  const BorderWidthSlider(super.flagTheme, {super.key})
    : super(
        name: "Border Width",
        icon: Icons.border_style,
        fractionDigits: 0,
        divisions: 30,
        max: 30,
      );

  @override
  double get value => flagTheme.borderWidth * 10;

  @override
  void handleChange([double? newValue]) =>
      flagTheme.borderWidth = (newValue ?? 0) / 10;
}
