import "package:flutter/material.dart";

import "../../settings_tile_slider.dart";

final class ShadowOffsetVerticalSlider extends SettingsTileSlider {
  const ShadowOffsetVerticalSlider(super.flagTheme, {super.key})
    : super(
        name: "Shadow Offset Vertical",
        min: -3,
        max: 3,
        divisions: 30,
        icon: Icons.vertical_align_center_rounded,
      );

  @override
  double get value => flagTheme.shadowOffsetVertical;

  @override
  void handleChange([double? newValue]) =>
      flagTheme.shadowOffsetVertical = newValue;
}
