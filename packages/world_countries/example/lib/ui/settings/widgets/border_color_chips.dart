// ignore_for_file: map-keys-ordering
import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

import "../../../../helpers/extensions/border_flag_theme_controller_extension.dart";
import "../../../../theme/flag_theme_controller.dart";

/// Horizontally scrollable row of color choice chips for border color.
/// Uses a curated subset of Material colors for brevity.
final class BorderColorChips extends StatelessWidget {
  const BorderColorChips(this._controller, {super.key});

  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static const Map<String, Color> _palette = {
    "White": Colors.white,
    "Grey": Colors.grey,
    "Black": Colors.black,
    "Red": Colors.red,
    "Orange": Colors.orange,
    "Amber": Colors.amber,
    "Yellow": Colors.yellow,
    "Lime": Colors.lime,
    "Green": Colors.green,
    "Teal": Colors.teal,
    "Cyan": Colors.cyan,
    "Blue": Colors.blue,
    "Indigo": Colors.indigo,
    "Purple": Colors.purple,
    "Pink": Colors.pink,
    "Brown": Colors.brown,
  };

  final FlagThemeController _controller;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: SizedBox(
      height: 48,
      child: ListView.separated(
        addRepaintBoundaries: false,
        clipBehavior: Clip.none,
        itemCount: _palette.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (bc, index) {
          final foregroundColor = index == 0 ? Colors.black : null;
          final color = _palette.entries.elementAt(index);
          final selectedColor = color.value;
          final isSelected = _controller.borderColor == selectedColor;

          return ChoiceChip(
            backgroundColor: selectedColor.withValues(alpha: 1 / 2),
            checkmarkColor: foregroundColor,
            labelStyle: TextStyle(color: foregroundColor),
            label: Text(color.key, textAlign: TextAlign.center),
            onSelected: (_) => _controller.borderColor = selectedColor,
            selectedColor: selectedColor,
            selected: isSelected,
            side: isSelected
                ? BorderSide(color: bc.theme.colorScheme.secondary, width: 2)
                : BorderSide(color: bc.theme.colorScheme.outlineVariant),
          );
        },
      ),
    ),
  );
}
