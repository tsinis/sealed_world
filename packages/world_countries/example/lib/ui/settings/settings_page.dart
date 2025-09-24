import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../theme/flag_theme_controller.dart";
import "../main/abstractions/world_data_tab.dart";
import "widgets/appbar/scaled_country_flag.dart";
import "widgets/border_color_chips.dart";
import "widgets/code_copy_preview.dart";
import "widgets/settings_section_header.dart";
import "widgets/sliders/aspect_ratio_slider.dart";
import "widgets/sliders/border_radius_slider.dart";
import "widgets/sliders/border_width_slider.dart";
import "widgets/sliders/shadow_blur_slider.dart";
import "widgets/sliders/shadow_offset_horizontal_slider.dart";
import "widgets/sliders/shadow_offset_vertical_slider.dart";
import "widgets/sliders/shadow_opacity_slider.dart";
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
        useMaterial3: true,
        sliderTheme: SliderTheme.of(context).copyWith(year2023: false),
        colorScheme: ColorScheme.fromSeed(
          brightness: MediaQuery.platformBrightnessOf(context),
          seedColor: context.theme.colorScheme.primary,
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          left: false,
          right: false,
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              ScaledCountryFlag(_controller, flag, fallback: _fallback),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AspectRatioSlider(_controller, flagProps?.aspectRatio),

                    const SettingsSectionHeader("Border"),
                    BorderRadiusSlider(_controller),
                    BorderWidthSlider(_controller),
                    BorderColorChips(_controller),

                    const SettingsSectionHeader("Shadow"),
                    ShadowSpreadSlider(_controller),
                    ShadowBlurSlider(_controller),
                    ShadowOpacitySlider(_controller),
                    ShadowOffsetVerticalSlider(_controller),
                    ShadowOffsetHorizontalSlider(_controller),
                    const CodeCopyPreview(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
