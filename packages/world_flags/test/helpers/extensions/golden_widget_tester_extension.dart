// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "dart:io" show Platform;

import "package:flutter/material.dart" show MaterialApp, ThemeData;
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
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

// ignore: avoid-top-level-members-in-tests, it's not a test, but extension.
extension GoldenWidgetTesterExtension on WidgetTester {
  static const _items = <IsoTranslated, BasicFlag>{
    ...smallSimplifiedFlagsMap,
    ...smallSimplifiedCurrencyFlagsMap,
    ...smallSimplifiedLanguageFlagsMap,
  };

  Future<void> flagGolden<T extends IsoTranslated>(
    T iso,
    FlagType type, {
    String goldensPath = "../../../../goldens",
  }) async {
    final isWaved = type == FlagType.waved;
    final aspectRatio = iso.mapWhenOrNull(
      country: (country) => country.flagProperties?.aspectRatio,
    );
    final height = type.height;
    final width = height * (aspectRatio ?? FlagConstants.defaultAspectRatio);
    final filePath = "$goldensPath/${type.name}/${iso.code.toLowerCase()}.png";

    await binding.setSurfaceSize(Size(width, height));
    final widget = isWaved
        ? FlagShaderSurface(iso, height: height, width: width) // TODO! Pixel.R.
        : IsoFlag(iso, _items);

    await pumpWidget(
      MaterialApp(
        home: widget,
        theme: ThemeData(
          extensions: [FlagThemeData(decoration: type.decoration)],
        ),
      ),
    );
    if (isWaved) await pump(const Duration(milliseconds: 100));

    return expectLater(
      find.byType(isWaved ? FlagShaderSurface : IsoFlag<T, BasicFlag>),
      matchesGoldenFile(isWaved ? "../$filePath" : filePath),
      skip: !Platform.isLinux && (_ignoreOnNonLinux.contains(iso) || isWaved),
      reason: "Non-Linux platforms rendering those flags slightly differently",
    );
  }

  static const _ignoreOnNonLinux = <IsoTranslated>{
    CountryAia(),
    CountryAnd(),
    CountryBmu(),
    CountryEcu(),
    CountryFji(),
    CountryFlk(),
    CountryIot(),
    CountryJey(),
    CountryMsr(),
    CountryPcn(),
    CountrySgs(),
    CountryTca(),
  };
}
