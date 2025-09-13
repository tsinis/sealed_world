import "package:flutter/material.dart";

import "../../../../theme/flag_theme_controller.dart";

abstract base class SettingsTileSlider extends StatelessWidget {
  const SettingsTileSlider(
    this.flagTheme, {
    required this.name,
    this.icon,
    this.minVerticalPadding,
    this.secondaryTrackValue,
    this.divisions = 19,
    this.fractionDigits = 2,
    this.max = 1,
    this.min = 0,
    super.key,
  });

  final FlagThemeController flagTheme;
  final String name;

  final int? divisions;
  final int fractionDigits;
  final IconData? icon;
  final double max;
  final double min;
  final double? minVerticalPadding;
  final double? secondaryTrackValue;

  @protected
  double get value;

  @protected
  void handleChange([double? newValue]);

  @override
  Widget build(BuildContext context) {
    final label = value.toStringAsFixed(fractionDigits);

    return ListTile(
      subtitle: Text("$name: $label"),
      contentPadding: const EdgeInsets.only(left: 8),
      titleAlignment: ListTileTitleAlignment.top,
      minVerticalPadding: minVerticalPadding,
      trailing: IconButton(
        onPressed: handleChange,
        tooltip: "Original $name",
        icon: Icon(icon),
      ),
      title: Slider(
        max: max,
        min: min,
        label: label,
        divisions: divisions,
        onChanged: handleChange,
        padding: EdgeInsets.zero,
        secondaryTrackValue: secondaryTrackValue,
        value: value,
      ),
    );
  }
}
