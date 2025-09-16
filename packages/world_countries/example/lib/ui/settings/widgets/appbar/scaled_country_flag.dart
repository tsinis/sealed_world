import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../../../helpers/extensions/border_flag_theme_controller_extension.dart";
import "../../../../theme/flag_theme_controller.dart";
import "../appbar/sliver_settings_app_bar.dart";

class ScaledCountryFlag extends StatelessWidget {
  const ScaledCountryFlag(this._controller, this._flag, {IsoFlag? fallback})
    : fallback = fallback ?? _flag,
      super(key: const ValueKey(ScaledCountryFlag));

  static const scale = 10;

  final FlagThemeController _controller;
  final IsoFlag<WorldCountry, BasicFlag> _flag;

  final IsoFlag fallback;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: _controller,
    builder: (_, _) {
      final isSimplified = _flag.basicFlag?.properties.isSimplified ?? true;
      final decoration = _controller.theme.decoration;
      final shadow = decoration?.boxShadow?.firstOrNull;
      final borderWidth = _controller.borderWidth;
      final color = _controller.borderColor;

      return SliverSettingsAppBar(
        (isSimplified ? fallback : _flag).copyWith(
          aspectRatio: _controller.theme.specifiedAspectRatio,
          decoration: decoration?.copyWith(
            borderRadius: BorderRadius.all(
              Radius.circular(_controller.borderRadius * scale),
            ),
            border: borderWidth == null
                ? null
                : Border.all(
                    color: color ?? FlagThemeController.defaultBorder.color,
                    strokeAlign: FlagThemeController.defaultBorder.strokeAlign,
                    width: borderWidth * scale,
                  ),
            boxShadow: [
              ?shadow?.copyWith(
                blurRadius: shadow.blurRadius * scale,
                spreadRadius: shadow.spreadRadius * scale,
                offset: Offset(
                  shadow.offset.dx * scale,
                  shadow.offset.dy * scale,
                ),
              ),
            ],
          ),
        ),
        onReset: _controller.reset,
      );
    },
  );
}
