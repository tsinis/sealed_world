import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";

/// A full-width horizontal line, like a Material 3 divider.
class LineDivider extends StatelessWidget {
  const new({
    this.height = 16,
    this.color = AppColors.outlineVariant,
    super.key,
  });

  /// The total height of the divider, with the line centered in it.
  final double height;

  /// The color of the one point thick line.
  final Color color;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: height,
    child: Center(
      child: SizedBox(
        height: 1,
        width: double.infinity,
        child: ColoredBox(color: color),
      ),
    ),
  );
}
