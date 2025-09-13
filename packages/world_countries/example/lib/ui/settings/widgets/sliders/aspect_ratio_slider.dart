import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../settings_tile_slider.dart";

final class AspectRatioSlider extends SettingsTileSlider {
  const AspectRatioSlider(super.flagTheme, {double? originalRatio, super.key})
    : super(
        name: "Aspect Ratio",
        secondaryTrackValue: originalRatio,
        icon: Icons.aspect_ratio_rounded,
        max: FlagConstants.maxAspectRatio,
        min: FlagConstants.minAspectRatio,
        minVerticalPadding: 48,
      );

  @override
  double get value => flagTheme.aspectRatio;

  @override
  void handleChange([double? newValue]) =>
      flagTheme.aspectRatio = newValue ?? secondaryTrackValue;
}
