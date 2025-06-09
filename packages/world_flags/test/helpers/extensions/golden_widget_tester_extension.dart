// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "dart:io"; // Due to platform differences in golden tests.

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../flag_type.dart";

// ignore: avoid-top-level-members-in-tests, it's not a test, but extension.
extension GoldenWidgetTesterExtension on WidgetTester {
  Future<void> flagGolden(WorldCountry country, FlagType type) async {
    if (!Platform.isLinux && _ignoreOnNonLinux.contains(country)) return;

    final aspectRatio = country.flagProperties?.aspectRatio ?? 1;
    final height = type.height;
    final width = height * aspectRatio;
    final file = "../../goldens/${type.name}/${country.code.toLowerCase()}.png";

    await binding.setSurfaceSize(Size(width, height));
    await pumpWidget(
      MaterialApp(
        home: CountryFlag.simplified(country),
        theme: ThemeData(
          extensions: [FlagThemeData(decoration: type.decoration)],
        ),
      ),
    );

    return expectLater(find.byType(CountryFlag), matchesGoldenFile(file));
  }

  static const _ignoreOnNonLinux = <WorldCountry>[
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
