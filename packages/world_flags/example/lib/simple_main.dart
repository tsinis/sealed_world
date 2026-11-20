import "package:flutter/widgets.dart";
import "package:world_flags/world_flags.dart";

import "theme/app_colors.dart";
import "theme/app_page_route.dart";
import "theme/app_text.dart";

void main() => runApp(
  WidgetsApp(
    color: AppColors.primary,
    textStyle: AppText.bodyMedium,
    pageRouteBuilder: <T>(settings, builder) =>
        AppPageRoute<T>(settings: settings, builder: builder),
    home: const FlagTheme(
      data: DecoratedFlagData(
        aspectRatio: 1,
        flagChild: Text("Old child in theme"),
      ),
      child: ColoredBox(
        color: AppColors.surface,
        child: Center(
          // Afghanistan's emblem is painted by the painter of its flag, so use
          // the ready-made flag instead of building it from its properties.
          child: CountryFlag.simplified(CountryAfg()),
        ),
      ),
    ),
  ),
);
