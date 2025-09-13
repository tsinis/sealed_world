import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../theme/flag_theme_controller.dart";
import "../main/abstractions/world_data_tab.dart";
import "widgets/settings_app_bar.dart";
import "widgets/sliders/aspect_ratio_slider.dart";
import "widgets/sliders/border_radius_slider.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage(this._controller, this._country, {super.key});

  final FlagThemeController _controller;
  final WorldCountry? _country;

  @override
  Widget build(BuildContext context) {
    final maybeFlag = _country == null
        ? null
        : CountryFlag.simplified(_country, height: 180);

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
          child: ListenableBuilder(
            listenable: _controller,
            builder: (bc, _) {
              final theme = _controller.theme;
              final decoration = theme.decoration;
              final border = decoration?.border;
              final scaledDecoration = decoration?.copyWith(
                borderRadius: BorderRadius.all(
                  Radius.circular(_controller.borderRadius * 10),
                ),
                border: Border.all(
                  strokeAlign: FlagThemeController.defaultBorder.strokeAlign,
                  width: (border?.top.width ?? 0) * 10,
                  color:
                      border?.top.color ??
                      FlagThemeController.defaultBorder.color,
                ),
              );

              return ListView(
                padding:
                    const EdgeInsets.all(8) + const EdgeInsets.only(top: 16),
                children: [
                  MaybeWidget(
                    maybeFlag,
                    (flag) => Center(
                      child: flag.copyWith(
                        aspectRatio: theme.specifiedAspectRatio,
                        decoration: scaledDecoration,
                      ),
                    ),
                  ),
                  AspectRatioSlider(
                    _controller,
                    originalRatio: maybeFlag?.basicFlag?.properties.aspectRatio,
                  ),
                  BorderRadiusSlider(_controller),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
