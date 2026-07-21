// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "package:alchemist/alchemist.dart";
import "package:flutter/material.dart" show MaterialApp, ThemeData;
import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/constants/flag_constants.dart";
import "package:world_flags/src/helpers/extensions/flag_extension.dart";
import "package:world_flags/src/theme/flag_theme_data.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/flags/iso/iso_flag.dart";
import "package:world_flags/world_flags.dart"
    show
        smallSimplifiedCurrencyFlagsMap,
        smallSimplifiedFlagsMap,
        smallSimplifiedLanguageFlagsMap;

import "../flag_type.dart";

const _items = <IsoTranslated, BasicFlag>{
  ...smallSimplifiedFlagsMap,
  ...smallSimplifiedCurrencyFlagsMap,
  ...smallSimplifiedLanguageFlagsMap,
};

// ignore: avoid-top-level-members-in-tests, it's not a test, but a helper.
void flagGoldenTest<T extends IsoTranslated>(
  T iso,
  FlagType type, {
  Widget? widget,
}) {
  final isWaved = type == FlagType.waved;
  final aspectRatio = iso.mapWhenOrNull(
    country: (country) => country.flagProperties?.aspectRatio,
  );
  final height = type.height;
  final width = height * (aspectRatio ?? FlagConstants.defaultAspectRatio);

  final flagWidget =
      widget ??
      (isWaved
          ? FlagShaderSurface(iso, height: height, width: width)
          : IsoFlag(iso, _items));

  goldenTest(
    "${iso.internationalName} ${type.name} flag",
    fileName: "${type.name}/${iso.code.toLowerCase()}",
    builder: () => flagWidget,
    constraints: BoxConstraints.tight(Size(width, height)),
    pumpWidget: (tester, pumpedWidget) async {
      await tester.pumpWidget(
        MaterialApp(
          home: pumpedWidget,
          theme: ThemeData(
            extensions: [FlagThemeData(decoration: type.decoration)],
          ),
          debugShowCheckedModeBanner: false,
        ),
      );
    },
    pumpBeforeTest: (tester) async {
      if (isWaved) await tester.pump(const Duration(milliseconds: 100));
    },
  );
}
