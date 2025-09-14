import "package:flutter/material.dart";

import "../../../../theme/flag_theme_controller.dart";

abstract base class SettingsTileSlider extends StatelessWidget {
  const SettingsTileSlider(
    this.flagTheme, {
    required this.name,
    this.divisions = 19,
    this.fractionDigits = 2,
    this.max = 1,
    this.min = 0,
    this.minVerticalPadding = 0,
    this.secondaryTrackValue,
    this.icon,
    super.key,
  });

  final FlagThemeController flagTheme;
  final String name;

  final int? divisions;
  final int fractionDigits;
  final IconData? icon;
  final double max;
  final double min;
  final double minVerticalPadding;
  final double? secondaryTrackValue;

  @protected
  double get value;

  @protected
  void handleChange([double? newValue]);

  @override
  Widget build(BuildContext context) => ListTile(
    titleAlignment: ListTileTitleAlignment.center,
    minVerticalPadding: minVerticalPadding,
    visualDensity: VisualDensity.compact,
    title: Text(name),
    leading: IconButton(
      tooltip: "Original $name",
      padding: EdgeInsets.zero,
      onPressed: handleChange,
      icon: Icon(icon),
    ),
    subtitle: Slider(
      divisions: divisions,
      max: max,
      min: min,
      onChanged: handleChange,
      padding: const EdgeInsets.only(right: 16),
      label: value.toStringAsFixed(fractionDigits),
      secondaryTrackValue: secondaryTrackValue,
      value: value,
    ),
  );
}
