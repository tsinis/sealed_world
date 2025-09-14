import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../theme/flag_theme_controller.dart";
import "../main/abstractions/world_data_tab.dart";
import "widgets/settings_app_bar.dart";
import "widgets/sliders/aspect_ratio_slider.dart";
import "widgets/sliders/border_radius_slider.dart";
import "widgets/sliders/border_width_slider.dart";
import "widgets/sliders/shadow_blur_slider.dart";
import "widgets/sliders/shadow_offset_horizontal_slider.dart";
import "widgets/sliders/shadow_offset_vertical_slider.dart";
import "widgets/sliders/shadow_spread_slider.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage(this._controller, this._country, {super.key});

  static const _fallback = CountryFlag.simplified(
    CountryGbr(),
    height: 180,
    decorationPosition: DecorationPosition.background,
  );

  final FlagThemeController _controller;
  final WorldCountry? _country;

  @override
  Widget build(BuildContext context) {
    final flag = _fallback.copyWith(item: _country);
    final flagProps = flag.basicFlag?.properties;

    return Theme(
      data: ThemeData(
        sliderTheme: SliderTheme.of(context).copyWith(year2023: false),
        colorScheme: ColorScheme.fromSeed(
          brightness: MediaQuery.platformBrightnessOf(context),
          seedColor: context.theme.colorScheme.primary,
        ),
      ),
      child: Scaffold(
        appBar: SettingsAppBar(onReset: _controller.reset),
        body: SafeArea(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (bc, _) {
              final theme = _controller.theme;
              final decoration = theme.decoration;
              final border = decoration?.border;
              // Apply UI-only scaling (x10) for border & shadow visualization.
              final shadow = decoration?.boxShadow?.firstOrNull;
              final scaledShadows = shadow == null
                  ? null
                  : [
                      shadow.copyWith(
                        blurRadius: shadow.blurRadius * 10,
                        spreadRadius: shadow.spreadRadius * 10,
                        offset: Offset(
                          shadow.offset.dx * 10,
                          shadow.offset.dy * 10,
                        ),
                      ),
                    ];
              final scaledDecoration = decoration?.copyWith(
                borderRadius: BorderRadius.all(
                  Radius.circular(_controller.borderRadius * 10),
                ),
                border: Border.all(
                  strokeAlign: FlagThemeController.defaultBorder.strokeAlign,
                  width: _controller.borderWidth * 10,
                  color:
                      border?.top.color ??
                      FlagThemeController.defaultBorder.color,
                ),
                boxShadow: scaledShadows,
              );

              return ListView(
                padding: const EdgeInsets.only(top: 32),
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Center(
                      child:
                          ((flagProps?.isSimplified ?? true) ? _fallback : flag)
                              .copyWith(
                                aspectRatio: theme.specifiedAspectRatio,
                                decoration: scaledDecoration,
                              ),
                    ),
                  ),
                  AspectRatioSlider(_controller, flagProps?.aspectRatio),
                  BorderRadiusSlider(_controller),
                  BorderWidthSlider(_controller),
                  ShadowOffsetVerticalSlider(_controller),
                  ShadowOffsetHorizontalSlider(_controller),
                  ShadowSpreadSlider(_controller),
                  ShadowBlurSlider(_controller),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
