// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "dart:io"; // Due to platform differences in golden tests.

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../flag_type.dart";

// ignore: avoid-top-level-members-in-tests, it's not a test, but extension.
extension GoldenWidgetTesterExtension on WidgetTester {
  static const _items = <IsoTranslated, BasicFlag>{
    ...uniqueSimplifiedFlagsMap,
    ...smallSimplifiedAlternativeFlagsMap,
    FiatEur(): StarFlag(flagEurProperties),
    ...smallSimplifiedLanguageFlagsMap,
  };

  Future<void> flagGolden<T extends IsoTranslated>(T iso, FlagType type) async {
    if (!Platform.isLinux && _ignoreOnNonLinux.contains(iso)) return;

    final aspectRatio = iso is WorldCountry
        ? (iso.flagProperties?.aspectRatio ?? 1)
        : FlagConstants.defaultAspectRatio;
    final height = type.height;
    final width = height * aspectRatio;
    final file = "../../goldens/${type.name}/${iso.code.toLowerCase()}.png";

    await binding.setSurfaceSize(Size(width, height));
    await pumpWidget(
      MaterialApp(
        home: IsoFlag(iso, _items),
        theme: ThemeData(
          extensions: [FlagThemeData(decoration: type.decoration)],
        ),
      ),
    );

    return expectLater(
      find.byType(IsoFlag<T, BasicFlag>),
      matchesGoldenFile(file),
    );
  }

  static const _ignoreOnNonLinux = <IsoTranslated>[
    CountryAia(),
    CountryAnd(),
    CountryBmu(),
    CountryBmu(),
    CountryEcu(),
    CountryFji(),
    CountryFlk(),
    CountryIot(),
    CountryJey(),
    CountryMsr(),
    CountryPcn(),
    CountrySgs(),
    CountrySlv(),
    CountryTca(),
  ];
}
