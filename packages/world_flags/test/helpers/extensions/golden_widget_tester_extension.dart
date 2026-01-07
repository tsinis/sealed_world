// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "dart:io" show Platform;

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../flag_type.dart";

// ignore: avoid-top-level-members-in-tests, it's not a test, but extension.
extension GoldenWidgetTesterExtension on WidgetTester {
  static const _items = <IsoTranslated, BasicFlag>{
    ...smallSimplifiedFlagsMap,
    FiatEur(): StarFlag(flagEurProperties),
    ...smallSimplifiedLanguageFlagsMap,
  };

  Future<void> flagGolden<T extends IsoTranslated>(T iso, FlagType type) async {
    final isWaved = type == FlagType.waved;
    final aspectRatio = iso.mapWhenOrNull(
      country: (country) => country.flagProperties?.aspectRatio,
    );
    final height = type.height;
    final width = height * (aspectRatio ?? FlagConstants.defaultAspectRatio);
    final filePath = "../../goldens/${type.name}/${iso.code.toLowerCase()}.png";

    await binding.setSurfaceSize(Size(width, height));
    final widget = isWaved
        ? FlagShaderSurface(iso, height: height, width: width)
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
      skip: !Platform.isLinux && _ignoreOnNonLinux.contains(iso),
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
